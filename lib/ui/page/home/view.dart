import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:test/ui/page/chats/controller.dart';
import 'package:test/ui/page/contacts/view.dart';
import 'package:test/ui/page/menu/view.dart';

import 'controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller.pageController,
        children: const [
          ContactsView(),
          ChatsView(),
          MenuView(),
        ],
        onPageChanged: (i) => controller.page.value = i,
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.contacts), label: "Contacts"),
            BottomNavigationBarItem(
                icon: Icon(Icons.message), label: "Messages"),
            BottomNavigationBarItem(icon: Icon(Icons.menu), label: "Menu"),
          ],
          currentIndex: controller.page.value,
          onTap: (i) => controller.pageController.jumpToPage(i),
        ),
      ),
    );
  }
}
