import 'package:graphql/client.dart';

import '../api/backend/api.dart';

class GraphQlProvider {
  String? token;

  GraphQLClient getClient() {
    final httpLink = HttpLink('http://localhost:3000/api/graphql');
    final websocketLink = WebSocketLink('ws://localhost:3000/');
    final AuthLink authLink = AuthLink(getToken: () => 'Bearer $token');

    Link httpAuthLink = token != null ? authLink.concat(httpLink) : httpLink;
    final link = Link.split(
        (request) => request.isSubscription, websocketLink, httpAuthLink);
    return GraphQLClient(
      cache: GraphQLCache(), // TODO: use Hive
      link: link,
    );
  }

  Future<CreateUser$Mutation$CreateUserResult> registration() async {
    final QueryResult result = await getClient()
        .query(QueryOptions(document: CreateUserMutation().document));
    if (result.hasException) throw Exception(result.exception.toString());
    return CreateUser$Mutation$CreateUserResult.fromJson(
        result.data!['createUser']);
  }

  Future<CreateSession$Mutation$CreateSessionResult$CreateSessionOk>
      createSession(String password, String? username, String? num,
          String? email, String? phone) async {
    final QueryResult result = await getClient().query(
      QueryOptions(
        document: CreateSessionMutation(
          variables: CreateSessionArguments(
            password: password,
            login: username,
            num: num,
            email: email,
            phone: phone,
          ),
        ).document,
        variables: {
          'password': password,
          'login': username,
          'num': num,
          'email': email,
          'phone': phone
        },
      ),
    );
    if (result.hasException) throw Exception(result.exception.toString());
    return CreateSession$Mutation$CreateSessionResult$CreateSessionOk.fromJson(
        result.data!['createSession']);
  }

  Future<void> deleteSession(String token) async {
    final QueryResult result = await getClient().query(QueryOptions(
        document: DeleteSessionMutation(
          variables: DeleteSessionArguments(token: token),
        ).document,
        variables: {'token': token}));
    if (result.hasException) throw Exception(result.exception.toString());
  }

  Future<MyUser$Query$MyUser> myUser() async {
    final QueryResult result =
        await getClient().query(QueryOptions(document: MyUserQuery().document));
    if (result.hasException) throw Exception(result.exception.toString());
    return MyUser$Query$MyUser.fromJson(result.data!['myUser']);
  }

  Future<UpdateUserName$Mutation$MyUser> updateUserName(String name) async {
    final QueryResult result = await getClient().query(QueryOptions(
      document: UpdateUserNameMutation(
        variables: UpdateUserNameArguments(name: name),
      ).document,
      variables: {'name': name},
    ));

    if (result.hasException) throw Exception(result.exception.toString());
    return UpdateUserName$Mutation$MyUser.fromJson(
        result.data!['updateUserName']);
  }

  Future<DeleteUserName$Mutation$MyUser> deleteUserName() async {
    final QueryResult result = await getClient()
        .query(QueryOptions(document: DeleteUserNameMutation().document));
    if (result.hasException) throw Exception(result.exception.toString());
    return DeleteUserName$Mutation$MyUser.fromJson(
        result.data!['deleteUserName']);
  }

  Future<UpdateUserBio$Mutation$MyUser> updateUserBio(String bio) async {
    final QueryResult result = await getClient().query(QueryOptions(
      document: UpdateUserBioMutation(
        variables: UpdateUserBioArguments(bio: bio),
      ).document,
      variables: {'bio': bio},
    ));

    if (result.hasException) throw Exception(result.exception.toString());
    return UpdateUserBio$Mutation$MyUser.fromJson(
        result.data!['updateUserBio']);
  }

  Future<DeleteUserBio$Mutation$MyUser> deleteUserBio() async {
    final QueryResult result = await getClient()
        .query(QueryOptions(document: DeleteUserBioMutation().document));
    if (result.hasException) throw Exception(result.exception.toString());
    return DeleteUserBio$Mutation$MyUser.fromJson(
        result.data!['deleteUserName']);
  }

