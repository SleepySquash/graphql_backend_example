import 'package:get/get.dart';
import 'package:test/ui/page/auth/controller.dart';
import 'package:test/ui/page/auth/view.dart';
import 'package:test/ui/page/home/controller.dart';
import 'package:test/ui/page/home/view.dart';

List<GetPage> routes = [
  GetPage(
    name: '/auth',
    page: () => const AuthView(),
    binding: AuthBinding(),
  ),
  GetPage(
    name: '/',
    page: () => const HomeView(),
    binding: HomeBinding(),
  ),
];
