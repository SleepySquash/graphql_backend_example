import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test/domain/service/auth.dart';

class ExceptionParser {
  static Future<void> error(Object e) async {
    String parsed = parse(e);
    parsed == 'Unauthorized'.tr
        ? await Get.defaultDialog(
            title: 'Error',
            content: Text(parsed),
            actions: [
              TextButton(
                  onPressed: () async {
                    await Get.find<AuthService>().logout();
                    Get.offAllNamed('/auth');
                  },
                  child: const Text('Go to login screen'))
            ],
          )
        : await Get.defaultDialog(
            title: 'Error',
            content: Text(parsed),
            actions: [TextButton(onPressed: Get.back, child: const Text('Ok'))],
          );
  }

  static void success(String message) => Get.snackbar(
        'Success',
        message,
        barBlur: 100,
        snackPosition: SnackPosition.BOTTOM,
        icon: Icon(Icons.done),
        shouldIconPulse: true,
        margin: EdgeInsets.all(10),
      );

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
    } else if (string.contains('Failed to parse header value')) {
      return 'Unauthorized'.tr;
    }
    return string;
  }
}
