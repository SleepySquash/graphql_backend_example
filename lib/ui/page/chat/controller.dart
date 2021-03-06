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
      status.value = RxStatus.loadingMore();
      try {
        List<Future> futures = [
          chatRepository.chat(chatId!, (Chat c) {
            chat = c;
            status.refresh();
          }).then((c) => chat = c),
          chatRepository.messages(chatId!, (List<ChatItem> messages) {
            items.value = messages.reversed.toList();
            status.value = RxStatus.success();
          }).then((i) => items.value = i.reversed.toList()),
        ];
        await Future.wait(futures);
      } catch (e) {
        await ExceptionParser.error(e);
        Get.back();
      }
    } else if (user == null) {
      await ExceptionParser.error(Exception('No user/chat is selected'));
      Get.back();
    } else {
      status.value = RxStatus.success();
    }
  }

  Future<void> sendMessage() async {
    if (chat == null) {
      chat = await chatRepository.createDialog(user!.id);
      status.refresh();
      await sendMessage();
    } else {
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
