import 'package:test/domain/model/user.dart';
import 'package:test/provider/graphql.dart';

abstract class AbstractUserRepository {
  AbstractUserRepository(this.graphQlProvider);
  GraphQlProvider graphQlProvider;

  Future<String?> updateUserName(String name) async {}
  Future<String?> deleteUserName() async {}
  Future<String?> updateUserLogin(String login) async {}
  Future<bool> updateUserPassword(
          String newPassword, String? oldPassword) async =>
      false;
  Future<List<User>> searchUsers(String? num, String? login) async => [];
}
