import 'package:graphql/client.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import '../api/backend/api.dart';

class ResultOfQuery {
  ResultOfQuery(this.observableQuery, this.data);
  final Map<String, dynamic>? data;
  final ObservableQuery? observableQuery;
}

class GraphQlProvider {
  String? token;

  Future<void> init() async => await initHiveForFlutter();

  GraphQLClient getClient() {
    final httpLink = HttpLink('http://localhost:3000/api/graphql');
    final websocketLink = WebSocketLink('ws://localhost:3000/');
    final AuthLink authLink = AuthLink(getToken: () => 'Bearer $token');

    Link httpAuthLink = token != null ? authLink.concat(httpLink) : httpLink;
    final link = Link.split(
        (request) => request.isSubscription, websocketLink, httpAuthLink);
    return GraphQLClient(
      cache: GraphQLCache(store: HiveStore()),
      defaultPolicies:
          DefaultPolicies(query: Policies(fetch: FetchPolicy.networkOnly)),
      link: link,
    );
  }

  Future<ResultOfQuery> _processQuery(document,
      [Map<String, dynamic> variables = const {}]) async {
    GraphQLClient client = getClient();

    Map<String, dynamic>? data = client.readQuery(Request(
      operation: Operation(document: document),
      variables: variables,
    ));

    if (data == null) {
      final QueryResult result = await client.query(QueryOptions(
        fetchPolicy: FetchPolicy.cacheAndNetwork,
        document: document,
        variables: variables,
      ));
      if (result.hasException) throw Exception(result.exception.toString());
      return ResultOfQuery(null, result.data);
    } else {
      ObservableQuery query = getClient().watchQuery(
          WatchQueryOptions(document: document, variables: variables));
      query.fetchResults();
      return ResultOfQuery(query, data);
    }
  }

  /////////////////////////////////////////////////////
  ////////////////////// QUERIES //////////////////////
  /////////////////////////////////////////////////////

  Future<MyUser$Query$MyUser> myUser() async {
    final QueryResult result =
        await getClient().query(QueryOptions(document: MyUserQuery().document));
    if (result.hasException) throw Exception(result.exception.toString());
    return MyUser$Query$MyUser.fromJson(result.data!['myUser']);
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

  Future<ResultOfQuery> user(String id) async => _processQuery(
        UserQuery(variables: UserArguments(id: id)).document,
        {'id': id},
      );

  Future<ResultOfQuery> chatContacts({
    int? first,
    String? after,
    int? last,
    String? before,
    bool? noFavorite,
  }) async =>
      _processQuery(
        ChatContactsQuery(
          variables: ChatContactsArguments(
            first: first,
            last: last,
            before: before,
            after: after,
            noFavorite: noFavorite,
          ),
        ).document,
        {
          'first': first,
          'last': last,
          'before': before,
          'after': after,
          'noFavorite': noFavorite,
        },
      );

  Future<ResultOfQuery> favoriteChatContacts(
          {int? first, String? after, int? last, String? before}) async =>
      _processQuery(
        FavoriteChatContactsQuery(
          variables: FavoriteChatContactsArguments(
            first: first,
            last: last,
            before: before,
            after: after,
          ),
        ).document,
        {
          'first': first,
          'last': last,
          'before': before,
          'after': after,
        },
      );

  Future<ResultOfQuery> recentChats(
          {int? first, String? after, int? last, String? before}) async =>
      _processQuery(
        RecentChatsQuery(
          variables: RecentChatsArguments(
            first: first,
            after: after,
            last: last,
            before: before,
          ),
        ).document,
        {
          'first': first,
          'after': after,
          'last': last,
          'before': before,
        },
      );

  Future<ResultOfQuery> chat(String chatId) async => _processQuery(
        ChatQuery(variables: ChatArguments(id: chatId)).document,
        {'id': chatId},
      );

  Future<ResultOfQuery> messages(String chatId,
          {int? first, String? after, int? last, String? before}) async =>
      _processQuery(
        MessagesQuery(
          variables: MessagesArguments(
            id: chatId,
            first: first,
            after: after,
            last: last,
            before: before,
          ),
        ).document,
        {
          'id': chatId,
          'first': first,
          'after': after,
          'last': last,
          'before': before,
        },
      );

  /////////////////////////////////////////////////////
  ///////////////////// MUTATIONS /////////////////////
  /////////////////////////////////////////////////////

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
