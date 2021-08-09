import 'package:test/domain/model/avatar.dart';
import 'package:test/domain/model/chat_item.dart';

class ChatUser {
  ChatUser(this.id, this.num, {this.avatar, this.name});

  final String id;
  final String num;
  String? name;
  Avatar? avatar;
}

class Chat {
  Chat(
    this.id,
    this.kind, {
    this.name,
    this.isHidden = false,
    this.unreadCount = 0,
    this.lastItem,
    this.members = const [],
  });

  final String id;
  final String kind;
  String? name;
  bool isHidden;
  int unreadCount;
  ChatItem? lastItem;
  List<ChatUser> members;
}
