import 'package:test/domain/model/chat.dart';
import 'package:test/provider/graphql.dart';

abstract class AbstractChatRepository {
  AbstractChatRepository(this.graphQlProvider);
  GraphQlProvider graphQlProvider;

  Future<List<Chat>> recentChats() async => [];
}
