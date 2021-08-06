import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test/domain/service/address_book.dart';
import 'package:test/domain/service/chat.dart';
import 'package:test/store/chat.dart';
import 'package:test/store/user.dart';
import 'package:test/ui/page/chats/controller.dart';
import 'package:test/ui/page/contacts/controller.dart';

export 'view.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(UserRepository(Get.find()));
    Get.put(ChatRepository(Get.find()));
    Get.put(AddressBook(Get.find()));
    Get.put(ChatService(Get.find()));

    Get.put(HomeController());
    ContactsBinding().dependencies();
    ChatsBinding().dependencies();
  }
}

class HomeController extends GetxController {
  RxInt page = RxInt(2);
  PageController pageController = PageController(initialPage: 2);
}
