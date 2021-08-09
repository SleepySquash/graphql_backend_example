import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test/domain/service/auth.dart';
import 'package:test/util/helper/exception_parser.dart';

export 'view.dart';

class AuthBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(AuthController());
  }
}

class AuthController extends GetxController {
  TextEditingController loginController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void onReady() {
    super.onReady();
    if (Get.find<AuthService>().status.value.isSuccess) {
      Get.offAndToNamed('/');
    }
  }

  void login() async {
    try {
      await Get.find<AuthService>()
          .login(passwordController.text, username: loginController.text);
    } catch (e) {
      ExceptionParser.error(e);
    }
  }

  void register() async {
    try {
      await Get.find<AuthService>().register();
    } catch (e) {
      ExceptionParser.error(e);
    }
  }
}
