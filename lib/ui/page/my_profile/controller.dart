import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test/domain/service/auth.dart';
import 'package:test/store/user.dart';
import 'package:test/util/helper/exception_parser.dart';

export 'view.dart';

class MyProfileController extends GetxController {
  MyProfileController(this.userRepository);
  UserRepository userRepository;

  TextEditingController loginEditingController =
      TextEditingController(text: Get.find<AuthService>().user!.login);
  TextEditingController nameEditingController =
      TextEditingController(text: Get.find<AuthService>().user!.name);
  TextEditingController bioEditingController =
      TextEditingController(text: Get.find<AuthService>().user!.bio);
  TextEditingController oldPasswordEditingController = TextEditingController();
  TextEditingController newPasswordEditingController = TextEditingController();

  final FocusScopeNode loginScopeNode = FocusScopeNode();
  final FocusScopeNode nameScopeNode = FocusScopeNode();
  final FocusScopeNode bioScopeNode = FocusScopeNode();

  Future<void> updateName() async {
    if (nameEditingController.text == Get.find<AuthService>().user!.name)
      return;
    try {
      if (nameEditingController.text.isNotEmpty) {
        await userRepository.updateUserName(nameEditingController.text);
        Get.find<AuthService>().user!.name = nameEditingController.text;
      } else {
        await userRepository.deleteUserName();
        Get.find<AuthService>().user!.name = null;
      }
      ExceptionParser.success('Name updated');
    } catch (e) {
      ExceptionParser.error(e);
    }
  }

  Future<void> updateBio() async {
    if (bioEditingController.text == Get.find<AuthService>().user!.bio) return;
    try {
      if (bioEditingController.text.isNotEmpty) {
        await userRepository.updateUserBio(bioEditingController.text);
        Get.find<AuthService>().user!.bio = bioEditingController.text;
      } else {
        await userRepository.deleteUserBio();
        Get.find<AuthService>().user!.bio = null;
      }
      ExceptionParser.success('Biography updated');
    } catch (e) {
      ExceptionParser.error(e);
    }
  }

  Future<void> updateLogin() async {
    if (loginEditingController.text.isEmpty) return;
    if (loginEditingController.text == Get.find<AuthService>().user!.login)
      return;
    try {
      Get.find<AuthService>().user!.login =
          await userRepository.updateUserLogin(loginEditingController.text);
      ExceptionParser.success('Login updated');
    } catch (e) {
      ExceptionParser.error(e);
    }
  }

  Future<void> setPassword() async {
    try {
      Get.find<AuthService>().user!.hasPassword =
          await userRepository.updateUserPassword(
              newPasswordEditingController.text,
              oldPasswordEditingController.text.isEmpty
                  ? null
                  : oldPasswordEditingController.text);
      await Get.find<AuthService>().logout();
      Get.offAllNamed('/auth');
      ExceptionParser.success('Password updated, you need to relogin.');
    } catch (e) {
      ExceptionParser.error(e);
    }
  }

  void logout() async {
    await Get.find<AuthService>().logout();
    Get.offAndToNamed('/auth');
  }
}
