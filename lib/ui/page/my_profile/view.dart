import 'dart:ui';

import 'package:expandable/expandable.dart';
import 'package:file_selector/file_selector.dart';
import 'package:filesystem_picker/filesystem_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';
import 'package:test/domain/model/gallery_item.dart';
import 'package:test/domain/model/user.dart';
import 'package:test/domain/service/auth.dart';
import 'package:test/provider/graphql.dart';
import 'package:test/ui/widget/gallery_view.dart';
import 'package:path_provider/path_provider.dart';
import 'package:http_parser/http_parser.dart';
import 'package:test/util/helper/exception_parser.dart';
import 'package:path/path.dart';
import 'package:dio/dio.dart' as dio;
import 'package:test/util/helper/file_picker.dart';
import 'package:test/util/helper/mime_handler.dart';

import '../../../api/backend/api.dart';

import 'controller.dart';

class MyProfileView extends GetView<MyProfileController> {
  const MyProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AuthService authService = Get.find();
    MyUser user = authService.user!;

    return GetBuilder(
        init: MyProfileController(Get.find()),
        builder: (MyProfileController _) {
          return StatefulBuilder(builder: (context, setState) {
            Widget imageIndicator = Obx(
              () => Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: user.gallery
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
              ),
            );

            Widget galleryWidget = Stack(
              fit: StackFit.passthrough,
              alignment: Alignment.center,
              children: [
                ImageFiltered(
                  imageFilter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                  child: user.gallery.isNotEmpty
                      ? Obx(
                          () => AnimatedSwitcher(
                            duration: const Duration(milliseconds: 400),
                            child: Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                      'http://localhost/files${user.gallery[_.carouselIndex.value].original}'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              key: ValueKey(_.carouselIndex.value),
                            ),
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
                          'http://localhost/files${user.gallery[index].original}'),
                      initialScale: PhotoViewComputedScale.contained,
                      heroAttributes:
                          PhotoViewHeroAttributes(tag: user.gallery[index].id),
                      onTapDown: (__, ___, ____) => Get.to(
                        () => GalleryPhotoViewWrapper(
                          galleryItems: user.gallery,
                          initialIndex: index,
                        ),
                      ),
                    );
                  },
                  backgroundDecoration:
                      const BoxDecoration(color: Colors.transparent),
                  itemCount: user.gallery.length,
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
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FloatingActionButton(
                      onPressed: () async {
                        FileDetails? file =
                            await FilePicker.open(['jpg', 'png', 'jpeg']);
                        if (file != null) {
                          setState(() => _.addGalleryImage(file));
                        }
                      },
                      child: const Icon(Icons.add),
                    ),
                  ),
                ),
              ],
            );

            return GestureDetector(
              onTap: () {
                FocusManager.instance.primaryFocus?.unfocus();
                _.loginScopeNode.unfocus();
                _.nameScopeNode.unfocus();
                _.bioScopeNode.unfocus();
              },
              child: Scaffold(
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
                        background: galleryWidget,
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
                                    title: FocusScope(
                                      node: _.nameScopeNode,
                                      onFocusChange: (b) =>
                                          b ? {} : _.updateName(),
                                      child: TextField(
                                        controller: _.nameEditingController,
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline5,
                                        onSubmitted: (s) =>
                                            _.nameScopeNode.unfocus(),
                                        decoration: InputDecoration(
                                          labelText: 'Name',
                                          hintText: 'Input your name...',
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: FocusScope(
                                      node: _.bioScopeNode,
                                      onFocusChange: (b) =>
                                          b ? {} : _.updateBio(),
                                      child: TextField(
                                        controller:
                                            controller.bioEditingController,
                                        onSubmitted: (s) =>
                                            _.bioScopeNode.unfocus(),
                                        decoration: InputDecoration(
                                          labelText: 'Bio',
                                          hintText: 'Input your biography...',
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Divider(thickness: 2),
                                  ListTile(
                                    title: SelectableText(user.num),
                                    subtitle: const Text('Gapopa ID'),
                                  ),
                                  const Divider(thickness: 2),
                                  ListTile(
                                    leading: const Icon(Icons.person),
                                    title: FocusScope(
                                      node: _.loginScopeNode,
                                      onFocusChange: (b) =>
                                          b ? {} : _.updateLogin(),
                                      child: TextField(
                                        controller: _.loginEditingController,
                                        onSubmitted: (s) =>
                                            _.loginScopeNode.unfocus(),
                                        decoration: InputDecoration(
                                          labelText: 'Login',
                                          hintText: 'Input your login...',
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  ExpandablePanel(
                                    header: const ListTile(
                                      leading: Icon(Icons.phone),
                                      title: Text('Phones'),
                                    ),
                                    collapsed: Container(),
                                    expanded: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20),
                                      child: Column(
                                        children: const [],
                                      ),
                                    ),
                                  ),
                                  ExpandablePanel(
                                    header: const ListTile(
                                      leading: Icon(Icons.email),
                                      title: Text('Emails'),
                                    ),
                                    collapsed: Container(),
                                    expanded: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20),
                                      child: Column(
                                        children: const [],
                                      ),
                                    ),
                                  ),
                                  ExpandablePanel(
                                    header: const ListTile(
                                      leading: Icon(Icons.password),
                                      title: Text('Password'),
                                    ),
                                    collapsed: Container(),
                                    expanded: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20),
                                      child: Column(
                                        children: [
                                          user.hasPassword
                                              ? ListTile(
                                                  title: TextFormField(
                                                    controller: _
                                                        .oldPasswordEditingController,
                                                    decoration: InputDecoration(
                                                      labelText:
                                                          'Current password',
                                                      hintText:
                                                          'Input your password...',
                                                      border:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(15),
                                                      ),
                                                    ),
                                                  ),
                                                )
                                              : Container(),
                                          ListTile(
                                            title: TextFormField(
                                              controller: _
                                                  .newPasswordEditingController,
                                              decoration: InputDecoration(
                                                labelText: 'New password',
                                                hintText:
                                                    'Input new password...',
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                ),
                                              ),
                                            ),
                                          ),
                                          ListTile(
                                            title: TextButton(
                                              onPressed: _.setPassword,
                                              child:
                                                  const Text('Change password'),
                                              style: TextButton.styleFrom(
                                                padding:
                                                    const EdgeInsets.all(16.0),
                                                backgroundColor: Get
                                                    .theme
                                                    .buttonTheme
                                                    .colorScheme!
                                                    .background,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                ),
                                                textStyle: const TextStyle(
                                                    fontSize: 20),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  const Divider(thickness: 2),
                                  ListTile(
                                    leading: const Icon(Icons.delete,
                                        color: Colors.red),
                                    title: Text('Delete account'.tr,
                                        style:
                                            const TextStyle(color: Colors.red)),
                                  ),
                                  const SizedBox(height: 20),
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
            );
          });
        });
  }
}
