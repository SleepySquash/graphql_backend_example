import 'package:test/api/backend/api.dart';
import 'package:test/domain/model/avatar.dart';
import 'package:test/domain/model/chat.dart';
import 'package:test/domain/model/chat_item.dart';
import 'package:test/provider/graphql.dart';

import '../domain/repository/chat.dart';

class ChatRepository implements AbstractChatRepository {
  ChatRepository(this.graphQlProvider);

  @override
  GraphQlProvider graphQlProvider;

  ChatItem parseChatMessage(dynamic node) {
    if (node.$$typename == 'ChatMessage') {
      return ChatMessage(
        node.id,
        node.chatId,
        node.authorId,
        node.at,
        text: node.text,
        repliesTo: node.repliesTo?.id,
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

  @override
  Future<List<Chat>> recentChats() async {
    List<RecentChats$Query$ChatConnection$Chat> nodes =
        (await graphQlProvider.recentChats()).nodes;
    return nodes
        .map((e) => Chat(
              e.id,
              e.kind.toString(),
              e.lastDelivery,
              isHidden: e.isHidden,
              name: e.name,
              lastItem: e.lastItem != null
                  ? parseChatMessage(e.lastItem!.node)
                  : null,
            ))
        .toList();
  }

  Future<Chat> chat(String chatId) async {
    Chat$Query$Chat response = await graphQlProvider.chat(chatId);
    return Chat(
      response.id,
      response.kind.toString(),
      response.lastDelivery,
      name: response.name,
      members: response.members.nodes
          .map((e) => ChatUser(
                e.user.id,
                e.user.user.num,
                name: e.user.name,
                avatar: Avatar(big: e.user.user.avatar?.big),
              ))
          .toList(),
    );
  }

  Future<List<ChatItem>> messages(String chatId) async {
    return (await graphQlProvider.messages(chatId))
        .items
        .nodes
        .map((m) => parseChatMessage(m))
        .toList();
  }

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
      DateTime.fromMillisecondsSinceEpoch(0),
      name: response.name,
      members: response.members.nodes
          .map((e) => ChatUser(
                e.user.id,
                e.user.user.num,
                name: e.user.name,
                avatar: Avatar(big: e.user.user.avatar?.big),
              ))
          .toList(),
    );
  }
}
