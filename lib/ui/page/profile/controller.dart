import 'package:carousel_slider/carousel_controller.dart';
import 'package:get/get.dart';
import 'package:test/domain/model/chat_contact.dart';
import 'package:test/domain/model/user.dart';
import 'package:test/domain/service/address_book.dart';
import 'package:test/store/user.dart';
import 'package:test/util/helper/exception_parser.dart';

class ProfileController extends GetxController {
  ProfileController(this.userRepository, this.id);

  Rx<RxStatus> status = Rx<RxStatus>(RxStatus.loading());
  User? user;

  RxBool isInFavorites = RxBool(false);
  UserRepository userRepository;
  String id;

  RxInt carouselIndex = RxInt(0);

  @override
  void onReady() async {
    super.onReady();
    try {
      status.value = RxStatus.loadingMore();
      user = await userRepository.user(id, (User user) {
        this.user = user;
        isInFavorites.value = user.contacts.isNotEmpty &&
            user.contacts[0].favoritePosition != null;
        status.value = RxStatus.success();
      });
      isInFavorites.value = user != null &&
          user!.contacts.isNotEmpty &&
          user?.contacts[0].favoritePosition != null;
    } catch (e) {
      await ExceptionParser.error(e);
      Get.back();
    }
  }

  void addToContacts() async {
    try {
      ChatContact contact = await Get.find<AddressBook>().addToContacts(user!);
      user!.contacts.isEmpty
          ? user!.contacts = [contact]
          : user!.contacts.add(contact);
      ExceptionParser.success('Added to contacts');
      refresh();
    } catch (e) {
      ExceptionParser.error(e);
    }
  }

  void deleteFromContacts() async {
    try {
      for (ChatContact c in user!.contacts) {
        await Get.find<AddressBook>().removeFromContacts(c);
      }
      user!.contacts.clear();
      isInFavorites.value = false;
      ExceptionParser.success('Removed from contacts');
      refresh();
    } catch (e) {
      ExceptionParser.error(e);
    }
  }

  void addToFavorites() async {
    try {
      isInFavorites.value =
          await Get.find<AddressBook>().addToFavorites(user!.contacts[0]);
      ExceptionParser.success('Added to favorites');
    } catch (e) {
      ExceptionParser.error(e);
    }
  }

  void removeFromFavorites() async {
    try {
      isInFavorites.value =
          await Get.find<AddressBook>().removeFromFavorites(user!.contacts[0]);
      ExceptionParser.success('Removed from favorites');
    } catch (e) {
      ExceptionParser.error(e);
    }
  }
}
