import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test/domain/model/chat.dart';
import 'package:test/domain/model/chat_item.dart';
import 'package:test/domain/model/user.dart';
import 'package:test/domain/service/auth.dart';
import 'package:test/store/chat.dart';
import 'package:test/util/helper/exception_parser.dart';

class ChatBindings extends Bindings {
  ChatBindings(this.tag, {this.chatId, this.user});
  String tag;
  String? chatId;
  User? user;

  @override
  void dependencies() {
    Get.put(ChatController(Get.find(), chatId, user), tag: tag);
  }
}

class ChatController extends GetxController {
  ChatController(this.chatRepository, this.chatId, this.user);
  ChatRepository chatRepository;
  String? chatId;
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
    if (chatId == null) status.value = RxStatus.success();
  }

  @override
  void onReady() async {
    super.onReady();

    if (chatId != null) {
      try {
        List<Future> futures = [
          chatRepository.chat(chatId!).then((c) => chat = c),
          chatRepository.messages(chatId!).then((i) => items.value = i),
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
    if (chat != null) {
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
}
