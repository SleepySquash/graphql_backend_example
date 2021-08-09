import 'package:get/get.dart';
import 'package:test/domain/model/chat_contact.dart';
import 'package:test/domain/model/user.dart';
import 'package:test/store/user.dart';

class AddressBook extends GetxController {
  AddressBook(this.userRepository);
  UserRepository userRepository;

  Rx<RxStatus> contactsStatus = Rx<RxStatus>(RxStatus.loading());
  Rx<RxStatus> favoritesStatus = Rx<RxStatus>(RxStatus.loading());
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
    contactsStatus.value = RxStatus.loadingMore();
    favoritesStatus.value = RxStatus.loadingMore();
    List<Future> futures = [
      userRepository
          .contacts(
              noFavorite: true,
              onUpdate: (List<ChatContact> v) {
                contacts.value = v;
                contactsStatus.value =
                    contacts.isEmpty ? RxStatus.empty() : RxStatus.success();
              })
          .then((v) => contacts.value = v),
      userRepository.favoriteContacts((List<ChatContact> v) {
        favorites.value = v;
        favoritesStatus.value =
            favorites.isEmpty ? RxStatus.empty() : RxStatus.success();
      }).then((v) => favorites.value = v)
    ];
    await Future.wait(futures);
  }

  Future<bool> addToFavorites(ChatContact contact) async {
    double? position = await userRepository.addToFavorites(contact);

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
