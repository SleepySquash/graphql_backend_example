import 'package:get/get.dart';
import 'package:test/domain/service/chat.dart';

export 'view.dart';

class ChatsBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ChatsController(Get.find()));
  }
}

class ChatsController extends GetxController with StateMixin {
  ChatsController(this.chatService);
  ChatService chatService;

  @override
  void onReady() {
    super.onReady();
    chatService.refreshChats();
  }
}
