import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExceptionParser {
  static Future<void> error(Object e) async => await Get.defaultDialog(
        title: 'Error',
        content: Text(parse(e)),
        actions: [TextButton(onPressed: Get.back, child: const Text('Ok'))],
      );

  static void success(String message) => Get.snackbar('Success', message);

  static String parse(Object e) {
    String string = e.toString();
    if (string.contains('WRONG_OLD_PASSWORD')) {
      return 'Wrong old password'.tr;
    } else if (string.contains('WRONG_PASSWORD')) {
      return 'Wrong password'.tr;
    } else if (string.contains('UNKNOWN_USER')) {
      return 'Unknown user'.tr;
    } else if (string.contains('OCCUPIED')) {
      return 'Username already occupied'.tr;
    }
    return string;
  }
}
