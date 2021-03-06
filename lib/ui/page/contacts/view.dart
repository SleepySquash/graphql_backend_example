import 'package:collection/collection.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';
import 'package:test/domain/model/chat_contact.dart';
import 'package:test/domain/service/address_book.dart';
import 'package:test/ui/page/profile/view.dart';
import 'package:test/util/helper/avatar.dart';

import 'controller.dart';

class ContactsView extends GetView<ContactsController> {
  const ContactsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget buildListTile(e, [bool addToRecent = false]) => ListTile(
          leading: CircleAvatar(
            backgroundImage: e.avatar?.big == null
                ? null
                : NetworkImage('http://localhost/files${e.avatar!.big}'),
          ),
          title: Text(e.name ?? 'null'),
          subtitle: Text(e.num),
          onTap: () {
            if (addToRecent) {
              if (controller.recentResults.contains(e)) {
                controller.recentResults.remove(e);
              }
              controller.recentResults.add(e);
              if (controller.recentResults.length > 5) {
                controller.recentResults.removeAt(0);
              }
            }
            Get.to(() => ProfileView(e.id));
          },
        );

    Widget buildFloatingSearchBar() => FloatingSearchBar(
          hint: 'Search...',
          scrollPadding: const EdgeInsets.only(top: 16, bottom: 56),
          transitionDuration: const Duration(milliseconds: 500),
          transitionCurve: Curves.easeInOut,
          physics: const BouncingScrollPhysics(),
          axisAlignment: context.isPortrait ? 0.0 : -1.0,
          openAxisAlignment: 0.0,
          width: context.isPortrait ? 600 : 500,
          debounceDelay: const Duration(milliseconds: 400),
          onQueryChanged: (query) => controller.search(query),
          transition: CircularFloatingSearchBarTransition(),
          actions: [
            FloatingSearchBarAction.searchToClear(showIfClosed: false),
          ],
          builder: (context, transition) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Material(
                color: Get.theme.cardColor,
                elevation: 4.0,
                child: Obx(
                  () => Column(
                    mainAxisSize: MainAxisSize.min,
                    children: controller.searchResults.isEmpty
                        ? controller.recentResults.isEmpty
                            ? [
                                Container(
                                  color: Get.theme.backgroundColor,
                                  height: 100,
                                  child: const Center(
                                      child: Text(
                                          'Search anyone by their login!')),
                                )
                              ]
                            : [
                                const ListTile(title: Text('Recent')),
                                ...controller.recentResults
                                    .map((e) => buildListTile(e))
                                    .toList()
                                    .reversed
                              ]
                        : controller.searchResults
                            .map((e) => buildListTile(e, true))
                            .toList(),
                  ),
                ),
              ),
            );
          },
        );

    Widget buildContactTile(ChatContact e) => ListTile(
          leading: CircleAvatar(
            backgroundImage: drawAvatar(e.users.firstOrNull?.avatar),
          ),
          title: Text(e.name),
          subtitle: Text(e.id),
          onTap: () => Get.to(ProfileView(e.users[0].id)),
        );

    Widget buildContactsList() => GetX<AddressBook>(
          builder: (addressBook) => ListView(
            children: [
              const SizedBox(height: 72),
              addressBook.favoritesStatus.value.isLoading
                  ? Container()
                  : addressBook.favorites.isEmpty
                      ? Container()
                      : Column(
                          children: [
                            const ListTile(title: Text('Favorites')),
                            ...addressBook.favorites
                                .map((e) => buildContactTile(e))
                                .toList(),
                          ],
                        ),
              addressBook.contactsStatus.value.isLoading
                  ? const Center(child: CircularProgressIndicator())
                  : addressBook.favorites.isEmpty
                      ? const ListTile(title: Text('No contacts yet'))
                      : Column(
                          children: [
                            const ListTile(title: Text('Contacts')),
                            ...addressBook.contacts
                                .map((e) => buildContactTile(e))
                                .toList(),
                          ],
                        ),
            ],
          ),
        );

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        fit: StackFit.expand,
        children: [
          buildContactsList(),
          buildFloatingSearchBar(),
          Obx(() => controller.addressBook.contactsStatus.value.isLoadingMore
              ? const Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: CircularProgressIndicator(),
                  ),
                )
              : Container()),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.addressBook.refreshContacts,
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
