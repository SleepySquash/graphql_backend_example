import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test/ui/page/profile/controller.dart';

class ProfileView extends StatelessWidget {
  const ProfileView(this.id, {Key? key}) : super(key: key);
  final String id;

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: ProfileController(Get.find(), id),
      tag: id,
      builder: (ProfileController _) => Obx(
        () => _.status.value.isLoading
            ? const Scaffold(body: Center(child: CircularProgressIndicator()))
            : Scaffold(
                body: CustomScrollView(
                  slivers: [
                    SliverAppBar(
                      leading: IconButton(
                        onPressed: () => Get.back(),
                        icon: const Icon(Icons.arrow_back),
                      ),
                      expandedHeight: MediaQuery.of(context).size.height * 0.6,
                      pinned: true,
                      flexibleSpace: FlexibleSpaceBar(
                        background: Stack(
                          fit: StackFit.passthrough,
                          alignment: Alignment.center,
                          children: [
                            ImageFiltered(
                              imageFilter:
                                  ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                              child: Image.network(
                                'http://localhost/files${_.user!.avatar?.original}',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Image.network(
                              'http://localhost/files${_.user!.avatar?.original}',
                              fit: BoxFit.contain,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SliverList(
                      delegate: SliverChildListDelegate.fixed(
                        [
                          Align(
                            alignment: Alignment.center,
                            child: ConstrainedBox(
                              constraints: const BoxConstraints(maxWidth: 500),
                              child: Column(
                                children: [
                                  const SizedBox(height: 10),
                                  ListTile(
                                    title: Text(
                                      _.user!.name ?? 'no name',
                                      style:
                                          Theme.of(context).textTheme.headline5,
                                    ),
                                    trailing: const Icon(Icons.edit),
                                  ),
                                  ListTile(
                                      title: Text(_.user!.bio ?? 'no bio')),
                                  const Divider(thickness: 2),
                                  ListTile(
                                    title: SelectableText(_.user!.num),
                                    subtitle: const Text('Gapopa ID'),
                                  ),
                                  const Divider(thickness: 2),
                                  ListTile(
                                    title: Text('Write a message'.tr),
                                    leading: const Icon(Icons.message),
                                  ),
                                  ListTile(
                                    title: Text('Audio call'.tr),
                                    leading: const Icon(Icons.call),
                                  ),
                                  ListTile(
                                    title: Text('Video call'.tr),
                                    leading: const Icon(Icons.video_call),
                                  ),
                                  const Divider(thickness: 2),
                                  ListTile(
                                    title: Text(_.user!.contacts.isEmpty
                                        ? 'Add to contacts'.tr
                                        : 'Remove from contacts'.tr),
                                    leading: const Icon(Icons.contact_page),
                                    onTap: () => _.user!.contacts.isEmpty
                                        ? _.addToContacts()
                                        : _.deleteFromContacts(),
                                  ),
                                  ListTile(
                                    title: Text(_.user!.contacts.isEmpty
                                        ? 'Add to favorites'.tr
                                        : _.isInFavorites.value
                                            ? 'Remove from favorites'.tr
                                            : 'Add to favorites'.tr),
                                    leading: const Icon(Icons.star_outline),
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
                                    leading:
                                        const Icon(Icons.disabled_by_default),
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
      ),
    );
  }
}
