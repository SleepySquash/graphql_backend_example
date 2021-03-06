import 'package:get/get.dart';
import 'package:test/domain/model/chat.dart';
import 'package:test/store/chat.dart';

class ChatService extends GetxController {
  ChatService(this.chatRepository);
  ChatRepository chatRepository;

  Rx<RxStatus> status = Rx<RxStatus>(RxStatus.loading());
  RxList<Chat> chats = RxList<Chat>([]);

  Future<void> refreshChats() async {
    status.value = RxStatus.loadingMore();
    chats.value = await chatRepository.recentChats((List<Chat> value) {
      chats.value = value;
      status.value = chats.isEmpty ? RxStatus.empty() : RxStatus.success();
    });
  }
}
