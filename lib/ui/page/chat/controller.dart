import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test/domain/model/chat.dart';
import 'package:test/domain/model/chat_item.dart';
import 'package:test/domain/model/user.dart';
import 'package:test/domain/service/auth.dart';
import 'package:test/store/chat.dart';
import 'package:test/util/helper/exception_parser.dart';

class ChatBindings extends Bindings {
  ChatBindings(this.tag, {this.chat, this.user});
  String tag;
  Chat? chat;
  User? user;

  @override
  void dependencies() {
    Get.put(ChatController(Get.find(), chat, user), tag: tag);
  }
}

class ChatController extends GetxController {
  ChatController(this.chatRepository, this.chat, this.user);
  ChatRepository chatRepository;
  Chat? chat;
  User? user;

  Rx<RxStatus> status = Rx<RxStatus>(RxStatus.loading());
  RxList<ChatItem> items = RxList<ChatItem>([]);
  RxList<ChatItem> pendingItems = RxList<ChatItem>([]);

  TextEditingController messageEditingController = TextEditingController();
  RxBool messageIsEmpty = RxBool(true);

  @override
  void onInit() {
    super.onInit();
    if (chat == null) status.value = RxStatus.success();
  }

  @override
  void onReady() async {
    super.onReady();

    if (chat != null) {
      try {
        List<Future> futures = [
          chatRepository.chat(chat!.id).then((c) => chat = c),
          chatRepository.messages(chat!.id).then((i) => items.value = i),
        ];
        await Future.wait(futures);
        status.value = RxStatus.success();
      } catch (e) {
        await ExceptionParser.error(e);
        Get.back();
      }
    } else if (user == null) {
      await ExceptionParser.error(Exception('No user/chat is selected'));
      Get.back();
    }
  }

  Future<void> sendMessage() async {
    try {
      ChatMessage item = ChatMessage(
        '',
        chat!.id,
        Get.find<AuthService>().user!.id,
        DateTime.now(),
        text: messageEditingController.text,
      );
      messageEditingController.clear();
      items.add(await chatRepository.sendMessage(item));
    } catch (e) {
      await ExceptionParser.error(e);
    }
  }
}
