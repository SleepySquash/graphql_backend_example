import 'package:collection/collection.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:test/domain/model/chat.dart';
import 'package:test/domain/model/chat_item.dart';
import 'package:test/domain/service/auth.dart';
import 'package:test/domain/service/chat.dart';
import 'package:test/ui/page/chat/controller.dart';
import 'package:test/ui/page/chat/view.dart';
import 'package:test/util/helper/avatar.dart';

import 'controller.dart';

class ChatsView extends GetView<ChatsController> {
  const ChatsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String lastItemDescription(ChatItem? item) {
      if (item == null) return '';
      if (item is ChatMessage) {
        ChatMessage m = item;
        return Get.find<AuthService>().user!.id == m.userId
            ? 'You: ${m.text}'
            : m.text ?? 'null';
      }
      return 'Unknown item type';
    }

    Widget buildChatTile(Chat e) {
      final String chatName = e.name ?? e.members.firstOrNull?.name ?? 'Chat';
      if (e.kind == 'ChatKind.group') {
        return ListTile(
          title: Text(chatName),
          onTap: () => Get.to(() => ChatView(e.id),
              binding: ChatBindings(e.id, chatId: e.id)),
        );
      } else {
        return ListTile(
          title: Text(chatName),
          subtitle: Text(lastItemDescription(e.lastItem)),
          trailing: Text(DateFormat('kk:mm').format(e.lastItem!.at)),
          leading: CircleAvatar(
            backgroundImage: drawAvatar(e.members.firstOrNull?.avatar),
          ),
          onTap: () => Get.to(
            () => ChatView(e.id),
            binding: ChatBindings(e.id, chatId: e.id),
          ),
        );
      }
    }

    return GetX<ChatService>(
      builder: (chatService) => chatService.status.value.isLoading
          ? const Scaffold(body: Center(child: CircularProgressIndicator()))
          : Stack(
              children: [
                Scaffold(
                  body: chatService.status.value.isEmpty
                      ? Scaffold(
                          body: const Center(child: Text('No chats yet')),
                          floatingActionButton: FloatingActionButton(
                            onPressed: controller.chatService.refreshChats,
                            child: const Icon(Icons.refresh),
                          ),
                        )
                      : Scaffold(
                          body: ListView(
                            children: [
                              const ListTile(title: Text('Recent chats')),
                              ...chatService.chats
                                  .map((e) => buildChatTile(e))
                                  .toList(),
                            ],
                          ),
                        ),
                  floatingActionButton: FloatingActionButton(
                    onPressed: controller.chatService.refreshChats,
                    child: const Icon(Icons.refresh),
                  ),
                ),
                chatService.status.value.isLoadingMore
                    ? const Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                          padding: EdgeInsets.only(top: 20),
                          child: CircularProgressIndicator(),
                        ),
                      )
                    : Container(),
              ],
            ),
    );
  }
}
