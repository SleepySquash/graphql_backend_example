import 'package:flutter/material.dart';
import 'package:test/domain/model/avatar.dart';

ImageProvider drawAvatar(Avatar? avatar) {
  if (avatar != null) {
    if (avatar.big != null) {
      return NetworkImage('http://localhost/files${avatar.big}');
    } else if (avatar.medium != null) {
      return NetworkImage('http://localhost/files${avatar.medium}');
    } else if (avatar.small != null) {
      return NetworkImage('http://localhost/files${avatar.small}');
    } else if (avatar.original != null) {
      return NetworkImage('http://localhost/files${avatar.original}');
    }
  }
  return Image.asset('assets/images/bg-gapopa.png').image;
}
