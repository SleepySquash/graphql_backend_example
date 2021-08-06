import 'dart:convert';

import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:test/api/api.dart';
import 'package:test/domain/model/avatar.dart';
import '../model/session.dart';
import '../model/user.dart';
import '../../provider/graphql.dart';

class AuthService extends GetxController with StateMixin<Session?> {
  AuthService(this.graphQlProvider);
  GraphQlProvider graphQlProvider;

  MyUser? user;

  Future<void> init() async {
    var prefs = await SharedPreferences.getInstance();
    String? map = prefs.getString('session');

    if (map != null) {
      Session session = Session.fromJson(json.decode(map));
      if (session.expireAt.isAfter(DateTime.now().toUtc())) {
        try {
          graphQlProvider.token = session.token;
          MyUser$Query$MyUser response = await graphQlProvider.myUser();
          user = MyUser(
            response.id,
            response.num,
            bio: response.bio,
            hasPassword: response.hasPassword,
            login: response.login,
            name: response.name,
            avatar: Avatar(
              x1: response.avatar?.crop?.topLeft.x,
              y1: response.avatar?.crop?.topLeft.y,
              x2: response.avatar?.crop?.bottomRight.x,
              y2: response.avatar?.crop?.bottomRight.y,
              original: response.avatar?.original,
              full: response.avatar?.original,
              big: response.avatar?.full,
              medium: response.avatar?.medium,
              small: response.avatar?.small,
            ),
          );
          return change(session, status: RxStatus.success());
        } catch (e) {
          print('AuthService.init: $e');
        }
      } else {
        // if not connected {
        graphQlProvider.token = null;
        prefs.remove('session');
        Get.offAndToNamed('/auth');
        // }
      }
    }

    change(null, status: RxStatus.empty());
  }

  Future<void> register() async {
    change(null, status: RxStatus.loading());
    try {
      CreateUser$Mutation$CreateUserResult response =
          await graphQlProvider.registration();
      Session session =
          Session(response.session.token, response.session.expireAt);
      user = MyUser(response.user.id, response.user.num);
      graphQlProvider.token = session.token;

      var prefs = await SharedPreferences.getInstance();
      await prefs.setString('session', json.encode(session.toJson()));
      change(session, status: RxStatus.success());

      Get.offAndToNamed('/');
    } catch (e) {
      change(null, status: RxStatus.empty());
      print(e);
    }
  }

  Future<void> login(String password,
      {String? username, String? num, String? email, String? phone}) async {
    change(null, status: RxStatus.loading());
    try {
      CreateSession$Mutation$CreateSessionResult$CreateSessionOk response =
          await graphQlProvider.createSession(
              password, username, num, email, phone);

      Session session =
          Session(response.session.token, response.session.expireAt);
      user = MyUser(
        response.user.id,
        response.user.num,
        hasPassword: true,
        login: response.user.login,
        bio: response.user.bio,
        name: response.user.name,
        avatar: Avatar(
          x1: response.user.avatar?.crop?.topLeft.x,
          y1: response.user.avatar?.crop?.topLeft.y,
          x2: response.user.avatar?.crop?.bottomRight.x,
          y2: response.user.avatar?.crop?.bottomRight.y,
          original: response.user.avatar?.original,
          full: response.user.avatar?.original,
          big: response.user.avatar?.full,
          medium: response.user.avatar?.medium,
          small: response.user.avatar?.small,
        ),
      );
      graphQlProvider.token = session.token;

      var prefs = await SharedPreferences.getInstance();
      await prefs.setString('session', json.encode(session.toJson()));
      change(session, status: RxStatus.success());

      Get.offAndToNamed('/');
    } catch (e) {
      change(null, status: RxStatus.empty());
      rethrow;
    }
  }

  Future<void> logout() async {
    change(null, status: RxStatus.loading());

    if (graphQlProvider.token != null) {
      try {
        await graphQlProvider.deleteSession(graphQlProvider.token!);
      } catch (_) {}
      graphQlProvider.token = null;
    }

    var prefs = await SharedPreferences.getInstance();
    prefs.remove('session');

    user = null;

    change(null, status: RxStatus.empty());
  }
}
