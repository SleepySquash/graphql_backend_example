import 'package:equatable/equatable.dart';

import 'avatar.dart';

// ignore: must_be_immutable
class ChatContactUser extends Equatable {
  ChatContactUser(this.id, this.num, {this.name, this.avatar});
  final String id;
  final String num;
  String? name;
  Avatar? avatar;

  @override
  List<Object?> get props => [id, num];
}

// ignore: must_be_immutable
class ChatContact extends Equatable {
  ChatContact(this.id, this.name,
      {this.users = const [], this.dialogId, this.favoritePosition});

  final String id;
  final String name;
  List<ChatContactUser> users;
  String? dialogId;
  double? favoritePosition;

  @override
  List<Object?> get props => [id];
}
