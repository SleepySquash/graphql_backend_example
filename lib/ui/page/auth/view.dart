import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test/domain/service/auth.dart';

import 'controller.dart';

class AuthView extends GetView<AuthController> {
  const AuthView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetX<AuthService>(
      builder: (_) => _.status.value.isEmpty
          ? StatefulBuilder(builder: (context, setState) {
              return Scaffold(
                body: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Auth'),
                      TextFormField(
                        controller: controller.loginController,
                        decoration: const InputDecoration(hintText: 'Login'),
                        onChanged: (s) => setState(() {}),
                      ),
                      TextFormField(
                        controller: controller.passwordController,
                        decoration: const InputDecoration(hintText: 'Password'),
                        onChanged: (s) => setState(() {}),
                      ),
                      TextButton(
                        onPressed: controller.loginController.text.isNotEmpty &&
                                controller.passwordController.text.isNotEmpty
                            ? controller.login
                            : null,
                        child: const Text('Login'),
                      ),
                      const SizedBox(height: 20),
                      TextButton(
                        onPressed: controller.register,
                        child: const Text('Register (w/o login)'),
                      ),
                    ],
                  ),
                ),
              );
            })
          : const Scaffold(body: Center(child: CircularProgressIndicator())),
    );
  }
}
