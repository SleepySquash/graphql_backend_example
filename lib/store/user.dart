import 'package:collection/collection.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:test/api/backend/api.dart';
import 'package:test/domain/model/avatar.dart';
import 'package:test/domain/model/chat_contact.dart';
import 'package:test/domain/model/user.dart';
import 'package:test/provider/graphql.dart';
import 'package:test/util/helper/exception_parser.dart';

import '../domain/repository/user.dart';

class UserRepository implements AbstractUserRepository {
  UserRepository(this.graphQlProvider);

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

  /////////////////////////////////////////////////////
  ////////////////////// QUERIES //////////////////////
  /////////////////////////////////////////////////////

  @override
  Future<List<User>> searchUsers(String? num, String? login) async =>
      (await graphQlProvider.searchUsers(num, login))
          .nodes
          .map((e) => User(e.id, e.num,
              name: e.name, avatar: Avatar(big: e.avatar?.big)))
          .toList();

  Future<User> user(String id, [Function(User)? cb]) async =>
      _processQuery<User>(await graphQlProvider.user(id),
          (Map<String, dynamic>? data) {
        User$Query$User user = User$Query.fromJson(data!).user!;
        return User(user.id, user.num,
            isDeleted: user.isDeleted,
            mutualContactsCount: user.mutualContactsCount,
            name: user.name,
            bio: user.bio,
            avatar: Avatar(
              x1: user.avatar?.crop?.topLeft.x,
              y1: user.avatar?.crop?.topLeft.y,
              x2: user.avatar?.crop?.bottomRight.x,
              y2: user.avatar?.crop?.bottomRight.y,
              original: user.avatar?.original,
              big: user.avatar?.big,
            ),
            contacts: user.contacts
                .map((e) => ChatContact(
                      e.id,
                      e.name,
                      dialogId: e.chatUsers.firstOrNull?.dialog?.id,
                      favoritePosition: e.favoritePosition,
                    ))
                .toList());
      }, cb);

  Future<List<ChatContact>> contacts(
          {Function(List<ChatContact>)? onUpdate, bool? noFavorite}) async =>
      _processQuery<List<ChatContact>>(
          await graphQlProvider.chatContacts(noFavorite: noFavorite),
          (Map<String, dynamic>? data) => data == null
              ? []
              : ChatContacts$Query.fromJson(data)
                  .chatContacts
                  .nodes
                  .map((e) => ChatContact(
                        e.id,
                        e.name,
                        favoritePosition: e.favoritePosition,
                        users: e.chatUsers
                            .map((c) => ChatContactUser(
                                  c.user.id,
                                  c.user.num,
                                  name: c.user.name ?? c.user.id,
                                  avatar: Avatar(big: c.user.avatar?.big),
                                ))
                            .toList(),
                      ))
                  .toList(),
          onUpdate);

  Future<List<ChatContact>> favoriteContacts(
          [Function(List<ChatContact>)? cb]) async =>
      _processQuery<List<ChatContact>>(
          await graphQlProvider.favoriteChatContacts(),
          (Map<String, dynamic>? data) => data == null
              ? []
              : FavoriteChatContacts$Query.fromJson(data)
                  .favoriteChatContacts
                  .nodes
                  .map((e) => ChatContact(
                        e.id,
                        e.name,
                        favoritePosition: e.favoritePosition,
                        users: e.chatUsers
                            .map((c) => ChatContactUser(
                                  c.user.id,
                                  c.user.num,
                                  name: c.user.name ?? c.user.id,
                                  avatar: Avatar(big: c.user.avatar?.big),
                                ))
                            .toList(),
                      ))
                  .toList(),
          cb);

  /////////////////////////////////////////////////////
  ///////////////////// MUTATIONS /////////////////////
  /////////////////////////////////////////////////////

  @override
  Future<String?> updateUserName(String name) async =>
      (await graphQlProvider.updateUserName(name)).name;

  @override
  Future<String?> deleteUserName() async =>
      (await graphQlProvider.deleteUserName()).name;

  Future<String?> updateUserBio(String bio) async =>
      (await graphQlProvider.updateUserBio(bio)).bio;

  Future<String?> deleteUserBio() async =>
      (await graphQlProvider.deleteUserBio()).bio;

  @override
  Future<String?> updateUserLogin(String login) async =>
      (await graphQlProvider.updateUserLogin(login.toLowerCase())).login;

  @override
  Future<bool> updateUserPassword(
          String newPassword, String? oldPassword) async =>
      (await graphQlProvider.updateUserPassword(newPassword, oldPassword))
          .hasPassword;

  Future<ChatContact> addToContacts(User user) async {
    CreateChatContact$Mutation$CreateChatContactResult$ChatContact response =
        await graphQlProvider.createChatContact(
            user.name ?? user.num, [ChatContactRecord(userId: user.id)]);
    return ChatContact(response.id, response.name,
        users: response.chatUsers
            .map((e) => ChatContactUser(e.user.id, e.user.num,
                name: e.user.name,
                avatar: Avatar(
                  big: e.user.avatar?.big,
                )))
            .toList());
  }

  Future<void> removeFromContacts(ChatContact contact) async =>
      await graphQlProvider.deleteChatContact(contact.id);

  Future<double?> addToFavorites(ChatContact contact) async {
    return (await graphQlProvider.favoriteChatContact(contact.id, 1))
        .favoritePosition;
  }

  Future<double?> removeFromFavorites(ChatContact contact) async {
    return (await graphQlProvider.unfavoriteChatContact(contact.id))
        .favoritePosition;
  }
}
