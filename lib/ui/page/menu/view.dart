import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test/ui/page/my_profile/view.dart';
import 'package:test/util/helper/avatar.dart';

import '../../../../domain/service/auth.dart';

class MenuView extends StatelessWidget {
  const MenuView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Menu'.tr)),
      body: ListView(
        children: [
          const SizedBox(height: 10),
          ListTile(
            title: Text('Your profile'.tr),
            leading: CircleAvatar(
              backgroundImage: drawAvatar(Get.find<AuthService>().user?.avatar),
            ),
            onTap: () => Get.to(() => const MyProfileView()),
          ),
          const Divider(thickness: 2),
          ListTile(
            title: Text('Settings'.tr),
            leading: const Icon(Icons.settings),
          ),
          ExpandablePanel(
            header: const ListTile(
              leading: Icon(Icons.language),
              title: Text('language'),
            ),
            collapsed: Container(),
            expanded: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: const [],
              ),
            ),
          ),
          const Divider(thickness: 2),
          ListTile(
            title: Text('Privacy'.tr),
            leading: const Icon(Icons.privacy_tip),
          ),
          ListTile(
            title: Text('Terms of use'.tr),
            leading: const Icon(Icons.data_usage),
          ),
          ListTile(
            title: Text('Report a problem'.tr),
            leading: const Icon(Icons.report),
          ),
          const Divider(thickness: 2),
          ListTile(
            title: Text('Logout'.tr),
            leading: const Icon(Icons.logout),
            onTap: () async {
              await Get.find<AuthService>().logout();
              Get.offAndToNamed('/auth');
            },
          ),
          const SizedBox(height: 5),
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.light_mode,
                color: Colors.orange,
              ),
              ObxValue(
                (data) => Switch(
                  value: (data as Rx<bool>).value,
                  onChanged: (flag) {
                    data.value = flag;
                    Get.changeThemeMode(
                        flag ? ThemeMode.dark : ThemeMode.light);
                  },
                ),
                Get.isDarkMode.obs,
              ),
              const Icon(Icons.dark_mode),
            ],
          )
        ],
      ),
    );
  }
}
