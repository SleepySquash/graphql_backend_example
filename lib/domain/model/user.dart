import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:test/domain/model/chat_contact.dart';
import 'package:test/domain/model/gallery_item.dart';

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
    this.gallery = const [],
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
  List<GalleryItem> gallery;

  Map<String, String?> toJson() => {
        'id': id,
        'num': num,
        'login': login,
        'name': name,
        'bio': bio,
        'avatar': json.encode(avatar?.toJson()),
        'hasPassword': hasPassword.toString(),
        'unreadChatsCount': unreadChatsCount.toString(),
        'gallery': json.encode(gallery.map((e) => e.toJson()).toList()),
      };
  MyUser.fromJson(Map<String?, dynamic> json)
      : id = json['id'],
        num = json['num'],
        login = json['login'],
        name = json['name'],
        bio = json['bio'],
        avatar = Avatar.fromJson(jsonDecode(json['avatar'])),
        hasPassword = json['hasPassword'] == null
            ? false
            : json['hasPassword'] == 'true'
                ? true
                : false,
        unreadChatsCount = json['unreadChatsCount'] == null
            ? 0
            : int.parse(json['unreadChatsCount']),
        gallery = (jsonDecode(json['gallery']) as List)
            .map((i) => GalleryItem.fromJson(i))
            .toList();
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
    this.gallery = const [],
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
  List<GalleryItem> gallery;

  @override
  List<Object> get props => [id, num];
}
