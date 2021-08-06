import 'package:test/domain/model/chat_item.dart';

class Chat {
  Chat(
    this.id,
    this.kind,
    this.lastDelivery, {
    this.name,
    this.isHidden = false,
    this.unreadCount = 0,
    this.lastItem,
  });

  final String id;
  final String kind;
  String? name;
  DateTime lastDelivery;
  bool isHidden;
  int unreadCount;
  ChatItem? lastItem;
}
