import 'dart:ui';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';
import 'package:test/ui/page/chat/controller.dart';
import 'package:test/ui/page/chat/view.dart';
import 'package:test/ui/page/profile/controller.dart';

import '../../widget/gallery_view.dart';

class ProfileView extends StatelessWidget {
  const ProfileView(this.id, {Key? key}) : super(key: key);
  final String id;

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: ProfileController(Get.find(), id),
      tag: id,
      builder: (ProfileController _) {
        return Obx(
          () => _.status.value.isLoading || _.user == null
              ? const Scaffold(body: Center(child: CircularProgressIndicator()))
              : Builder(builder: (context) {
                  Widget imageIndicator = Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: _.user!.gallery
                            .asMap()
                            .entries
                            .map((e) => Container(
                                  width: 12,
                                  height: 12,
                                  margin: const EdgeInsets.symmetric(
                                      vertical: 4.0, horizontal: 1.0),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    boxShadow: const [BoxShadow(blurRadius: 1)],
                                    color: _.carouselIndex.value == e.key
                                        ? Colors.white
                                        : Colors.grey,
                                  ),
                                ))
                            .toList(),
                      ),
                    ],
                  );

                  Widget galleryWidget = Stack(
                    fit: StackFit.passthrough,
                    alignment: Alignment.center,
                    children: [
                      ImageFiltered(
                        imageFilter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                        child: _.user!.gallery.isNotEmpty
                            ? AnimatedSwitcher(
                                duration: const Duration(milliseconds: 400),
                                child: Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage(
                                          'http://localhost/files${_.user!.gallery[_.carouselIndex.value].original}'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  key: ValueKey(_.carouselIndex.value),
                                ),
                              )
                            : Image.asset('assets/images/bg-gapopa.png',
                                fit: BoxFit.cover),
                      ),
                      PhotoViewGallery.builder(
                        scrollPhysics: const BouncingScrollPhysics(),
                        builder: (context, index) {
                          return PhotoViewGalleryPageOptions(
                            imageProvider: NetworkImage(
                                'http://localhost/files${_.user!.gallery[index].original}'),
                            initialScale: PhotoViewComputedScale.contained,
                            heroAttributes: PhotoViewHeroAttributes(
                                tag: _.user!.gallery[index].id),
                            onTapDown: (__, ___, ____) => Get.to(
                              () => GalleryPhotoViewWrapper(
                                galleryItems: _.user!.gallery,
                                initialIndex: index,
                              ),
                            ),
                          );
                        },
                        backgroundDecoration:
                            const BoxDecoration(color: Colors.transparent),
                        itemCount: _.user!.gallery.length,
                        loadingBuilder: (context, event) => Center(
                          child: SizedBox(
                            width: 20.0,
                            height: 20.0,
                            child: CircularProgressIndicator(
                                value: event == null
                                    ? 0
                                    : event.cumulativeBytesLoaded /
                                        event.expectedTotalBytes!),
                          ),
                        ),
                        onPageChanged: (i) => _.carouselIndex.value = i,
                      ),
                      imageIndicator,
                    ],
                  );

                  return Stack(
                    children: [
                      Scaffold(
                        body: CustomScrollView(
                          slivers: [
                            SliverAppBar(
                              leading: IconButton(
                                onPressed: () => Get.back(),
                                icon: const Icon(Icons.arrow_back),
                              ),
                              expandedHeight:
                                  MediaQuery.of(context).size.height * 0.6,
                              pinned: true,
                              flexibleSpace: FlexibleSpaceBar(
                                background: galleryWidget,
                              ),
                            ),
                            SliverList(
                              delegate: SliverChildListDelegate.fixed(
                                [
                                  Align(
                                    alignment: Alignment.center,
                                    child: ConstrainedBox(
                                      constraints:
                                          const BoxConstraints(maxWidth: 500),
                                      child: Column(
                                        children: [
                                          const SizedBox(height: 10),
                                          ListTile(
                                            title: Text(
                                              _.user?.name ?? 'no name',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headline5,
                                            ),
                                            trailing: const Icon(Icons.edit),
                                          ),
                                          ListTile(
                                              title: Text(
                                                  _.user?.bio ?? 'no bio')),
                                          const Divider(thickness: 2),
                                          ListTile(
                                            title: SelectableText(_.user!.num),
                                            subtitle: const Text('Gapopa ID'),
                                          ),
                                          const Divider(thickness: 2),
                                          ListTile(
                                            title: Text('Write a message'.tr),
                                            leading: const Icon(Icons.message),
                                            onTap: () => Get.to(
                                                ChatView(_
                                                        .user!
                                                        .contacts
                                                        .firstOrNull
                                                        ?.dialogId ??
                                                    _.user!.id),
                                                binding: ChatBindings(
                                                    _.user!.contacts.firstOrNull
                                                            ?.dialogId ??
                                                        _.user!.id,
                                                    chatId: _.user!.contacts
                                                        .firstOrNull?.dialogId,
                                                    user: _.user)),
                                          ),
                                          ListTile(
                                            title: Text('Audio call'.tr),
                                            leading: const Icon(Icons.call),
                                          ),
                                          ListTile(
                                            title: Text('Video call'.tr),
                                            leading:
                                                const Icon(Icons.video_call),
                                          ),
                                          const Divider(thickness: 2),
                                          ListTile(
                                            title: Text(_.user!.contacts.isEmpty
                                                ? 'Add to contacts'.tr
                                                : 'Remove from contacts'.tr),
                                            leading:
                                                const Icon(Icons.contact_page),
                                            onTap: () =>
                                                _.user!.contacts.isEmpty
                                                    ? _.addToContacts()
                                                    : _.deleteFromContacts(),
                                          ),
                                          ListTile(
                                            title: Text(_.user!.contacts.isEmpty
                                                ? 'Add to favorites'.tr
                                                : _.isInFavorites.value
                                                    ? 'Remove from favorites'.tr
                                                    : 'Add to favorites'.tr),
                                            leading:
                                                const Icon(Icons.star_outline),
                                            onTap: _.user!.contacts.isEmpty
                                                ? null
                                                : _.isInFavorites.value
                                                    ? _.removeFromFavorites
                                                    : _.addToFavorites,
                                          ),
                                          const Divider(thickness: 2),
                                          ListTile(
                                            title: Text('Create group'.tr),
                                            leading: const Icon(Icons.group),
                                          ),
                                          const Divider(thickness: 2),
                                          ListTile(
                                            title: Text('Mute user'.tr),
                                            leading: const Icon(
                                                Icons.disabled_by_default),
                                          ),
                                          ListTile(
                                            title: Text('Block user'.tr),
                                            leading: const Icon(Icons.block),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      _.status.value.isLoadingMore
                          ? const Align(
                              alignment: Alignment.topCenter,
                              child: Padding(
                                padding: EdgeInsets.only(top: 20),
                                child: CircularProgressIndicator(),
                              ),
                            )
                          : Container()
                    ],
                  );
                }),
        );
      },
    );
  }
}
