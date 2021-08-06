import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test/domain/model/chat_item.dart';
import 'package:test/ui/page/profile/view.dart';
import 'package:intl/intl.dart';

import 'controller.dart';

class ChatView extends GetView<ChatController> {
  const ChatView(this.tag);

  @override
  final String tag;

  @override
  Widget build(BuildContext context) {
    Widget sendField = Container(
      margin: const EdgeInsets.all(10.0),
      color: Colors.transparent,
      height: 61,
      child: Row(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Get.theme.colorScheme.surface,
                borderRadius: BorderRadius.circular(35.0),
                boxShadow: const [
                  BoxShadow(
                      offset: Offset(0, 3), blurRadius: 5, color: Colors.grey)
                ],
              ),
              child: Row(
                children: [
                  IconButton(
                      icon: const Icon(
                        Icons.face,
                        color: Colors.blueAccent,
                      ),
                      onPressed: () {}),
                  Expanded(
                    child: TextField(
                      controller: controller.messageEditingController,
                      decoration: const InputDecoration(
                        hintText: "Type something...",
                        hintStyle: TextStyle(color: Colors.blueAccent),
                        border: InputBorder.none,
                      ),
                      onChanged: (s) =>
                          controller.messageIsEmpty.value = s.isEmpty,
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.photo_camera,
                        color: Colors.blueAccent),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon:
                        const Icon(Icons.attach_file, color: Colors.blueAccent),
                    onPressed: () {},
                  )
                ],
              ),
            ),
          ),
          const SizedBox(width: 15),
          Container(
            padding: const EdgeInsets.all(15.0),
            decoration: const BoxDecoration(
                color: Colors.blueAccent, shape: BoxShape.circle),
            child: Obx(
              () => InkWell(
                child: AnimatedSwitcher(
                  duration: const Duration(milliseconds: 200),
                  switchInCurve: Curves.ease,
                  switchOutCurve: Curves.ease,
                  child: controller.messageIsEmpty.value
                      ? Icon(
                          Icons.keyboard_voice,
                          color: Colors.white,
                          key: ValueKey('Icons.keyboard_voice'),
                        )
                      : Icon(
                          Icons.send,
                          color: Colors.white,
                          key: ValueKey('Icons.send'),
                        ),
                ),
                onLongPress: controller.messageIsEmpty.value ? () {} : null,
                onTap: controller.messageIsEmpty.value
                    ? null
                    : controller.sendMessage,
              ),
            ),
          )
        ],
      ),
    );

    return Obx(
      () => controller.status.value.isLoading
          ? Scaffold(body: Center(child: CircularProgressIndicator()))
          : Scaffold(
              appBar: AppBar(
                title: Text(
                    controller.chat?.name ?? controller.user?.name ?? 'null'),
                actions: [
                  TextButton(
                    child: const CircleAvatar(),
                    onPressed: () => Get.to(
                      ProfileView('id'),
                    ),
                  )
                ],
              ),
              body: Stack(
                children: [
                  controller.chat == null
                      ? Center(child: Text('Write your first message!'))
                      : Scrollbar(
                          child: ListView(
                            children: controller.items.reversed
                                .map(
                                  (e) => Align(
                                    alignment: Alignment.topLeft,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: Get.theme.colorScheme.surface,
                                      ),
                                      margin: const EdgeInsets.all(5),
                                      child: Builder(
                                        builder: (_) {
                                          if (e is ChatMessage) {
                                            ChatMessage m = e;
                                            return Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Column(
                                                children: [
                                                  Text(
                                                    e.userId,
                                                    style:
                                                        Get.textTheme.caption,
                                                  ),
                                                  SelectableText(
                                                    m.text ?? '',
                                                    style:
                                                        Get.textTheme.bodyText2,
                                                  ),
                                                  Text(
                                                    DateFormat('kk:mm')
                                                        .format(e.at),
                                                    style:
                                                        Get.textTheme.caption,
                                                  ),
                                                ],
                                              ),
                                            );
                                          }
                                          return Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Column(
                                              children: [
                                                Text(
                                                  e.userId,
                                                  style: Get.textTheme.caption,
                                                ),
                                                SelectableText(
                                                  e.at.toString(),
                                                  style:
                                                      Get.textTheme.bodyText2,
                                                ),
                                                Text(
                                                  DateFormat('kk:mm')
                                                      .format(e.at),
                                                  style: Get.textTheme.caption,
                                                ),
                                              ],
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                )
                                .toList()
                                  ..add(
                                      const Align(child: SizedBox(height: 71))),
                          ),
                        ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [sendField],
                  ),
                ],
              ),
            ),
    );
  }
}
