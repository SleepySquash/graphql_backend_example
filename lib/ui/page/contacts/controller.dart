import 'package:get/get.dart';
import 'package:test/domain/model/chat_contact.dart';
import 'package:test/domain/model/user.dart';
import 'package:test/domain/service/address_book.dart';
import 'package:test/store/user.dart';

class ContactsBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ContactsController(Get.find(), Get.find()));
  }
}

class ContactsController extends GetxController {
  ContactsController(this.userRepository, this.addressBook);
  UserRepository userRepository;
  AddressBook addressBook;

  RxList<User> searchResults = RxList<User>([]);
  RxList<User> recentResults = RxList<User>([]);

  @override
  void onReady() {
    super.onReady();
    addressBook.refreshContacts();
  }

  void search(String query) async {
    if (query.isEmpty) {
      searchResults.value = [];
    } else {
      try {
        searchResults.value = await userRepository.searchUsers(null, query);
      } catch (e) {
        searchResults.value = [];
      }
    }
  }
}
