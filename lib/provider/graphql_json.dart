import 'package:test/domain/model/user.dart';
import 'package:graphql/client.dart';

class GraphQlProvider {
  List<User> users = [];
  late Stream<QueryResult> subscription;
  String? token;

  GraphQLClient getClient() {
    final httpLink = HttpLink('http://localhost:3000/api/graphql');
    final websocketLink = WebSocketLink('ws://localhost:3000/');
    final AuthLink authLink = AuthLink(getToken: () => 'Bearer $token');

    Link httpAuthLink = token != null ? authLink.concat(httpLink) : httpLink;
    final link = Link.split(
        (request) => request.isSubscription, websocketLink, httpAuthLink);
    return GraphQLClient(
      cache: GraphQLCache(),
      link: link,
    );
  }

  Future<Map<String, dynamic>> registration() async {
    GraphQLClient client = getClient();
    const String register = r'''
      mutation createUser() {
        createUser {
          user {
            id,
            num
          },
          session {
            token,
            expireAt
          }
        }
      }
    ''';

    final QueryResult result =
        await client.query(QueryOptions(document: gql(register)));
    print(result.data);

    if (result.hasException) {
      throw Exception(result.exception.toString());
    } else {
      return result.data!['createUser'];
    }
  }

  Future<Map<String, dynamic>> myUser() async {
    GraphQLClient client = getClient();
    const String myUser = r'''
      query myUser() {
        myUser {
          id,
          num,
          login,
          name,
          bio
        }
      }
    ''';

    final QueryResult result =
        await client.query(QueryOptions(document: gql(myUser)));

    if (result.hasException) {
      throw Exception(result.exception.toString());
    } else {
      return result.data!['myUser'];
    }
  }

  void subscribeToUsers() {
    GraphQLClient client = getClient();
    final subscriptionDocument = gql(
      r'''
        subscription newUser {
          newUser {
            username, email
          }
        }
      ''',
    );

    subscription = client.subscribe(
      SubscriptionOptions(document: subscriptionDocument),
    );
    subscription.listen((result) {
      // users.add(User.fromJson(result.data!['newUser']));
    });
  }
}
