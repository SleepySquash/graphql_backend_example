import 'package:equatable/equatable.dart';
import 'package:test/domain/model/chat_contact.dart';

import 'avatar.dart';

class MyUser {
  MyUser(
    this.id,
    this.num, {
    this.hasPassword = false,
    this.login,
    this.name,
    this.bio,
    this.avatar,
    this.unreadChatsCount = 0,
  });

  final String id;
  final String num;
  String? login;
  String? name;
  String? bio;
  Avatar? avatar;
  // List<String> emails;
  // List<String> phones;
  bool hasPassword;
  int unreadChatsCount;
}

// ignore: must_be_immutable
class User extends Equatable {
  User(
    this.id,
    this.num, {
    this.hasPassword = false,
    this.isDeleted = false,
    this.login,
    this.name,
    this.bio,
    this.avatar,
    this.mutualContactsCount = 0,
    this.contacts = const [],
  });

  final String id;
  final String num;
  String? login;
  String? name;
  String? bio;
  Avatar? avatar;
  bool hasPassword;
  bool isDeleted;
  int mutualContactsCount;
  List<ChatContact> contacts;

  @override
  List<Object> get props => [id, num];
}