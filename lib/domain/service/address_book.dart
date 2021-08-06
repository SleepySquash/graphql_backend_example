import 'package:get/get.dart';
import 'package:test/domain/model/chat_contact.dart';
import 'package:test/domain/model/user.dart';
import 'package:test/store/user.dart';

class AddressBook extends GetxController {
  AddressBook(this.userRepository);
  UserRepository userRepository;

  Rx<RxStatus> status = Rx<RxStatus>(RxStatus.loading());
  RxList<ChatContact> contacts = RxList<ChatContact>([]);
  RxList<ChatContact> favorites = RxList<ChatContact>([]);

  Future<ChatContact> addToContacts(User user) async {
    ChatContact contact = await userRepository.addToContacts(user);
    contact.favoritePosition != null
        ? favorites.add(contact)
        : contacts.add(contact);
    return contact;
  }

  Future<void> removeFromContacts(ChatContact contact) async {
    contacts.remove(contact);
    favorites.remove(contact);
    await userRepository.removeFromContacts(contact);
  }

  Future<void> refreshContacts() async {
    status.value = RxStatus.loading();
    List<Future> futures = [
      userRepository.contacts(noFavorite: true).then((v) => contacts.value = v),
      userRepository.favoriteContacts().then((v) => favorites.value = v)
    ];
    await Future.wait(futures);
    status.value = contacts.isEmpty && favorites.isEmpty
        ? RxStatus.empty()
        : RxStatus.success();
  }

  Future<bool> addToFavorites(ChatContact contact) async {
    double position = await userRepository.addToFavorites(contact);

    ChatContact c = contacts.firstWhere((e) => e == contact);
    contacts.remove(c);
    c.favoritePosition = position;
    favorites.add(c);

    return true;
  }

  Future<bool> removeFromFavorites(ChatContact contact) async {
    await userRepository.removeFromFavorites(contact);

    ChatContact c = favorites.firstWhere((e) => e == contact);
    favorites.remove(c);
    c.favoritePosition = null;
    contacts.add(c);

    return false;
  }
}
