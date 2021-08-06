import 'dart:convert';

import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:test/api/backend/api.dart';
import 'package:test/domain/model/avatar.dart';
import '../model/session.dart';
import '../model/user.dart';
import '../../provider/graphql.dart';

class AuthService extends GetxController {
  AuthService(this.graphQlProvider);
  GraphQlProvider graphQlProvider;

  Rx<RxStatus> status = Rx<RxStatus>(RxStatus.loading());
  Session? session;
  MyUser? user;

  Future<void> init() async {
    var prefs = await SharedPreferences.getInstance();
    String? map = prefs.getString('session');

    if (map != null) {
      session = Session.fromJson(json.decode(map));
      if (session!.expireAt.isAfter(DateTime.now().toUtc())) {
        try {
          graphQlProvider.token = session!.token;
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
          status.value = RxStatus.success();
          return;
        } catch (e) {
          if (e.toString().contains('Failed to parse header value')) {
            graphQlProvider.token = null;
            prefs.remove('session');
            Get.offAndToNamed('/auth');
          }
          print('AuthService.init: $e');
        }
      } else {
        graphQlProvider.token = null;
        prefs.remove('session');
        Get.offAndToNamed('/auth');
      }
    }

    status.value = RxStatus.empty();
  }

  Future<void> register() async {
    status.value = RxStatus.loading();
    try {
      CreateUser$Mutation$CreateUserResult response =
          await graphQlProvider.registration();
      session = Session(response.session.token, response.session.expireAt);
      user = MyUser(response.user.id, response.user.num);
      graphQlProvider.token = session!.token;

      var prefs = await SharedPreferences.getInstance();
      await prefs.setString('session', json.encode(session!.toJson()));
      status.value = RxStatus.success();

      Get.offAndToNamed('/');
    } catch (e) {
      graphQlProvider.token = null;
      status.value = RxStatus.empty();
      rethrow;
    }
  }

  Future<void> login(String password,
      {String? username, String? num, String? email, String? phone}) async {
    status.value = RxStatus.loading();
    try {
      CreateSession$Mutation$CreateSessionResult$CreateSessionOk response =
          await graphQlProvider.createSession(
              password, username, num, email, phone);

      session = Session(response.session.token, response.session.expireAt);
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
      graphQlProvider.token = session!.token;

      var prefs = await SharedPreferences.getInstance();
      await prefs.setString('session', json.encode(session!.toJson()));
      status.value = RxStatus.success();

      Get.offAndToNamed('/');
    } catch (e) {
      graphQlProvider.token = null;
      status.value = RxStatus.empty();
      rethrow;
    }
  }

  Future<void> logout() async {
    status.value = RxStatus.loading();

    if (graphQlProvider.token != null) {
      try {
        await graphQlProvider.deleteSession(graphQlProvider.token!);
      } catch (_) {}
      graphQlProvider.token = null;
    }

    var prefs = await SharedPreferences.getInstance();
    prefs.remove('session');

    user = null;
    session = null;

    status.value = RxStatus.empty();
  }
}
