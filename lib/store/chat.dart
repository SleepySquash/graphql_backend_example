import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:test/api/backend/api.dart';
import 'package:test/domain/model/attachment.dart';
import 'package:test/domain/model/avatar.dart';
import 'package:test/domain/model/chat.dart';
import 'package:test/domain/model/chat_item.dart';
import 'package:test/provider/graphql.dart';
import 'package:test/util/helper/exception_parser.dart';

import '../domain/repository/chat.dart';

class ChatRepository implements AbstractChatRepository {
  ChatRepository(this.graphQlProvider);

  @override
  GraphQlProvider graphQlProvider;

  T _processQuery<T>(ResultOfQuery query,
      Function(Map<String, dynamic>?) parser, Function(T)? cb) {
    query.observableQuery?.stream.listen((QueryResult result) {
      if (result.hasException) {
        ExceptionParser.error(Exception(result.exception));
        return;
      }
      if (!result.isLoading) {
        if (cb != null) cb(parser(result.data!));
        query.observableQuery!.close();
      }
    });
    return parser(query.data!);
  }

  ChatItem _parseChatMessage(dynamic node) {
    if (node.$$typename == 'ChatMessage') {
      return ChatMessage(
        node.id,
        node.chatId,
        node.authorId,
        node.at,
        text: node.text,
        repliesTo: node.repliesTo?.id,
        attachments: (node.attachments as List)
            .map((e) => e.$$typename == 'ImageAttachment'
                ? ImageAttachment(e.id, e.original, e.filename, e.size,
                    big: e.big)
                : FileAttachment(e.id, e.original, e.filename, e.size))
            .toList(),
      );
    }

    return ChatMessage(
      node.id,
      node.chatId,
      node.authorId,
      node.at,
      text: 'ERROR: Unknown message type',
    );
  }

  /////////////////////////////////////////////////////
  ////////////////////// QUERIES //////////////////////
  /////////////////////////////////////////////////////

  @override
  Future<List<Chat>> recentChats([Function(List<Chat>)? cb]) async =>
      _processQuery<List<Chat>>(
          await graphQlProvider.recentChats(),
          (Map<String, dynamic>? data) => data == null
              ? []
              : RecentChats$Query.fromJson(data)
                  .recentChats
                  .nodes
                  .map((e) => Chat(
                        e.id,
                        e.kind.toString(),
                        isHidden: e.isHidden,
                        name: e.name,
                        lastItem: e.lastItem != null
                            ? _parseChatMessage(e.lastItem!.node)
                            : null,
                        members: e.members.nodes
                            .map((u) => ChatUser(
                                  'id',
                                  'num',
                                  name: u.user.name ?? u.user.user.name,
                                  avatar: Avatar(big: u.user.user.avatar?.big),
                                ))
                            .toList(),
                      ))
                  .toList(),
          cb);

  Future<Chat> chat(String chatId, [Function(Chat)? cb]) async =>
      _processQuery<Chat>(await graphQlProvider.chat(chatId),
          (Map<String, dynamic>? data) {
        Chat$Query$Chat response = Chat$Query.fromJson(data!).chat!;
        return Chat(
          response.id,
          response.kind.toString(),
          name: response.name,
          members: response.members.nodes
              .map((e) => ChatUser(
                    e.user.id,
                    e.user.user.num,
                    name: e.user.name ?? e.user.user.name,
                    avatar: Avatar(big: e.user.user.avatar?.big),
                  ))
              .toList(),
        );
      }, cb);

  Future<List<ChatItem>> messages(String chatId,
          [Function(List<ChatItem>)? cb]) async =>
      _processQuery<List<ChatItem>>(
          await graphQlProvider.messages(chatId),
          (Map<String, dynamic>? data) => data == null
              ? []
              : Messages$Query.fromJson(data)
                  .chat!
                  .items
                  .nodes
                  .map((m) => _parseChatMessage(m))
                  .toList(),
          cb);

  /////////////////////////////////////////////////////
  ///////////////////// MUTATIONS /////////////////////
  /////////////////////////////////////////////////////

  Future<ChatMessage> sendMessage(ChatMessage item) async {
    PostChatMessage$Mutation$PostChatMessageResult$ChatMessage response =
        await graphQlProvider.postChatMessage(
      item.chatId,
      text: item.text,
      repliesTo: item.repliesTo,
    );
    return ChatMessage(
      response.id,
      response.chatId,
      response.authorId,
      response.at,
      text: response.text,
      repliesTo: response.repliesTo?.id,
    );
  }

  Future<Chat> createDialog(String userId) async {
    CreateDialogChat$Mutation$CreateDialogChatResult$Chat response =
        await graphQlProvider.createDialogChat(userId);
    return Chat(
      response.id,
      response.kind.toString(),
      name: response.name,
      members: response.members.nodes
          .map((e) => ChatUser(
                e.user.id,
                e.user.user.num,
                name: e.user.name ?? e.user.user.name,
                avatar: Avatar(big: e.user.user.avatar?.big),
              ))
          .toList(),
    );
  }
}