  Future<UpdateUserLogin$Mutation$UpdateUserLoginResult$MyUser> updateUserLogin(
      String login) async {
    final QueryResult result = await getClient().query(QueryOptions(
      document: UpdateUserLoginMutation(
        variables: UpdateUserLoginArguments(login: login),
      ).document,
      variables: {'login': login},
    ));

    if (result.hasException) throw Exception(result.exception.toString());
    return UpdateUserLogin$Mutation$UpdateUserLoginResult$MyUser.fromJson(
        result.data!['updateUserLogin']);
  }

  Future<UpdateUserPassword$Mutation$UpdateUserPasswordResult$MyUser>
      updateUserPassword(String newPassword, String? oldPassword) async {
    final QueryResult result = await getClient().query(QueryOptions(
      document: UpdateUserPasswordMutation(
        variables:
            UpdateUserPasswordArguments(kw$new: newPassword, old: oldPassword),
      ).document,
      variables: {'new': newPassword, 'old': oldPassword},
    ));

    if (result.hasException) throw Exception(result.exception.toString());
    return UpdateUserPassword$Mutation$UpdateUserPasswordResult$MyUser.fromJson(
        result.data!['updateUserPassword']);
  }

  Future<SearchUsers$Query$UserConnection> searchUsers(
      String? num, String? login) async {
    final QueryResult result = await getClient().query(QueryOptions(
        document: SearchUsersQuery(
          variables: SearchUsersArguments(num: num, login: login),
        ).document,
        variables: {'num': num, 'login': login}));

    if (result.hasException) throw Exception(result.exception.toString());
    return SearchUsers$Query$UserConnection.fromJson(
        result.data!['searchUsers']);
  }

  Future<User$Query$User> user(String id) async {
    final QueryResult result = await getClient().query(QueryOptions(
        document: UserQuery(variables: UserArguments(id: id)).document,
        variables: {'id': id}));
    if (result.hasException) throw Exception(result.exception.toString());
    return User$Query$User.fromJson(result.data!['user']);
  }

  Future<CreateChatContact$Mutation$CreateChatContactResult$ChatContact>
      createChatContact(String name, List<ChatContactRecord> records) async {
    final QueryResult result = await getClient().query(QueryOptions(
        document: CreateChatContactMutation(
          variables: CreateChatContactArguments(name: name, records: records),
        ).document,
        variables: {'name': name, 'records': records}));
    if (result.hasException) throw Exception(result.exception.toString());
    return CreateChatContact$Mutation$CreateChatContactResult$ChatContact
        .fromJson(result.data!['createChatContact']);
  }

  Future<DeleteChatContact$Mutation> deleteChatContact(String id) async {
    final QueryResult result = await getClient().query(QueryOptions(
        document: DeleteChatContactMutation(
          variables: DeleteChatContactArguments(id: id),
        ).document,
        variables: {'id': id}));
    if (result.hasException) throw Exception(result.exception.toString());
    return DeleteChatContact$Mutation.fromJson(result.data!);
  }

  Future<ChatContacts$Query$ChatContactConnection> chatContacts(
      {int? first,
      int? last,
      String? before,
      String? after,
      bool? noFavorite}) async {
    final QueryResult result = await getClient().query(QueryOptions(
        document: ChatContactsQuery(
          variables: ChatContactsArguments(
            first: first,
            last: last,
            before: before,
            after: after,
            noFavorite: noFavorite,
          ),
        ).document,
        variables: {
          'first': first,
          'last': last,
          'before': before,
          'after': after,
          'noFavorite': noFavorite,
        }));
    if (result.hasException) throw Exception(result.exception.toString());
    return ChatContacts$Query$ChatContactConnection.fromJson(
        result.data!['chatContacts']);
  }

  Future<FavoriteChatContacts$Query$ChatContactConnection> favoriteChatContacts(
      {int? first, int? last, String? before, String? after}) async {
    final QueryResult result = await getClient().query(QueryOptions(
        document: FavoriteChatContactsQuery(
          variables: FavoriteChatContactsArguments(
            first: first,
            last: last,
            before: before,
            after: after,
          ),
        ).document,
        variables: {
          'first': first,
          'last': last,
          'before': before,
          'after': after,
        }));
    if (result.hasException) throw Exception(result.exception.toString());
    return FavoriteChatContacts$Query$ChatContactConnection.fromJson(
        result.data!['favoriteChatContacts']);
  }

