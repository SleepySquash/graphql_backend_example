import 'attachment.dart';

abstract class ChatItem {
  const ChatItem(this.id, this.chatId, this.userId, this.at);

  final String id;
  final String chatId;
  final String userId;
  final DateTime at;
}

class ChatMemberInfo extends ChatItem {
  ChatMemberInfo(
    String id,
    String chatId,
    String userId,
    DateTime at, {
    required this.byId,
    required this.action,
  }) : super(id, chatId, userId, at);

  final String byId;
  final String action;
}

class ChatCall extends ChatItem {
  ChatCall(
    String id,
    String chatId,
    String userId,
    DateTime at,
  ) : super(id, chatId, userId, at);
}

class ChatMessage extends ChatItem {
  ChatMessage(
    String id,
    String chatId,
    String userId,
    DateTime at, {
    this.text,
    this.repliesTo,
    this.attachments = const [],
  }) : super(id, chatId, userId, at);

  final String? repliesTo;
  final String? text;
  List<Attachment> attachments;
}

class ChatForward extends ChatItem {
  ChatForward(
    String id,
    String chatId,
    String userId,
    DateTime at, {
    this.itemId,
  }) : super(id, chatId, userId, at);

  final String? itemId;
}
