import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test/domain/service/auth.dart';
import 'package:test/provider/graphql.dart';
import 'package:test/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  GraphQlProvider graphQlProvider = Get.put(GraphQlProvider());
  await graphQlProvider.init();

  Get.put(AuthService(graphQlProvider)).init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'GraphQL Demo',
      defaultTransition: Transition.cupertino,
      initialRoute: '/',
      getPages: routes,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.system,
    );
  }
}
