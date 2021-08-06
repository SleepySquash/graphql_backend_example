import 'dart:ui';

import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:test/domain/model/user.dart';
import 'package:test/domain/service/auth.dart';

import 'controller.dart';

class MyProfileView extends GetView<MyProfileController> {
  const MyProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AuthService authService = Get.find();
    MyUser user = authService.user!;

    Widget userInfo = Column(
      children: [
        Text('id: ${authService.user!.id}'),
        Text('num: ${authService.user!.num}'),
        Text('login: ${authService.user!.login}'),
        Text('name: ${authService.user!.name}'),
        Text('bio: ${authService.user!.bio}'),
      ],
    );

    return GetBuilder(
      init: MyProfileController(Get.find()),
      builder: (MyProfileController _) => GestureDetector(
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
                  background: Stack(
                    fit: StackFit.passthrough,
                    alignment: Alignment.center,
                    children: [
                      ImageFiltered(
                        imageFilter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                        child: Image.network(
                          'http://localhost/files${user.avatar?.original}',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Image.network(
                        'http://localhost/files${user.avatar?.original}',
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
                              title: FocusScope(
                                node: _.nameScopeNode,
                                onFocusChange: (b) => b ? {} : _.updateName(),
                                child: TextField(
                                  controller: _.nameEditingController,
                                  style: Theme.of(context).textTheme.headline5,
                                  onSubmitted: (s) => _.nameScopeNode.unfocus(),
                                  decoration: InputDecoration(
                                    labelText: 'Name',
                                    hintText: 'Input your name...',
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            ListTile(
                              title: FocusScope(
                                node: _.bioScopeNode,
                                onFocusChange: (b) => b ? {} : _.updateBio(),
                                child: TextField(
                                  controller: controller.bioEditingController,
                                  onSubmitted: (s) => _.bioScopeNode.unfocus(),
                                  decoration: InputDecoration(
                                    labelText: 'Bio',
                                    hintText: 'Input your biography...',
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15),
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
                                onFocusChange: (b) => b ? {} : _.updateLogin(),
                                child: TextField(
                                  controller: _.loginEditingController,
                                  onSubmitted: (s) =>
                                      _.loginScopeNode.unfocus(),
                                  decoration: InputDecoration(
                                    labelText: 'Login',
                                    hintText: 'Input your login...',
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15),
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
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
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
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
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
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Column(
                                  children: [
                                    user.hasPassword
                                        ? ListTile(
                                            title: TextFormField(
                                              controller: _
                                                  .oldPasswordEditingController,
                                              decoration: InputDecoration(
                                                labelText: 'Current password',
                                                hintText:
                                                    'Input your password...',
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                ),
                                              ),
                                            ),
                                          )
                                        : Container(),
                                    ListTile(
                                      title: TextFormField(
                                        controller:
                                            _.newPasswordEditingController,
                                        decoration: InputDecoration(
                                          labelText: 'New password',
                                          hintText: 'Input new password...',
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
                                        child: const Text('Change password'),
                                        style: TextButton.styleFrom(
                                          padding: const EdgeInsets.all(16.0),
                                          backgroundColor: Get.theme.buttonTheme
                                              .colorScheme!.background,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                          ),
                                          textStyle:
                                              const TextStyle(fontSize: 20),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const Divider(thickness: 2),
                            ListTile(
                              leading:
                                  const Icon(Icons.delete, color: Colors.red),
                              title: Text('Delete account'.tr,
                                  style: const TextStyle(color: Colors.red)),
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
      ),
    );
  }
}
