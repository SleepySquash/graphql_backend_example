import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:test/domain/service/chat.dart';
import 'package:test/ui/page/chat/controller.dart';
import 'package:test/ui/page/chat/view.dart';

import 'controller.dart';

class ChatsView extends GetView<ChatsController> {
  const ChatsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetX<ChatService>(
      builder: (chatService) => chatService.status.value.isLoading
          ? const Scaffold(body: Center(child: CircularProgressIndicator()))
          : chatService.status.value.isEmpty
              ? Scaffold(
                  body: Center(child: Text('No chats yet')),
                  floatingActionButton: FloatingActionButton(
                    onPressed: controller.chatService.refreshChats,
                    child: Icon(Icons.refresh),
                  ),
                )
              : Scaffold(
                  body: ListView(
                    children: chatService.chats
                        .map((e) => ListTile(
                              title: Text(e.id),
                              onTap: () => Get.to(ChatView(e.id),
                                  binding: ChatBindings(e.id, chatId: e.id)),
                            ))
                        .toList(),
                  ),
                  floatingActionButton: FloatingActionButton(
                    onPressed: controller.chatService.refreshChats,
                    child: Icon(Icons.refresh),
                  ),
                ),
    );
  }
}