  Future<FavoriteChatContact$Mutation$FavoriteChatContactResult$ChatContact>
      favoriteChatContact(String id, double position) async {
    final QueryResult result = await getClient().query(QueryOptions(
        document: FavoriteChatContactMutation(
          variables: FavoriteChatContactArguments(id: id, pos: position),
        ).document,
        variables: {'id': id, 'pos': position}));
    if (result.hasException) throw Exception(result.exception.toString());
    return FavoriteChatContact$Mutation$FavoriteChatContactResult$ChatContact
        .fromJson(result.data!['favoriteChatContact']);
  }

  Future<UnfavoriteChatContact$Mutation$UnfavoriteChatContactResult$ChatContact>
      unfavoriteChatContact(String id) async {
    final QueryResult result = await getClient().query(QueryOptions(
        document: UnfavoriteChatContactMutation(
          variables: UnfavoriteChatContactArguments(id: id),
        ).document,
        variables: {'id': id}));
    if (result.hasException) throw Exception(result.exception.toString());
    return UnfavoriteChatContact$Mutation$UnfavoriteChatContactResult$ChatContact
        .fromJson(result.data!['unfavoriteChatContact']);
  }

  Future<RecentChats$Query$ChatConnection> recentChats(
      {int? first, String? after, int? last, String? before}) async {
    final QueryResult result = await getClient().query(QueryOptions(
        document: RecentChatsQuery(
          variables: RecentChatsArguments(
            first: first,
            after: after,
            last: last,
            before: before,
          ),
        ).document,
        variables: {
          'first': first,
          'after': after,
          'last': last,
          'before': before,
        }));
    if (result.hasException) throw Exception(result.exception.toString());
    return RecentChats$Query$ChatConnection.fromJson(
        result.data!['recentChats']);
  }

  Future<Chat$Query$Chat> chat(String chatId) async {
    final QueryResult result = await getClient().query(QueryOptions(
        document: ChatQuery(
          variables: ChatArguments(id: chatId),
        ).document,
        variables: {'id': chatId}));
    if (result.hasException) throw Exception(result.exception.toString());
    return Chat$Query$Chat.fromJson(result.data!['chat']);
  }

  Future<Messages$Query$Chat> messages(String chatId,
      {int? first, String? after, int? last, String? before}) async {
    final QueryResult result = await getClient().query(QueryOptions(
        document: MessagesQuery(
          variables: MessagesArguments(
            id: chatId,
            first: first,
            after: after,
            last: last,
            before: before,
          ),
        ).document,
        variables: {
          'id': chatId,
          'first': first,
          'after': after,
          'last': last,
          'before': before,
        }));
    if (result.hasException) throw Exception(result.exception.toString());
    return Messages$Query$Chat.fromJson(result.data!['chat']);
  }

  Future<PostChatMessage$Mutation$PostChatMessageResult$ChatMessage>
      postChatMessage(String chatId,
          {List<String>? attachments, String? text, String? repliesTo}) async {
    final QueryResult result = await getClient().query(QueryOptions(
        document: PostChatMessageMutation(
          variables: PostChatMessageArguments(
            chatId: chatId,
            attachments: attachments,
            text: text,
            repliesTo: repliesTo,
          ),
        ).document,
        variables: {
          'chatId': chatId,
          'attachments': attachments,
          'text': text,
          'repliesTo': repliesTo,
        }));
    if (result.hasException) throw Exception(result.exception.toString());
    return PostChatMessage$Mutation$PostChatMessageResult$ChatMessage.fromJson(
        result.data!['postChatMessage']);
  }

  Future<CreateDialogChat$Mutation$CreateDialogChatResult$Chat>
      createDialogChat(String responderId) async {
    final QueryResult result = await getClient().query(QueryOptions(
        document: CreateDialogChatMutation(
          variables: CreateDialogChatArguments(responderId: responderId),
        ).document,
        variables: {'responderId': responderId}));
    if (result.hasException) throw Exception(result.exception.toString());
    return CreateDialogChat$Mutation$CreateDialogChatResult$Chat.fromJson(
        result.data!['createDialogChat']);
  }
}
