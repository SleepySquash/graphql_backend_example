import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:photo_view/photo_view_gallery.dart';
import 'package:test/domain/model/chat_item.dart';
import 'package:test/domain/model/gallery_item.dart';
import 'package:test/domain/service/auth.dart';
import 'package:test/ui/page/profile/view.dart';
import 'package:intl/intl.dart';
import 'package:test/ui/widget/gallery_view.dart';
import 'package:test/util/helper/avatar.dart';

import 'controller.dart';

class ChatView extends GetView<ChatController> {
  const ChatView(this._tag, {Key? key}) : super(key: key);
  final String _tag;

  @override
  String? get tag => _tag;

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
                      offset: Offset(0, 3), blurRadius: 5, color: Colors.black)
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
              color: Colors.blueAccent,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                    offset: Offset(0, 3), blurRadius: 5, color: Colors.black)
              ],
            ),
            child: Obx(
              () => InkWell(
                child: AnimatedSwitcher(
                  duration: const Duration(milliseconds: 200),
                  switchInCurve: Curves.ease,
                  switchOutCurve: Curves.ease,
                  child: controller.messageIsEmpty.value
                      ? const Icon(
                          Icons.keyboard_voice,
                          color: Colors.white,
                          key: ValueKey('Icons.keyboard_voice'),
                        )
                      : const Icon(
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

    Widget buildAvatarButton() {
      if (controller.chat == null) {
        return TextButton(
          child: CircleAvatar(
            backgroundImage: drawAvatar(controller.user?.avatar),
          ),
          onPressed: () => Get.to(() => ProfileView(controller.user!.id)),
        );
      } else if (controller.chat!.kind == 'ChatKind.group') {
        return TextButton(child: const CircleAvatar(), onPressed: () => {});
      } else {
        return TextButton(
          child: CircleAvatar(
            backgroundImage:
                drawAvatar(controller.chat!.members.firstOrNull?.avatar),
          ),
          onPressed: () => Get.to(() =>
              ProfileView(controller.chat!.members.firstOrNull?.id ?? '')),
        );
      }
    }

    Widget buildMessageTile(ChatItem e) {
      bool fromMe = Get.find<AuthService>().user!.id == e.userId;
      return Row(
        mainAxisAlignment:
            fromMe ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          ConstrainedBox(
            constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width * 0.8),
            child: Container(
              margin: const EdgeInsets.only(top: 10),
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              decoration: BoxDecoration(
                  color: fromMe ? Colors.green : Get.theme.cardColor,
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Builder(
                    builder: (ctx) {
                      if (e is ChatMessage) {
                        ChatMessage m = e;
                        return Column(
                          children: [
                            SelectableText(
                              m.text ?? '',
                              style: Get.textTheme.bodyText2,
                            ),
                            if (m.attachments.isNotEmpty)
                              Column(
                                  children: m.attachments
                                      .map((a) => GestureDetector(
                                            onTap: () => Get.to(() =>
                                                GalleryPhotoViewWrapper(
                                                    galleryItems: m.attachments
                                                        .map((e) => GalleryItem(
                                                            e.id,
                                                            e.original,
                                                            DateTime.now()))
                                                        .toList())),
                                            child: Image.network(
                                                'http://localhost/files${a.original}'),
                                          ))
                                      .toList()),
                          ],
                        );
                      }
                      return Text('Unknown message type');
                    },
                  ),
                  Text(
                    DateFormat('kk:mm').format(e.at),
                    style: Get.textTheme.caption,
                  )
                ],
              ),
            ),
          ),
        ],
      );
      /*return Align(
        alignment: fromMe ? Alignment.topRight : Alignment.topLeft,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: fromMe ? Colors.blueAccent[400] : Get.theme.highlightColor,
          ),
          margin: const EdgeInsets.all(5),
          child: Builder(
            builder: (_) {
              if (e is ChatMessage) {
                ChatMessage m = e;
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      SelectableText(
                        m.text ?? '',
                        style: Get.textTheme.bodyText2,
                      ),
                      m.attachments.isEmpty
                          ? Container(width: 0)
                          : Column(
                              children: m.attachments
                                  .map((a) => ListTile(
                                      title: Image.network(
                                          'http://localhost/files${a.original}')))
                                  .toList()),
                      Text(
                        DateFormat('kk:mm').format(e.at),
                        style: Get.textTheme.caption,
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
                      style: Get.textTheme.bodyText2,
                    ),
                    Text(
                      DateFormat('kk:mm').format(e.at),
                      style: Get.textTheme.caption,
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      );*/
    }

    return Obx(
      () => Scaffold(
        appBar: AppBar(
          title: Text(controller.chat?.name ??
              controller.user?.name ??
              controller.chat?.members.firstOrNull?.name ??
              '...'),
          actions: [buildAvatarButton()],
        ),
        body: Stack(
          children: [
            controller.status.value.isLoading
                ? const Center(child: CircularProgressIndicator())
                : controller.chat == null
                    ? const Center(child: Text('Write your first message!'))
                    : Scrollbar(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: ListView(
                            children: controller.items
                                .map((e) => buildMessageTile(e))
                                .toList()
                              ..add(const Align(child: SizedBox(height: 71))),
                          ),
                        ),
                      ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [sendField],
            ),
            controller.status.value.isLoadingMore
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
      ),
    );
  }
}
