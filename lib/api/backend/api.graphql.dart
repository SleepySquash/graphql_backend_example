// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart = 2.12

import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'api.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class DeleteUserName$Mutation$MyUser extends JsonSerializable
    with EquatableMixin {
  DeleteUserName$Mutation$MyUser();

  factory DeleteUserName$Mutation$MyUser.fromJson(Map<String, dynamic> json) =>
      _$DeleteUserName$Mutation$MyUserFromJson(json);

  String? name;

  @override
  List<Object?> get props => [name];
  @override
  Map<String, dynamic> toJson() => _$DeleteUserName$Mutation$MyUserToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DeleteUserName$Mutation extends JsonSerializable with EquatableMixin {
  DeleteUserName$Mutation();

  factory DeleteUserName$Mutation.fromJson(Map<String, dynamic> json) =>
      _$DeleteUserName$MutationFromJson(json);

  late DeleteUserName$Mutation$MyUser deleteUserName;

  @override
  List<Object?> get props => [deleteUserName];
  @override
  Map<String, dynamic> toJson() => _$DeleteUserName$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UpdateUserName$Mutation$MyUser extends JsonSerializable
    with EquatableMixin {
  UpdateUserName$Mutation$MyUser();

  factory UpdateUserName$Mutation$MyUser.fromJson(Map<String, dynamic> json) =>
      _$UpdateUserName$Mutation$MyUserFromJson(json);

  String? name;

  @override
  List<Object?> get props => [name];
  @override
  Map<String, dynamic> toJson() => _$UpdateUserName$Mutation$MyUserToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UpdateUserName$Mutation extends JsonSerializable with EquatableMixin {
  UpdateUserName$Mutation();

  factory UpdateUserName$Mutation.fromJson(Map<String, dynamic> json) =>
      _$UpdateUserName$MutationFromJson(json);

  late UpdateUserName$Mutation$MyUser updateUserName;

  @override
  List<Object?> get props => [updateUserName];
  @override
  Map<String, dynamic> toJson() => _$UpdateUserName$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UnfavoriteChatContact$Mutation$UnfavoriteChatContactResult$ChatContact
    extends UnfavoriteChatContact$Mutation$UnfavoriteChatContactResult
    with EquatableMixin {
  UnfavoriteChatContact$Mutation$UnfavoriteChatContactResult$ChatContact();

  factory UnfavoriteChatContact$Mutation$UnfavoriteChatContactResult$ChatContact.fromJson(
          Map<String, dynamic> json) =>
      _$UnfavoriteChatContact$Mutation$UnfavoriteChatContactResult$ChatContactFromJson(
          json);

  double? favoritePosition;

  @override
  List<Object?> get props => [favoritePosition];
  @override
  Map<String, dynamic> toJson() =>
      _$UnfavoriteChatContact$Mutation$UnfavoriteChatContactResult$ChatContactToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class UnfavoriteChatContact$Mutation$UnfavoriteChatContactResult$UnfavoriteChatContactError
    extends UnfavoriteChatContact$Mutation$UnfavoriteChatContactResult
    with EquatableMixin {
  UnfavoriteChatContact$Mutation$UnfavoriteChatContactResult$UnfavoriteChatContactError();

  factory UnfavoriteChatContact$Mutation$UnfavoriteChatContactResult$UnfavoriteChatContactError.fromJson(
          Map<String, dynamic> json) =>
      _$UnfavoriteChatContact$Mutation$UnfavoriteChatContactResult$UnfavoriteChatContactErrorFromJson(
          json);

  @JsonKey(unknownEnumValue: UnfavoriteChatContactErrorCode.artemisUnknown)
  late UnfavoriteChatContactErrorCode code;

  @override
  List<Object?> get props => [code];
  @override
  Map<String, dynamic> toJson() =>
      _$UnfavoriteChatContact$Mutation$UnfavoriteChatContactResult$UnfavoriteChatContactErrorToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class UnfavoriteChatContact$Mutation$UnfavoriteChatContactResult
    extends JsonSerializable with EquatableMixin {
  UnfavoriteChatContact$Mutation$UnfavoriteChatContactResult();

  factory UnfavoriteChatContact$Mutation$UnfavoriteChatContactResult.fromJson(
      Map<String, dynamic> json) {
    switch (json['__typename'].toString()) {
      case r'ChatContact':
        return UnfavoriteChatContact$Mutation$UnfavoriteChatContactResult$ChatContact
            .fromJson(json);
      case r'UnfavoriteChatContactError':
        return UnfavoriteChatContact$Mutation$UnfavoriteChatContactResult$UnfavoriteChatContactError
            .fromJson(json);
      default:
    }
    return _$UnfavoriteChatContact$Mutation$UnfavoriteChatContactResultFromJson(
        json);
  }

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [$$typename];
  @override
  Map<String, dynamic> toJson() {
    switch ($$typename) {
      case r'ChatContact':
        return (this
                as UnfavoriteChatContact$Mutation$UnfavoriteChatContactResult$ChatContact)
            .toJson();
      case r'UnfavoriteChatContactError':
        return (this
                as UnfavoriteChatContact$Mutation$UnfavoriteChatContactResult$UnfavoriteChatContactError)
            .toJson();
      default:
    }
    return _$UnfavoriteChatContact$Mutation$UnfavoriteChatContactResultToJson(
        this);
  }
}

@JsonSerializable(explicitToJson: true)
class UnfavoriteChatContact$Mutation extends JsonSerializable
    with EquatableMixin {
  UnfavoriteChatContact$Mutation();

  factory UnfavoriteChatContact$Mutation.fromJson(Map<String, dynamic> json) =>
      _$UnfavoriteChatContact$MutationFromJson(json);

  late UnfavoriteChatContact$Mutation$UnfavoriteChatContactResult
      unfavoriteChatContact;

  @override
  List<Object?> get props => [unfavoriteChatContact];
  @override
  Map<String, dynamic> toJson() => _$UnfavoriteChatContact$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateUser$Mutation$CreateUserResult$MyUser extends JsonSerializable
    with EquatableMixin {
  CreateUser$Mutation$CreateUserResult$MyUser();

  factory CreateUser$Mutation$CreateUserResult$MyUser.fromJson(
          Map<String, dynamic> json) =>
      _$CreateUser$Mutation$CreateUserResult$MyUserFromJson(json);

  late String id;

  late String num;

  @override
  List<Object?> get props => [id, num];
  @override
  Map<String, dynamic> toJson() =>
      _$CreateUser$Mutation$CreateUserResult$MyUserToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateUser$Mutation$CreateUserResult$Session extends JsonSerializable
    with EquatableMixin {
  CreateUser$Mutation$CreateUserResult$Session();

  factory CreateUser$Mutation$CreateUserResult$Session.fromJson(
          Map<String, dynamic> json) =>
      _$CreateUser$Mutation$CreateUserResult$SessionFromJson(json);

  late String token;

  late DateTime expireAt;

  @override
  List<Object?> get props => [token, expireAt];
  @override
  Map<String, dynamic> toJson() =>
      _$CreateUser$Mutation$CreateUserResult$SessionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateUser$Mutation$CreateUserResult extends JsonSerializable
    with EquatableMixin {
  CreateUser$Mutation$CreateUserResult();

  factory CreateUser$Mutation$CreateUserResult.fromJson(
          Map<String, dynamic> json) =>
      _$CreateUser$Mutation$CreateUserResultFromJson(json);

  late CreateUser$Mutation$CreateUserResult$MyUser user;

  late CreateUser$Mutation$CreateUserResult$Session session;

  @override
  List<Object?> get props => [user, session];
  @override
  Map<String, dynamic> toJson() =>
      _$CreateUser$Mutation$CreateUserResultToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateUser$Mutation extends JsonSerializable with EquatableMixin {
  CreateUser$Mutation();

  factory CreateUser$Mutation.fromJson(Map<String, dynamic> json) =>
      _$CreateUser$MutationFromJson(json);

  late CreateUser$Mutation$CreateUserResult createUser;

  @override
  List<Object?> get props => [createUser];
  @override
  Map<String, dynamic> toJson() => _$CreateUser$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DeleteSession$Mutation extends JsonSerializable with EquatableMixin {
  DeleteSession$Mutation();

  factory DeleteSession$Mutation.fromJson(Map<String, dynamic> json) =>
      _$DeleteSession$MutationFromJson(json);

  late bool deleteSession;

  @override
  List<Object?> get props => [deleteSession];
  @override
  Map<String, dynamic> toJson() => _$DeleteSession$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FavoriteChatContact$Mutation$FavoriteChatContactResult$ChatContact
    extends FavoriteChatContact$Mutation$FavoriteChatContactResult
    with EquatableMixin {
  FavoriteChatContact$Mutation$FavoriteChatContactResult$ChatContact();

  factory FavoriteChatContact$Mutation$FavoriteChatContactResult$ChatContact.fromJson(
          Map<String, dynamic> json) =>
      _$FavoriteChatContact$Mutation$FavoriteChatContactResult$ChatContactFromJson(
          json);

  double? favoritePosition;

  @override
  List<Object?> get props => [favoritePosition];
  @override
  Map<String, dynamic> toJson() =>
      _$FavoriteChatContact$Mutation$FavoriteChatContactResult$ChatContactToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class FavoriteChatContact$Mutation$FavoriteChatContactResult$FavoriteChatContactError
    extends FavoriteChatContact$Mutation$FavoriteChatContactResult
    with EquatableMixin {
  FavoriteChatContact$Mutation$FavoriteChatContactResult$FavoriteChatContactError();

  factory FavoriteChatContact$Mutation$FavoriteChatContactResult$FavoriteChatContactError.fromJson(
          Map<String, dynamic> json) =>
      _$FavoriteChatContact$Mutation$FavoriteChatContactResult$FavoriteChatContactErrorFromJson(
          json);

  @JsonKey(unknownEnumValue: FavoriteChatContactErrorCode.artemisUnknown)
  late FavoriteChatContactErrorCode code;

  @override
  List<Object?> get props => [code];
  @override
  Map<String, dynamic> toJson() =>
      _$FavoriteChatContact$Mutation$FavoriteChatContactResult$FavoriteChatContactErrorToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class FavoriteChatContact$Mutation$FavoriteChatContactResult
    extends JsonSerializable with EquatableMixin {
  FavoriteChatContact$Mutation$FavoriteChatContactResult();

  factory FavoriteChatContact$Mutation$FavoriteChatContactResult.fromJson(
      Map<String, dynamic> json) {
    switch (json['__typename'].toString()) {
      case r'ChatContact':
        return FavoriteChatContact$Mutation$FavoriteChatContactResult$ChatContact
            .fromJson(json);
      case r'FavoriteChatContactError':
        return FavoriteChatContact$Mutation$FavoriteChatContactResult$FavoriteChatContactError
            .fromJson(json);
      default:
    }
    return _$FavoriteChatContact$Mutation$FavoriteChatContactResultFromJson(
        json);
  }

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [$$typename];
  @override
  Map<String, dynamic> toJson() {
    switch ($$typename) {
      case r'ChatContact':
        return (this
                as FavoriteChatContact$Mutation$FavoriteChatContactResult$ChatContact)
            .toJson();
      case r'FavoriteChatContactError':
        return (this
                as FavoriteChatContact$Mutation$FavoriteChatContactResult$FavoriteChatContactError)
            .toJson();
      default:
    }
    return _$FavoriteChatContact$Mutation$FavoriteChatContactResultToJson(this);
  }
}

@JsonSerializable(explicitToJson: true)
class FavoriteChatContact$Mutation extends JsonSerializable
    with EquatableMixin {
  FavoriteChatContact$Mutation();

  factory FavoriteChatContact$Mutation.fromJson(Map<String, dynamic> json) =>
      _$FavoriteChatContact$MutationFromJson(json);

  late FavoriteChatContact$Mutation$FavoriteChatContactResult
      favoriteChatContact;

  @override
  List<Object?> get props => [favoriteChatContact];
  @override
  Map<String, dynamic> toJson() => _$FavoriteChatContact$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PostChatMessage$Mutation$PostChatMessageResult$ChatMessage$ChatItem
    extends JsonSerializable with EquatableMixin {
  PostChatMessage$Mutation$PostChatMessageResult$ChatMessage$ChatItem();

  factory PostChatMessage$Mutation$PostChatMessageResult$ChatMessage$ChatItem.fromJson(
          Map<String, dynamic> json) =>
      _$PostChatMessage$Mutation$PostChatMessageResult$ChatMessage$ChatItemFromJson(
          json);

  late String id;

  @override
  List<Object?> get props => [id];
  @override
  Map<String, dynamic> toJson() =>
      _$PostChatMessage$Mutation$PostChatMessageResult$ChatMessage$ChatItemToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class PostChatMessage$Mutation$PostChatMessageResult$ChatMessage$Attachment$ImageAttachment
    extends PostChatMessage$Mutation$PostChatMessageResult$ChatMessage$Attachment
    with EquatableMixin {
  PostChatMessage$Mutation$PostChatMessageResult$ChatMessage$Attachment$ImageAttachment();

  factory PostChatMessage$Mutation$PostChatMessageResult$ChatMessage$Attachment$ImageAttachment.fromJson(
          Map<String, dynamic> json) =>
      _$PostChatMessage$Mutation$PostChatMessageResult$ChatMessage$Attachment$ImageAttachmentFromJson(
          json);

  late String big;

  late String medium;

  late String small;

  @override
  List<Object?> get props => [big, medium, small];
  @override
  Map<String, dynamic> toJson() =>
      _$PostChatMessage$Mutation$PostChatMessageResult$ChatMessage$Attachment$ImageAttachmentToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class PostChatMessage$Mutation$PostChatMessageResult$ChatMessage$Attachment
    extends JsonSerializable with EquatableMixin {
  PostChatMessage$Mutation$PostChatMessageResult$ChatMessage$Attachment();

  factory PostChatMessage$Mutation$PostChatMessageResult$ChatMessage$Attachment.fromJson(
      Map<String, dynamic> json) {
    switch (json['__typename'].toString()) {
      case r'ImageAttachment':
        return PostChatMessage$Mutation$PostChatMessageResult$ChatMessage$Attachment$ImageAttachment
            .fromJson(json);
      default:
    }
    return _$PostChatMessage$Mutation$PostChatMessageResult$ChatMessage$AttachmentFromJson(
        json);
  }

  @JsonKey(name: '__typename')
  String? $$typename;

  late String id;

  late String original;

  late String filename;

  late int size;

  @override
  List<Object?> get props => [$$typename, id, original, filename, size];
  @override
  Map<String, dynamic> toJson() {
    switch ($$typename) {
      case r'ImageAttachment':
        return (this
                as PostChatMessage$Mutation$PostChatMessageResult$ChatMessage$Attachment$ImageAttachment)
            .toJson();
      default:
    }
    return _$PostChatMessage$Mutation$PostChatMessageResult$ChatMessage$AttachmentToJson(
        this);
  }
}

@JsonSerializable(explicitToJson: true)
class PostChatMessage$Mutation$PostChatMessageResult$ChatMessage
    extends PostChatMessage$Mutation$PostChatMessageResult with EquatableMixin {
  PostChatMessage$Mutation$PostChatMessageResult$ChatMessage();

  factory PostChatMessage$Mutation$PostChatMessageResult$ChatMessage.fromJson(
          Map<String, dynamic> json) =>
      _$PostChatMessage$Mutation$PostChatMessageResult$ChatMessageFromJson(
          json);

  late String id;

  late String chatId;

  late String authorId;

  PostChatMessage$Mutation$PostChatMessageResult$ChatMessage$ChatItem?
      repliesTo;

  String? text;

  late List<
          PostChatMessage$Mutation$PostChatMessageResult$ChatMessage$Attachment>
      attachments;

  late DateTime at;

  @override
  List<Object?> get props =>
      [id, chatId, authorId, repliesTo, text, attachments, at];
  @override
  Map<String, dynamic> toJson() =>
      _$PostChatMessage$Mutation$PostChatMessageResult$ChatMessageToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PostChatMessage$Mutation$PostChatMessageResult$PostChatMessageError
    extends PostChatMessage$Mutation$PostChatMessageResult with EquatableMixin {
  PostChatMessage$Mutation$PostChatMessageResult$PostChatMessageError();

  factory PostChatMessage$Mutation$PostChatMessageResult$PostChatMessageError.fromJson(
          Map<String, dynamic> json) =>
      _$PostChatMessage$Mutation$PostChatMessageResult$PostChatMessageErrorFromJson(
          json);

  @JsonKey(unknownEnumValue: PostChatMessageErrorCode.artemisUnknown)
  late PostChatMessageErrorCode code;

  @override
  List<Object?> get props => [code];
  @override
  Map<String, dynamic> toJson() =>
      _$PostChatMessage$Mutation$PostChatMessageResult$PostChatMessageErrorToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class PostChatMessage$Mutation$PostChatMessageResult extends JsonSerializable
    with EquatableMixin {
  PostChatMessage$Mutation$PostChatMessageResult();

  factory PostChatMessage$Mutation$PostChatMessageResult.fromJson(
      Map<String, dynamic> json) {
    switch (json['__typename'].toString()) {
      case r'ChatMessage':
        return PostChatMessage$Mutation$PostChatMessageResult$ChatMessage
            .fromJson(json);
      case r'PostChatMessageError':
        return PostChatMessage$Mutation$PostChatMessageResult$PostChatMessageError
            .fromJson(json);
      default:
    }
    return _$PostChatMessage$Mutation$PostChatMessageResultFromJson(json);
  }

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [$$typename];
  @override
  Map<String, dynamic> toJson() {
    switch ($$typename) {
      case r'ChatMessage':
        return (this
                as PostChatMessage$Mutation$PostChatMessageResult$ChatMessage)
            .toJson();
      case r'PostChatMessageError':
        return (this
                as PostChatMessage$Mutation$PostChatMessageResult$PostChatMessageError)
            .toJson();
      default:
    }
    return _$PostChatMessage$Mutation$PostChatMessageResultToJson(this);
  }
}

@JsonSerializable(explicitToJson: true)
class PostChatMessage$Mutation extends JsonSerializable with EquatableMixin {
  PostChatMessage$Mutation();

  factory PostChatMessage$Mutation.fromJson(Map<String, dynamic> json) =>
      _$PostChatMessage$MutationFromJson(json);

  late PostChatMessage$Mutation$PostChatMessageResult postChatMessage;

  @override
  List<Object?> get props => [postChatMessage];
  @override
  Map<String, dynamic> toJson() => _$PostChatMessage$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateSession$Mutation$CreateSessionResult$CreateSessionOk$Session
    extends JsonSerializable with EquatableMixin {
  CreateSession$Mutation$CreateSessionResult$CreateSessionOk$Session();

  factory CreateSession$Mutation$CreateSessionResult$CreateSessionOk$Session.fromJson(
          Map<String, dynamic> json) =>
      _$CreateSession$Mutation$CreateSessionResult$CreateSessionOk$SessionFromJson(
          json);

  late String token;

  late DateTime expireAt;

  @override
  List<Object?> get props => [token, expireAt];
  @override
  Map<String, dynamic> toJson() =>
      _$CreateSession$Mutation$CreateSessionResult$CreateSessionOk$SessionToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class CreateSession$Mutation$CreateSessionResult$CreateSessionOk$MyUser$UserAvatar$CropArea$Point
    extends JsonSerializable with EquatableMixin {
  CreateSession$Mutation$CreateSessionResult$CreateSessionOk$MyUser$UserAvatar$CropArea$Point();

  factory CreateSession$Mutation$CreateSessionResult$CreateSessionOk$MyUser$UserAvatar$CropArea$Point.fromJson(
          Map<String, dynamic> json) =>
      _$CreateSession$Mutation$CreateSessionResult$CreateSessionOk$MyUser$UserAvatar$CropArea$PointFromJson(
          json);

  late int x;

  late int y;

  @override
  List<Object?> get props => [x, y];
  @override
  Map<String, dynamic> toJson() =>
      _$CreateSession$Mutation$CreateSessionResult$CreateSessionOk$MyUser$UserAvatar$CropArea$PointToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class CreateSession$Mutation$CreateSessionResult$CreateSessionOk$MyUser$UserAvatar$CropArea
    extends JsonSerializable with EquatableMixin {
  CreateSession$Mutation$CreateSessionResult$CreateSessionOk$MyUser$UserAvatar$CropArea();

  factory CreateSession$Mutation$CreateSessionResult$CreateSessionOk$MyUser$UserAvatar$CropArea.fromJson(
          Map<String, dynamic> json) =>
      _$CreateSession$Mutation$CreateSessionResult$CreateSessionOk$MyUser$UserAvatar$CropAreaFromJson(
          json);

  late CreateSession$Mutation$CreateSessionResult$CreateSessionOk$MyUser$UserAvatar$CropArea$Point
      topLeft;

  late CreateSession$Mutation$CreateSessionResult$CreateSessionOk$MyUser$UserAvatar$CropArea$Point
      bottomRight;

  @JsonKey(unknownEnumValue: Angle.artemisUnknown)
  Angle? angle;

  @override
  List<Object?> get props => [topLeft, bottomRight, angle];
  @override
  Map<String, dynamic> toJson() =>
      _$CreateSession$Mutation$CreateSessionResult$CreateSessionOk$MyUser$UserAvatar$CropAreaToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class CreateSession$Mutation$CreateSessionResult$CreateSessionOk$MyUser$UserAvatar
    extends JsonSerializable with EquatableMixin {
  CreateSession$Mutation$CreateSessionResult$CreateSessionOk$MyUser$UserAvatar();

  factory CreateSession$Mutation$CreateSessionResult$CreateSessionOk$MyUser$UserAvatar.fromJson(
          Map<String, dynamic> json) =>
      _$CreateSession$Mutation$CreateSessionResult$CreateSessionOk$MyUser$UserAvatarFromJson(
          json);

  CreateSession$Mutation$CreateSessionResult$CreateSessionOk$MyUser$UserAvatar$CropArea?
      crop;

  late String original;

  late String full;

  late String big;

  late String medium;

  late String small;

  @override
  List<Object?> get props => [crop, original, full, big, medium, small];
  @override
  Map<String, dynamic> toJson() =>
      _$CreateSession$Mutation$CreateSessionResult$CreateSessionOk$MyUser$UserAvatarToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class CreateSession$Mutation$CreateSessionResult$CreateSessionOk$MyUser
    extends JsonSerializable with EquatableMixin {
  CreateSession$Mutation$CreateSessionResult$CreateSessionOk$MyUser();

  factory CreateSession$Mutation$CreateSessionResult$CreateSessionOk$MyUser.fromJson(
          Map<String, dynamic> json) =>
      _$CreateSession$Mutation$CreateSessionResult$CreateSessionOk$MyUserFromJson(
          json);

  late String id;

  late String num;

  String? login;

  String? name;

  String? bio;

  CreateSession$Mutation$CreateSessionResult$CreateSessionOk$MyUser$UserAvatar?
      avatar;

  @override
  List<Object?> get props => [id, num, login, name, bio, avatar];
  @override
  Map<String, dynamic> toJson() =>
      _$CreateSession$Mutation$CreateSessionResult$CreateSessionOk$MyUserToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class CreateSession$Mutation$CreateSessionResult$CreateSessionOk
    extends CreateSession$Mutation$CreateSessionResult with EquatableMixin {
  CreateSession$Mutation$CreateSessionResult$CreateSessionOk();

  factory CreateSession$Mutation$CreateSessionResult$CreateSessionOk.fromJson(
          Map<String, dynamic> json) =>
      _$CreateSession$Mutation$CreateSessionResult$CreateSessionOkFromJson(
          json);

  late CreateSession$Mutation$CreateSessionResult$CreateSessionOk$Session
      session;

  late CreateSession$Mutation$CreateSessionResult$CreateSessionOk$MyUser user;

  @override
  List<Object?> get props => [session, user];
  @override
  Map<String, dynamic> toJson() =>
      _$CreateSession$Mutation$CreateSessionResult$CreateSessionOkToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateSession$Mutation$CreateSessionResult$CreateSessionError
    extends CreateSession$Mutation$CreateSessionResult with EquatableMixin {
  CreateSession$Mutation$CreateSessionResult$CreateSessionError();

  factory CreateSession$Mutation$CreateSessionResult$CreateSessionError.fromJson(
          Map<String, dynamic> json) =>
      _$CreateSession$Mutation$CreateSessionResult$CreateSessionErrorFromJson(
          json);

  @JsonKey(unknownEnumValue: CreateSessionErrorCode.artemisUnknown)
  late CreateSessionErrorCode code;

  @override
  List<Object?> get props => [code];
  @override
  Map<String, dynamic> toJson() =>
      _$CreateSession$Mutation$CreateSessionResult$CreateSessionErrorToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class CreateSession$Mutation$CreateSessionResult extends JsonSerializable
    with EquatableMixin {
  CreateSession$Mutation$CreateSessionResult();

  factory CreateSession$Mutation$CreateSessionResult.fromJson(
      Map<String, dynamic> json) {
    switch (json['__typename'].toString()) {
      case r'CreateSessionOk':
        return CreateSession$Mutation$CreateSessionResult$CreateSessionOk
            .fromJson(json);
      case r'CreateSessionError':
        return CreateSession$Mutation$CreateSessionResult$CreateSessionError
            .fromJson(json);
      default:
    }
    return _$CreateSession$Mutation$CreateSessionResultFromJson(json);
  }

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [$$typename];
  @override
  Map<String, dynamic> toJson() {
    switch ($$typename) {
      case r'CreateSessionOk':
        return (this
                as CreateSession$Mutation$CreateSessionResult$CreateSessionOk)
            .toJson();
      case r'CreateSessionError':
        return (this
                as CreateSession$Mutation$CreateSessionResult$CreateSessionError)
            .toJson();
      default:
    }
    return _$CreateSession$Mutation$CreateSessionResultToJson(this);
  }
}

@JsonSerializable(explicitToJson: true)
class CreateSession$Mutation extends JsonSerializable with EquatableMixin {
  CreateSession$Mutation();

  factory CreateSession$Mutation.fromJson(Map<String, dynamic> json) =>
      _$CreateSession$MutationFromJson(json);

  late CreateSession$Mutation$CreateSessionResult createSession;

  @override
  List<Object?> get props => [createSession];
  @override
  Map<String, dynamic> toJson() => _$CreateSession$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DeleteChatContact$Mutation extends JsonSerializable with EquatableMixin {
  DeleteChatContact$Mutation();

  factory DeleteChatContact$Mutation.fromJson(Map<String, dynamic> json) =>
      _$DeleteChatContact$MutationFromJson(json);

  late bool deleteChatContact;

  @override
  List<Object?> get props => [deleteChatContact];
  @override
  Map<String, dynamic> toJson() => _$DeleteChatContact$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateChatContact$Mutation$CreateChatContactResult$ChatContact$ChatUser$User$UserAvatar
    extends JsonSerializable with EquatableMixin {
  CreateChatContact$Mutation$CreateChatContactResult$ChatContact$ChatUser$User$UserAvatar();

  factory CreateChatContact$Mutation$CreateChatContactResult$ChatContact$ChatUser$User$UserAvatar.fromJson(
          Map<String, dynamic> json) =>
      _$CreateChatContact$Mutation$CreateChatContactResult$ChatContact$ChatUser$User$UserAvatarFromJson(
          json);

  late String big;

  @override
  List<Object?> get props => [big];
  @override
  Map<String, dynamic> toJson() =>
      _$CreateChatContact$Mutation$CreateChatContactResult$ChatContact$ChatUser$User$UserAvatarToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class CreateChatContact$Mutation$CreateChatContactResult$ChatContact$ChatUser$User
    extends JsonSerializable with EquatableMixin {
  CreateChatContact$Mutation$CreateChatContactResult$ChatContact$ChatUser$User();

  factory CreateChatContact$Mutation$CreateChatContactResult$ChatContact$ChatUser$User.fromJson(
          Map<String, dynamic> json) =>
      _$CreateChatContact$Mutation$CreateChatContactResult$ChatContact$ChatUser$UserFromJson(
          json);

  late String id;

  late String num;

  String? name;

  CreateChatContact$Mutation$CreateChatContactResult$ChatContact$ChatUser$User$UserAvatar?
      avatar;

  @override
  List<Object?> get props => [id, num, name, avatar];
  @override
  Map<String, dynamic> toJson() =>
      _$CreateChatContact$Mutation$CreateChatContactResult$ChatContact$ChatUser$UserToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class CreateChatContact$Mutation$CreateChatContactResult$ChatContact$ChatUser
    extends JsonSerializable with EquatableMixin {
  CreateChatContact$Mutation$CreateChatContactResult$ChatContact$ChatUser();

  factory CreateChatContact$Mutation$CreateChatContactResult$ChatContact$ChatUser.fromJson(
          Map<String, dynamic> json) =>
      _$CreateChatContact$Mutation$CreateChatContactResult$ChatContact$ChatUserFromJson(
          json);

  late String id;

  late CreateChatContact$Mutation$CreateChatContactResult$ChatContact$ChatUser$User
      user;

  @override
  List<Object?> get props => [id, user];
  @override
  Map<String, dynamic> toJson() =>
      _$CreateChatContact$Mutation$CreateChatContactResult$ChatContact$ChatUserToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class CreateChatContact$Mutation$CreateChatContactResult$ChatContact
    extends CreateChatContact$Mutation$CreateChatContactResult
    with EquatableMixin {
  CreateChatContact$Mutation$CreateChatContactResult$ChatContact();

  factory CreateChatContact$Mutation$CreateChatContactResult$ChatContact.fromJson(
          Map<String, dynamic> json) =>
      _$CreateChatContact$Mutation$CreateChatContactResult$ChatContactFromJson(
          json);

  late String id;

  late String name;

  late List<
          CreateChatContact$Mutation$CreateChatContactResult$ChatContact$ChatUser>
      chatUsers;

  @override
  List<Object?> get props => [id, name, chatUsers];
  @override
  Map<String, dynamic> toJson() =>
      _$CreateChatContact$Mutation$CreateChatContactResult$ChatContactToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class CreateChatContact$Mutation$CreateChatContactResult$CreateChatContactError
    extends CreateChatContact$Mutation$CreateChatContactResult
    with EquatableMixin {
  CreateChatContact$Mutation$CreateChatContactResult$CreateChatContactError();

  factory CreateChatContact$Mutation$CreateChatContactResult$CreateChatContactError.fromJson(
          Map<String, dynamic> json) =>
      _$CreateChatContact$Mutation$CreateChatContactResult$CreateChatContactErrorFromJson(
          json);

  @JsonKey(unknownEnumValue: CreateChatContactErrorCode.artemisUnknown)
  late CreateChatContactErrorCode code;

  @override
  List<Object?> get props => [code];
  @override
  Map<String, dynamic> toJson() =>
      _$CreateChatContact$Mutation$CreateChatContactResult$CreateChatContactErrorToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class CreateChatContact$Mutation$CreateChatContactResult
    extends JsonSerializable with EquatableMixin {
  CreateChatContact$Mutation$CreateChatContactResult();

  factory CreateChatContact$Mutation$CreateChatContactResult.fromJson(
      Map<String, dynamic> json) {
    switch (json['__typename'].toString()) {
      case r'ChatContact':
        return CreateChatContact$Mutation$CreateChatContactResult$ChatContact
            .fromJson(json);
      case r'CreateChatContactError':
        return CreateChatContact$Mutation$CreateChatContactResult$CreateChatContactError
            .fromJson(json);
      default:
    }
    return _$CreateChatContact$Mutation$CreateChatContactResultFromJson(json);
  }

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [$$typename];
  @override
  Map<String, dynamic> toJson() {
    switch ($$typename) {
      case r'ChatContact':
        return (this
                as CreateChatContact$Mutation$CreateChatContactResult$ChatContact)
            .toJson();
      case r'CreateChatContactError':
        return (this
                as CreateChatContact$Mutation$CreateChatContactResult$CreateChatContactError)
            .toJson();
      default:
    }
    return _$CreateChatContact$Mutation$CreateChatContactResultToJson(this);
  }
}

@JsonSerializable(explicitToJson: true)
class CreateChatContact$Mutation extends JsonSerializable with EquatableMixin {
  CreateChatContact$Mutation();

  factory CreateChatContact$Mutation.fromJson(Map<String, dynamic> json) =>
      _$CreateChatContact$MutationFromJson(json);

  late CreateChatContact$Mutation$CreateChatContactResult createChatContact;

  @override
  List<Object?> get props => [createChatContact];
  @override
  Map<String, dynamic> toJson() => _$CreateChatContact$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ChatContactRecord extends JsonSerializable with EquatableMixin {
  ChatContactRecord({this.userId, this.email, this.phone});

  factory ChatContactRecord.fromJson(Map<String, dynamic> json) =>
      _$ChatContactRecordFromJson(json);

  String? userId;

  String? email;

  String? phone;

  @override
  List<Object?> get props => [userId, email, phone];
  @override
  Map<String, dynamic> toJson() => _$ChatContactRecordToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DeleteUserBio$Mutation$MyUser extends JsonSerializable
    with EquatableMixin {
  DeleteUserBio$Mutation$MyUser();

  factory DeleteUserBio$Mutation$MyUser.fromJson(Map<String, dynamic> json) =>
      _$DeleteUserBio$Mutation$MyUserFromJson(json);

  String? bio;

  @override
  List<Object?> get props => [bio];
  @override
  Map<String, dynamic> toJson() => _$DeleteUserBio$Mutation$MyUserToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DeleteUserBio$Mutation extends JsonSerializable with EquatableMixin {
  DeleteUserBio$Mutation();

  factory DeleteUserBio$Mutation.fromJson(Map<String, dynamic> json) =>
      _$DeleteUserBio$MutationFromJson(json);

  late DeleteUserBio$Mutation$MyUser deleteUserBio;

  @override
  List<Object?> get props => [deleteUserBio];
  @override
  Map<String, dynamic> toJson() => _$DeleteUserBio$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UpdateUserBio$Mutation$MyUser extends JsonSerializable
    with EquatableMixin {
  UpdateUserBio$Mutation$MyUser();

  factory UpdateUserBio$Mutation$MyUser.fromJson(Map<String, dynamic> json) =>
      _$UpdateUserBio$Mutation$MyUserFromJson(json);

  String? bio;

  @override
  List<Object?> get props => [bio];
  @override
  Map<String, dynamic> toJson() => _$UpdateUserBio$Mutation$MyUserToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UpdateUserBio$Mutation extends JsonSerializable with EquatableMixin {
  UpdateUserBio$Mutation();

  factory UpdateUserBio$Mutation.fromJson(Map<String, dynamic> json) =>
      _$UpdateUserBio$MutationFromJson(json);

  late UpdateUserBio$Mutation$MyUser updateUserBio;

  @override
  List<Object?> get props => [updateUserBio];
  @override
  Map<String, dynamic> toJson() => _$UpdateUserBio$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ChatContacts$Query$ChatContactConnection$ChatContact$ChatUser$User$UserAvatar
    extends JsonSerializable with EquatableMixin {
  ChatContacts$Query$ChatContactConnection$ChatContact$ChatUser$User$UserAvatar();

  factory ChatContacts$Query$ChatContactConnection$ChatContact$ChatUser$User$UserAvatar.fromJson(
          Map<String, dynamic> json) =>
      _$ChatContacts$Query$ChatContactConnection$ChatContact$ChatUser$User$UserAvatarFromJson(
          json);

  late String big;

  @override
  List<Object?> get props => [big];
  @override
  Map<String, dynamic> toJson() =>
      _$ChatContacts$Query$ChatContactConnection$ChatContact$ChatUser$User$UserAvatarToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class ChatContacts$Query$ChatContactConnection$ChatContact$ChatUser$User
    extends JsonSerializable with EquatableMixin {
  ChatContacts$Query$ChatContactConnection$ChatContact$ChatUser$User();

  factory ChatContacts$Query$ChatContactConnection$ChatContact$ChatUser$User.fromJson(
          Map<String, dynamic> json) =>
      _$ChatContacts$Query$ChatContactConnection$ChatContact$ChatUser$UserFromJson(
          json);

  late String id;

  late String num;

  String? name;

  ChatContacts$Query$ChatContactConnection$ChatContact$ChatUser$User$UserAvatar?
      avatar;

  @override
  List<Object?> get props => [id, num, name, avatar];
  @override
  Map<String, dynamic> toJson() =>
      _$ChatContacts$Query$ChatContactConnection$ChatContact$ChatUser$UserToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class ChatContacts$Query$ChatContactConnection$ChatContact$ChatUser
    extends JsonSerializable with EquatableMixin {
  ChatContacts$Query$ChatContactConnection$ChatContact$ChatUser();

  factory ChatContacts$Query$ChatContactConnection$ChatContact$ChatUser.fromJson(
          Map<String, dynamic> json) =>
      _$ChatContacts$Query$ChatContactConnection$ChatContact$ChatUserFromJson(
          json);

  late String id;

  late ChatContacts$Query$ChatContactConnection$ChatContact$ChatUser$User user;

  @override
  List<Object?> get props => [id, user];
  @override
  Map<String, dynamic> toJson() =>
      _$ChatContacts$Query$ChatContactConnection$ChatContact$ChatUserToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class ChatContacts$Query$ChatContactConnection$ChatContact
    extends JsonSerializable with EquatableMixin {
  ChatContacts$Query$ChatContactConnection$ChatContact();

  factory ChatContacts$Query$ChatContactConnection$ChatContact.fromJson(
          Map<String, dynamic> json) =>
      _$ChatContacts$Query$ChatContactConnection$ChatContactFromJson(json);

  late String id;

  late String name;

  late List<ChatContacts$Query$ChatContactConnection$ChatContact$ChatUser>
      chatUsers;

  double? favoritePosition;

  @override
  List<Object?> get props => [id, name, chatUsers, favoritePosition];
  @override
  Map<String, dynamic> toJson() =>
      _$ChatContacts$Query$ChatContactConnection$ChatContactToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ChatContacts$Query$ChatContactConnection extends JsonSerializable
    with EquatableMixin {
  ChatContacts$Query$ChatContactConnection();

  factory ChatContacts$Query$ChatContactConnection.fromJson(
          Map<String, dynamic> json) =>
      _$ChatContacts$Query$ChatContactConnectionFromJson(json);

  late List<ChatContacts$Query$ChatContactConnection$ChatContact> nodes;

  @override
  List<Object?> get props => [nodes];
  @override
  Map<String, dynamic> toJson() =>
      _$ChatContacts$Query$ChatContactConnectionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ChatContacts$Query extends JsonSerializable with EquatableMixin {
  ChatContacts$Query();

  factory ChatContacts$Query.fromJson(Map<String, dynamic> json) =>
      _$ChatContacts$QueryFromJson(json);

  late ChatContacts$Query$ChatContactConnection chatContacts;

  @override
  List<Object?> get props => [chatContacts];
  @override
  Map<String, dynamic> toJson() => _$ChatContacts$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UpdateUserLogin$Mutation$UpdateUserLoginResult$MyUser
    extends UpdateUserLogin$Mutation$UpdateUserLoginResult with EquatableMixin {
  UpdateUserLogin$Mutation$UpdateUserLoginResult$MyUser();

  factory UpdateUserLogin$Mutation$UpdateUserLoginResult$MyUser.fromJson(
          Map<String, dynamic> json) =>
      _$UpdateUserLogin$Mutation$UpdateUserLoginResult$MyUserFromJson(json);

  String? login;

  @override
  List<Object?> get props => [login];
  @override
  Map<String, dynamic> toJson() =>
      _$UpdateUserLogin$Mutation$UpdateUserLoginResult$MyUserToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UpdateUserLogin$Mutation$UpdateUserLoginResult$UpdateUserLoginError
    extends UpdateUserLogin$Mutation$UpdateUserLoginResult with EquatableMixin {
  UpdateUserLogin$Mutation$UpdateUserLoginResult$UpdateUserLoginError();

  factory UpdateUserLogin$Mutation$UpdateUserLoginResult$UpdateUserLoginError.fromJson(
          Map<String, dynamic> json) =>
      _$UpdateUserLogin$Mutation$UpdateUserLoginResult$UpdateUserLoginErrorFromJson(
          json);

  @JsonKey(unknownEnumValue: UpdateUserLoginErrorCode.artemisUnknown)
  late UpdateUserLoginErrorCode code;

  @override
  List<Object?> get props => [code];
  @override
  Map<String, dynamic> toJson() =>
      _$UpdateUserLogin$Mutation$UpdateUserLoginResult$UpdateUserLoginErrorToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class UpdateUserLogin$Mutation$UpdateUserLoginResult extends JsonSerializable
    with EquatableMixin {
  UpdateUserLogin$Mutation$UpdateUserLoginResult();

  factory UpdateUserLogin$Mutation$UpdateUserLoginResult.fromJson(
      Map<String, dynamic> json) {
    switch (json['__typename'].toString()) {
      case r'MyUser':
        return UpdateUserLogin$Mutation$UpdateUserLoginResult$MyUser.fromJson(
            json);
      case r'UpdateUserLoginError':
        return UpdateUserLogin$Mutation$UpdateUserLoginResult$UpdateUserLoginError
            .fromJson(json);
      default:
    }
    return _$UpdateUserLogin$Mutation$UpdateUserLoginResultFromJson(json);
  }

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [$$typename];
  @override
  Map<String, dynamic> toJson() {
    switch ($$typename) {
      case r'MyUser':
        return (this as UpdateUserLogin$Mutation$UpdateUserLoginResult$MyUser)
            .toJson();
      case r'UpdateUserLoginError':
        return (this
                as UpdateUserLogin$Mutation$UpdateUserLoginResult$UpdateUserLoginError)
            .toJson();
      default:
    }
    return _$UpdateUserLogin$Mutation$UpdateUserLoginResultToJson(this);
  }
}

@JsonSerializable(explicitToJson: true)
class UpdateUserLogin$Mutation extends JsonSerializable with EquatableMixin {
  UpdateUserLogin$Mutation();

  factory UpdateUserLogin$Mutation.fromJson(Map<String, dynamic> json) =>
      _$UpdateUserLogin$MutationFromJson(json);

  late UpdateUserLogin$Mutation$UpdateUserLoginResult updateUserLogin;

  @override
  List<Object?> get props => [updateUserLogin];
  @override
  Map<String, dynamic> toJson() => _$UpdateUserLogin$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Messages$Query$Chat$ChatItemConnection$ChatItem$ChatMemberInfo
    extends Messages$Query$Chat$ChatItemConnection$ChatItem
    with EquatableMixin {
  Messages$Query$Chat$ChatItemConnection$ChatItem$ChatMemberInfo();

  factory Messages$Query$Chat$ChatItemConnection$ChatItem$ChatMemberInfo.fromJson(
          Map<String, dynamic> json) =>
      _$Messages$Query$Chat$ChatItemConnection$ChatItem$ChatMemberInfoFromJson(
          json);

  late String byId;

  @JsonKey(unknownEnumValue: ChatMemberInfoAction.artemisUnknown)
  late ChatMemberInfoAction action;

  @override
  List<Object?> get props => [byId, action];
  @override
  Map<String, dynamic> toJson() =>
      _$Messages$Query$Chat$ChatItemConnection$ChatItem$ChatMemberInfoToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class Messages$Query$Chat$ChatItemConnection$ChatItem$ChatMessage$ChatItem
    extends JsonSerializable with EquatableMixin {
  Messages$Query$Chat$ChatItemConnection$ChatItem$ChatMessage$ChatItem();

  factory Messages$Query$Chat$ChatItemConnection$ChatItem$ChatMessage$ChatItem.fromJson(
          Map<String, dynamic> json) =>
      _$Messages$Query$Chat$ChatItemConnection$ChatItem$ChatMessage$ChatItemFromJson(
          json);

  late String id;

  @override
  List<Object?> get props => [id];
  @override
  Map<String, dynamic> toJson() =>
      _$Messages$Query$Chat$ChatItemConnection$ChatItem$ChatMessage$ChatItemToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class Messages$Query$Chat$ChatItemConnection$ChatItem$ChatMessage
    extends Messages$Query$Chat$ChatItemConnection$ChatItem
    with EquatableMixin {
  Messages$Query$Chat$ChatItemConnection$ChatItem$ChatMessage();

  factory Messages$Query$Chat$ChatItemConnection$ChatItem$ChatMessage.fromJson(
          Map<String, dynamic> json) =>
      _$Messages$Query$Chat$ChatItemConnection$ChatItem$ChatMessageFromJson(
          json);

  Messages$Query$Chat$ChatItemConnection$ChatItem$ChatMessage$ChatItem?
      repliesTo;

  String? text;

  @override
  List<Object?> get props => [repliesTo, text];
  @override
  Map<String, dynamic> toJson() =>
      _$Messages$Query$Chat$ChatItemConnection$ChatItem$ChatMessageToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Messages$Query$Chat$ChatItemConnection$ChatItem$ChatForward$ChatItem
    extends JsonSerializable with EquatableMixin {
  Messages$Query$Chat$ChatItemConnection$ChatItem$ChatForward$ChatItem();

  factory Messages$Query$Chat$ChatItemConnection$ChatItem$ChatForward$ChatItem.fromJson(
          Map<String, dynamic> json) =>
      _$Messages$Query$Chat$ChatItemConnection$ChatItem$ChatForward$ChatItemFromJson(
          json);

  late String id;

  @override
  List<Object?> get props => [id];
  @override
  Map<String, dynamic> toJson() =>
      _$Messages$Query$Chat$ChatItemConnection$ChatItem$ChatForward$ChatItemToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class Messages$Query$Chat$ChatItemConnection$ChatItem$ChatForward
    extends Messages$Query$Chat$ChatItemConnection$ChatItem
    with EquatableMixin {
  Messages$Query$Chat$ChatItemConnection$ChatItem$ChatForward();

  factory Messages$Query$Chat$ChatItemConnection$ChatItem$ChatForward.fromJson(
          Map<String, dynamic> json) =>
      _$Messages$Query$Chat$ChatItemConnection$ChatItem$ChatForwardFromJson(
          json);

  late Messages$Query$Chat$ChatItemConnection$ChatItem$ChatForward$ChatItem
      item;

  @override
  List<Object?> get props => [item];
  @override
  Map<String, dynamic> toJson() =>
      _$Messages$Query$Chat$ChatItemConnection$ChatItem$ChatForwardToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Messages$Query$Chat$ChatItemConnection$ChatItem extends JsonSerializable
    with EquatableMixin {
  Messages$Query$Chat$ChatItemConnection$ChatItem();

  factory Messages$Query$Chat$ChatItemConnection$ChatItem.fromJson(
      Map<String, dynamic> json) {
    switch (json['__typename'].toString()) {
      case r'ChatMemberInfo':
        return Messages$Query$Chat$ChatItemConnection$ChatItem$ChatMemberInfo
            .fromJson(json);
      case r'ChatMessage':
        return Messages$Query$Chat$ChatItemConnection$ChatItem$ChatMessage
            .fromJson(json);
      case r'ChatForward':
        return Messages$Query$Chat$ChatItemConnection$ChatItem$ChatForward
            .fromJson(json);
      default:
    }
    return _$Messages$Query$Chat$ChatItemConnection$ChatItemFromJson(json);
  }

  @JsonKey(name: '__typename')
  String? $$typename;

  late String id;

  late String chatId;

  late String authorId;

  late DateTime at;

  @override
  List<Object?> get props => [$$typename, id, chatId, authorId, at];
  @override
  Map<String, dynamic> toJson() {
    switch ($$typename) {
      case r'ChatMemberInfo':
        return (this
                as Messages$Query$Chat$ChatItemConnection$ChatItem$ChatMemberInfo)
            .toJson();
      case r'ChatMessage':
        return (this
                as Messages$Query$Chat$ChatItemConnection$ChatItem$ChatMessage)
            .toJson();
      case r'ChatForward':
        return (this
                as Messages$Query$Chat$ChatItemConnection$ChatItem$ChatForward)
            .toJson();
      default:
    }
    return _$Messages$Query$Chat$ChatItemConnection$ChatItemToJson(this);
  }
}

@JsonSerializable(explicitToJson: true)
class Messages$Query$Chat$ChatItemConnection extends JsonSerializable
    with EquatableMixin {
  Messages$Query$Chat$ChatItemConnection();

  factory Messages$Query$Chat$ChatItemConnection.fromJson(
          Map<String, dynamic> json) =>
      _$Messages$Query$Chat$ChatItemConnectionFromJson(json);

  late List<Messages$Query$Chat$ChatItemConnection$ChatItem> nodes;

  @override
  List<Object?> get props => [nodes];
  @override
  Map<String, dynamic> toJson() =>
      _$Messages$Query$Chat$ChatItemConnectionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Messages$Query$Chat extends JsonSerializable with EquatableMixin {
  Messages$Query$Chat();

  factory Messages$Query$Chat.fromJson(Map<String, dynamic> json) =>
      _$Messages$Query$ChatFromJson(json);

  late Messages$Query$Chat$ChatItemConnection items;

  @override
  List<Object?> get props => [items];
  @override
  Map<String, dynamic> toJson() => _$Messages$Query$ChatToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Messages$Query extends JsonSerializable with EquatableMixin {
  Messages$Query();

  factory Messages$Query.fromJson(Map<String, dynamic> json) =>
      _$Messages$QueryFromJson(json);

  Messages$Query$Chat? chat;

  @override
  List<Object?> get props => [chat];
  @override
  Map<String, dynamic> toJson() => _$Messages$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class User$Query$User$UserAvatar$CropArea$Point extends JsonSerializable
    with EquatableMixin {
  User$Query$User$UserAvatar$CropArea$Point();

  factory User$Query$User$UserAvatar$CropArea$Point.fromJson(
          Map<String, dynamic> json) =>
      _$User$Query$User$UserAvatar$CropArea$PointFromJson(json);

  late int x;

  late int y;

  @override
  List<Object?> get props => [x, y];
  @override
  Map<String, dynamic> toJson() =>
      _$User$Query$User$UserAvatar$CropArea$PointToJson(this);
}

@JsonSerializable(explicitToJson: true)
class User$Query$User$UserAvatar$CropArea extends JsonSerializable
    with EquatableMixin {
  User$Query$User$UserAvatar$CropArea();

  factory User$Query$User$UserAvatar$CropArea.fromJson(
          Map<String, dynamic> json) =>
      _$User$Query$User$UserAvatar$CropAreaFromJson(json);

  late User$Query$User$UserAvatar$CropArea$Point topLeft;

  late User$Query$User$UserAvatar$CropArea$Point bottomRight;

  @JsonKey(unknownEnumValue: Angle.artemisUnknown)
  Angle? angle;

  @override
  List<Object?> get props => [topLeft, bottomRight, angle];
  @override
  Map<String, dynamic> toJson() =>
      _$User$Query$User$UserAvatar$CropAreaToJson(this);
}

@JsonSerializable(explicitToJson: true)
class User$Query$User$UserAvatar extends JsonSerializable with EquatableMixin {
  User$Query$User$UserAvatar();

  factory User$Query$User$UserAvatar.fromJson(Map<String, dynamic> json) =>
      _$User$Query$User$UserAvatarFromJson(json);

  User$Query$User$UserAvatar$CropArea? crop;

  late String original;

  late String big;

  @override
  List<Object?> get props => [crop, original, big];
  @override
  Map<String, dynamic> toJson() => _$User$Query$User$UserAvatarToJson(this);
}

@JsonSerializable(explicitToJson: true)
class User$Query$User$ChatContact$ChatUser$Chat extends JsonSerializable
    with EquatableMixin {
  User$Query$User$ChatContact$ChatUser$Chat();

  factory User$Query$User$ChatContact$ChatUser$Chat.fromJson(
          Map<String, dynamic> json) =>
      _$User$Query$User$ChatContact$ChatUser$ChatFromJson(json);

  late String id;

  @override
  List<Object?> get props => [id];
  @override
  Map<String, dynamic> toJson() =>
      _$User$Query$User$ChatContact$ChatUser$ChatToJson(this);
}

@JsonSerializable(explicitToJson: true)
class User$Query$User$ChatContact$ChatUser extends JsonSerializable
    with EquatableMixin {
  User$Query$User$ChatContact$ChatUser();

  factory User$Query$User$ChatContact$ChatUser.fromJson(
          Map<String, dynamic> json) =>
      _$User$Query$User$ChatContact$ChatUserFromJson(json);

  User$Query$User$ChatContact$ChatUser$Chat? dialog;

  @override
  List<Object?> get props => [dialog];
  @override
  Map<String, dynamic> toJson() =>
      _$User$Query$User$ChatContact$ChatUserToJson(this);
}

@JsonSerializable(explicitToJson: true)
class User$Query$User$ChatContact extends JsonSerializable with EquatableMixin {
  User$Query$User$ChatContact();

  factory User$Query$User$ChatContact.fromJson(Map<String, dynamic> json) =>
      _$User$Query$User$ChatContactFromJson(json);

  late String id;

  late String name;

  late List<User$Query$User$ChatContact$ChatUser> chatUsers;

  double? favoritePosition;

  @override
  List<Object?> get props => [id, name, chatUsers, favoritePosition];
  @override
  Map<String, dynamic> toJson() => _$User$Query$User$ChatContactToJson(this);
}

@JsonSerializable(explicitToJson: true)
class User$Query$User extends JsonSerializable with EquatableMixin {
  User$Query$User();

  factory User$Query$User.fromJson(Map<String, dynamic> json) =>
      _$User$Query$UserFromJson(json);

  late String id;

  late String num;

  String? name;

  String? bio;

  User$Query$User$UserAvatar? avatar;

  late int mutualContactsCount;

  late bool isDeleted;

  late List<User$Query$User$ChatContact> contacts;

  @override
  List<Object?> get props =>
      [id, num, name, bio, avatar, mutualContactsCount, isDeleted, contacts];
  @override
  Map<String, dynamic> toJson() => _$User$Query$UserToJson(this);
}

@JsonSerializable(explicitToJson: true)
class User$Query extends JsonSerializable with EquatableMixin {
  User$Query();

  factory User$Query.fromJson(Map<String, dynamic> json) =>
      _$User$QueryFromJson(json);

  User$Query$User? user;

  @override
  List<Object?> get props => [user];
  @override
  Map<String, dynamic> toJson() => _$User$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MyUser$Query$MyUser$UserAvatar$CropArea$Point extends JsonSerializable
    with EquatableMixin {
  MyUser$Query$MyUser$UserAvatar$CropArea$Point();

  factory MyUser$Query$MyUser$UserAvatar$CropArea$Point.fromJson(
          Map<String, dynamic> json) =>
      _$MyUser$Query$MyUser$UserAvatar$CropArea$PointFromJson(json);

  late int x;

  late int y;

  @override
  List<Object?> get props => [x, y];
  @override
  Map<String, dynamic> toJson() =>
      _$MyUser$Query$MyUser$UserAvatar$CropArea$PointToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MyUser$Query$MyUser$UserAvatar$CropArea extends JsonSerializable
    with EquatableMixin {
  MyUser$Query$MyUser$UserAvatar$CropArea();

  factory MyUser$Query$MyUser$UserAvatar$CropArea.fromJson(
          Map<String, dynamic> json) =>
      _$MyUser$Query$MyUser$UserAvatar$CropAreaFromJson(json);

  late MyUser$Query$MyUser$UserAvatar$CropArea$Point topLeft;

  late MyUser$Query$MyUser$UserAvatar$CropArea$Point bottomRight;

  @JsonKey(unknownEnumValue: Angle.artemisUnknown)
  Angle? angle;

  @override
  List<Object?> get props => [topLeft, bottomRight, angle];
  @override
  Map<String, dynamic> toJson() =>
      _$MyUser$Query$MyUser$UserAvatar$CropAreaToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MyUser$Query$MyUser$UserAvatar extends JsonSerializable
    with EquatableMixin {
  MyUser$Query$MyUser$UserAvatar();

  factory MyUser$Query$MyUser$UserAvatar.fromJson(Map<String, dynamic> json) =>
      _$MyUser$Query$MyUser$UserAvatarFromJson(json);

  MyUser$Query$MyUser$UserAvatar$CropArea? crop;

  late String original;

  late String full;

  late String big;

  late String medium;

  late String small;

  @override
  List<Object?> get props => [crop, original, full, big, medium, small];
  @override
  Map<String, dynamic> toJson() => _$MyUser$Query$MyUser$UserAvatarToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MyUser$Query$MyUser extends JsonSerializable with EquatableMixin {
  MyUser$Query$MyUser();

  factory MyUser$Query$MyUser.fromJson(Map<String, dynamic> json) =>
      _$MyUser$Query$MyUserFromJson(json);

  late String id;

  late String num;

  String? login;

  String? name;

  String? bio;

  late bool hasPassword;

  MyUser$Query$MyUser$UserAvatar? avatar;

  @override
  List<Object?> get props => [id, num, login, name, bio, hasPassword, avatar];
  @override
  Map<String, dynamic> toJson() => _$MyUser$Query$MyUserToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MyUser$Query extends JsonSerializable with EquatableMixin {
  MyUser$Query();

  factory MyUser$Query.fromJson(Map<String, dynamic> json) =>
      _$MyUser$QueryFromJson(json);

  MyUser$Query$MyUser? myUser;

  @override
  List<Object?> get props => [myUser];
  @override
  Map<String, dynamic> toJson() => _$MyUser$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FavoriteChatContacts$Query$ChatContactConnection$ChatContact$ChatUser$User$UserAvatar
    extends JsonSerializable with EquatableMixin {
  FavoriteChatContacts$Query$ChatContactConnection$ChatContact$ChatUser$User$UserAvatar();

  factory FavoriteChatContacts$Query$ChatContactConnection$ChatContact$ChatUser$User$UserAvatar.fromJson(
          Map<String, dynamic> json) =>
      _$FavoriteChatContacts$Query$ChatContactConnection$ChatContact$ChatUser$User$UserAvatarFromJson(
          json);

  late String big;

  @override
  List<Object?> get props => [big];
  @override
  Map<String, dynamic> toJson() =>
      _$FavoriteChatContacts$Query$ChatContactConnection$ChatContact$ChatUser$User$UserAvatarToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class FavoriteChatContacts$Query$ChatContactConnection$ChatContact$ChatUser$User
    extends JsonSerializable with EquatableMixin {
  FavoriteChatContacts$Query$ChatContactConnection$ChatContact$ChatUser$User();

  factory FavoriteChatContacts$Query$ChatContactConnection$ChatContact$ChatUser$User.fromJson(
          Map<String, dynamic> json) =>
      _$FavoriteChatContacts$Query$ChatContactConnection$ChatContact$ChatUser$UserFromJson(
          json);

  late String id;

  late String num;

  String? name;

  FavoriteChatContacts$Query$ChatContactConnection$ChatContact$ChatUser$User$UserAvatar?
      avatar;

  @override
  List<Object?> get props => [id, num, name, avatar];
  @override
  Map<String, dynamic> toJson() =>
      _$FavoriteChatContacts$Query$ChatContactConnection$ChatContact$ChatUser$UserToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class FavoriteChatContacts$Query$ChatContactConnection$ChatContact$ChatUser
    extends JsonSerializable with EquatableMixin {
  FavoriteChatContacts$Query$ChatContactConnection$ChatContact$ChatUser();

  factory FavoriteChatContacts$Query$ChatContactConnection$ChatContact$ChatUser.fromJson(
          Map<String, dynamic> json) =>
      _$FavoriteChatContacts$Query$ChatContactConnection$ChatContact$ChatUserFromJson(
          json);

  late String id;

  late FavoriteChatContacts$Query$ChatContactConnection$ChatContact$ChatUser$User
      user;

  @override
  List<Object?> get props => [id, user];
  @override
  Map<String, dynamic> toJson() =>
      _$FavoriteChatContacts$Query$ChatContactConnection$ChatContact$ChatUserToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class FavoriteChatContacts$Query$ChatContactConnection$ChatContact
    extends JsonSerializable with EquatableMixin {
  FavoriteChatContacts$Query$ChatContactConnection$ChatContact();

  factory FavoriteChatContacts$Query$ChatContactConnection$ChatContact.fromJson(
          Map<String, dynamic> json) =>
      _$FavoriteChatContacts$Query$ChatContactConnection$ChatContactFromJson(
          json);

  late String id;

  late String name;

  late List<
          FavoriteChatContacts$Query$ChatContactConnection$ChatContact$ChatUser>
      chatUsers;

  double? favoritePosition;

  @override
  List<Object?> get props => [id, name, chatUsers, favoritePosition];
  @override
  Map<String, dynamic> toJson() =>
      _$FavoriteChatContacts$Query$ChatContactConnection$ChatContactToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class FavoriteChatContacts$Query$ChatContactConnection extends JsonSerializable
    with EquatableMixin {
  FavoriteChatContacts$Query$ChatContactConnection();

  factory FavoriteChatContacts$Query$ChatContactConnection.fromJson(
          Map<String, dynamic> json) =>
      _$FavoriteChatContacts$Query$ChatContactConnectionFromJson(json);

  late List<FavoriteChatContacts$Query$ChatContactConnection$ChatContact> nodes;

  @override
  List<Object?> get props => [nodes];
  @override
  Map<String, dynamic> toJson() =>
      _$FavoriteChatContacts$Query$ChatContactConnectionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FavoriteChatContacts$Query extends JsonSerializable with EquatableMixin {
  FavoriteChatContacts$Query();

  factory FavoriteChatContacts$Query.fromJson(Map<String, dynamic> json) =>
      _$FavoriteChatContacts$QueryFromJson(json);

  late FavoriteChatContacts$Query$ChatContactConnection favoriteChatContacts;

  @override
  List<Object?> get props => [favoriteChatContacts];
  @override
  Map<String, dynamic> toJson() => _$FavoriteChatContacts$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UpdateUserPassword$Mutation$UpdateUserPasswordResult$MyUser
    extends UpdateUserPassword$Mutation$UpdateUserPasswordResult
    with EquatableMixin {
  UpdateUserPassword$Mutation$UpdateUserPasswordResult$MyUser();

  factory UpdateUserPassword$Mutation$UpdateUserPasswordResult$MyUser.fromJson(
          Map<String, dynamic> json) =>
      _$UpdateUserPassword$Mutation$UpdateUserPasswordResult$MyUserFromJson(
          json);

  late bool hasPassword;

  @override
  List<Object?> get props => [hasPassword];
  @override
  Map<String, dynamic> toJson() =>
      _$UpdateUserPassword$Mutation$UpdateUserPasswordResult$MyUserToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UpdateUserPassword$Mutation$UpdateUserPasswordResult$UpdateUserPasswordError
    extends UpdateUserPassword$Mutation$UpdateUserPasswordResult
    with EquatableMixin {
  UpdateUserPassword$Mutation$UpdateUserPasswordResult$UpdateUserPasswordError();

  factory UpdateUserPassword$Mutation$UpdateUserPasswordResult$UpdateUserPasswordError.fromJson(
          Map<String, dynamic> json) =>
      _$UpdateUserPassword$Mutation$UpdateUserPasswordResult$UpdateUserPasswordErrorFromJson(
          json);

  @JsonKey(unknownEnumValue: UpdateUserPasswordErrorCode.artemisUnknown)
  late UpdateUserPasswordErrorCode code;

  @override
  List<Object?> get props => [code];
  @override
  Map<String, dynamic> toJson() =>
      _$UpdateUserPassword$Mutation$UpdateUserPasswordResult$UpdateUserPasswordErrorToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class UpdateUserPassword$Mutation$UpdateUserPasswordResult
    extends JsonSerializable with EquatableMixin {
  UpdateUserPassword$Mutation$UpdateUserPasswordResult();

  factory UpdateUserPassword$Mutation$UpdateUserPasswordResult.fromJson(
      Map<String, dynamic> json) {
    switch (json['__typename'].toString()) {
      case r'MyUser':
        return UpdateUserPassword$Mutation$UpdateUserPasswordResult$MyUser
            .fromJson(json);
      case r'UpdateUserPasswordError':
        return UpdateUserPassword$Mutation$UpdateUserPasswordResult$UpdateUserPasswordError
            .fromJson(json);
      default:
    }
    return _$UpdateUserPassword$Mutation$UpdateUserPasswordResultFromJson(json);
  }

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [$$typename];
  @override
  Map<String, dynamic> toJson() {
    switch ($$typename) {
      case r'MyUser':
        return (this
                as UpdateUserPassword$Mutation$UpdateUserPasswordResult$MyUser)
            .toJson();
      case r'UpdateUserPasswordError':
        return (this
                as UpdateUserPassword$Mutation$UpdateUserPasswordResult$UpdateUserPasswordError)
            .toJson();
      default:
    }
    return _$UpdateUserPassword$Mutation$UpdateUserPasswordResultToJson(this);
  }
}

@JsonSerializable(explicitToJson: true)
class UpdateUserPassword$Mutation extends JsonSerializable with EquatableMixin {
  UpdateUserPassword$Mutation();

  factory UpdateUserPassword$Mutation.fromJson(Map<String, dynamic> json) =>
      _$UpdateUserPassword$MutationFromJson(json);

  late UpdateUserPassword$Mutation$UpdateUserPasswordResult updateUserPassword;

  @override
  List<Object?> get props => [updateUserPassword];
  @override
  Map<String, dynamic> toJson() => _$UpdateUserPassword$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Chat$Query$Chat$ChatMemberConnection$ChatMember$ChatUser$User$UserAvatar
    extends JsonSerializable with EquatableMixin {
  Chat$Query$Chat$ChatMemberConnection$ChatMember$ChatUser$User$UserAvatar();

  factory Chat$Query$Chat$ChatMemberConnection$ChatMember$ChatUser$User$UserAvatar.fromJson(
          Map<String, dynamic> json) =>
      _$Chat$Query$Chat$ChatMemberConnection$ChatMember$ChatUser$User$UserAvatarFromJson(
          json);

  late String big;

  @override
  List<Object?> get props => [big];
  @override
  Map<String, dynamic> toJson() =>
      _$Chat$Query$Chat$ChatMemberConnection$ChatMember$ChatUser$User$UserAvatarToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class Chat$Query$Chat$ChatMemberConnection$ChatMember$ChatUser$User
    extends JsonSerializable with EquatableMixin {
  Chat$Query$Chat$ChatMemberConnection$ChatMember$ChatUser$User();

  factory Chat$Query$Chat$ChatMemberConnection$ChatMember$ChatUser$User.fromJson(
          Map<String, dynamic> json) =>
      _$Chat$Query$Chat$ChatMemberConnection$ChatMember$ChatUser$UserFromJson(
          json);

  late String num;

  String? name;

  Chat$Query$Chat$ChatMemberConnection$ChatMember$ChatUser$User$UserAvatar?
      avatar;

  @override
  List<Object?> get props => [num, name, avatar];
  @override
  Map<String, dynamic> toJson() =>
      _$Chat$Query$Chat$ChatMemberConnection$ChatMember$ChatUser$UserToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class Chat$Query$Chat$ChatMemberConnection$ChatMember$ChatUser
    extends JsonSerializable with EquatableMixin {
  Chat$Query$Chat$ChatMemberConnection$ChatMember$ChatUser();

  factory Chat$Query$Chat$ChatMemberConnection$ChatMember$ChatUser.fromJson(
          Map<String, dynamic> json) =>
      _$Chat$Query$Chat$ChatMemberConnection$ChatMember$ChatUserFromJson(json);

  late String id;

  late Chat$Query$Chat$ChatMemberConnection$ChatMember$ChatUser$User user;

  String? name;

  @override
  List<Object?> get props => [id, user, name];
  @override
  Map<String, dynamic> toJson() =>
      _$Chat$Query$Chat$ChatMemberConnection$ChatMember$ChatUserToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Chat$Query$Chat$ChatMemberConnection$ChatMember extends JsonSerializable
    with EquatableMixin {
  Chat$Query$Chat$ChatMemberConnection$ChatMember();

  factory Chat$Query$Chat$ChatMemberConnection$ChatMember.fromJson(
          Map<String, dynamic> json) =>
      _$Chat$Query$Chat$ChatMemberConnection$ChatMemberFromJson(json);

  late Chat$Query$Chat$ChatMemberConnection$ChatMember$ChatUser user;

  @override
  List<Object?> get props => [user];
  @override
  Map<String, dynamic> toJson() =>
      _$Chat$Query$Chat$ChatMemberConnection$ChatMemberToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Chat$Query$Chat$ChatMemberConnection extends JsonSerializable
    with EquatableMixin {
  Chat$Query$Chat$ChatMemberConnection();

  factory Chat$Query$Chat$ChatMemberConnection.fromJson(
          Map<String, dynamic> json) =>
      _$Chat$Query$Chat$ChatMemberConnectionFromJson(json);

  late List<Chat$Query$Chat$ChatMemberConnection$ChatMember> nodes;

  @override
  List<Object?> get props => [nodes];
  @override
  Map<String, dynamic> toJson() =>
      _$Chat$Query$Chat$ChatMemberConnectionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Chat$Query$Chat extends JsonSerializable with EquatableMixin {
  Chat$Query$Chat();

  factory Chat$Query$Chat.fromJson(Map<String, dynamic> json) =>
      _$Chat$Query$ChatFromJson(json);

  late String id;

  String? name;

  late Chat$Query$Chat$ChatMemberConnection members;

  @JsonKey(unknownEnumValue: ChatKind.artemisUnknown)
  late ChatKind kind;

  late bool isHidden;

  @override
  List<Object?> get props => [id, name, members, kind, isHidden];
  @override
  Map<String, dynamic> toJson() => _$Chat$Query$ChatToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Chat$Query extends JsonSerializable with EquatableMixin {
  Chat$Query();

  factory Chat$Query.fromJson(Map<String, dynamic> json) =>
      _$Chat$QueryFromJson(json);

  Chat$Query$Chat? chat;

  @override
  List<Object?> get props => [chat];
  @override
  Map<String, dynamic> toJson() => _$Chat$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SearchUsers$Query$UserConnection$User$UserAvatar extends JsonSerializable
    with EquatableMixin {
  SearchUsers$Query$UserConnection$User$UserAvatar();

  factory SearchUsers$Query$UserConnection$User$UserAvatar.fromJson(
          Map<String, dynamic> json) =>
      _$SearchUsers$Query$UserConnection$User$UserAvatarFromJson(json);

  late String big;

  @override
  List<Object?> get props => [big];
  @override
  Map<String, dynamic> toJson() =>
      _$SearchUsers$Query$UserConnection$User$UserAvatarToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SearchUsers$Query$UserConnection$User extends JsonSerializable
    with EquatableMixin {
  SearchUsers$Query$UserConnection$User();

  factory SearchUsers$Query$UserConnection$User.fromJson(
          Map<String, dynamic> json) =>
      _$SearchUsers$Query$UserConnection$UserFromJson(json);

  late String id;

  late String num;

  String? name;

  SearchUsers$Query$UserConnection$User$UserAvatar? avatar;

  @override
  List<Object?> get props => [id, num, name, avatar];
  @override
  Map<String, dynamic> toJson() =>
      _$SearchUsers$Query$UserConnection$UserToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SearchUsers$Query$UserConnection extends JsonSerializable
    with EquatableMixin {
  SearchUsers$Query$UserConnection();

  factory SearchUsers$Query$UserConnection.fromJson(
          Map<String, dynamic> json) =>
      _$SearchUsers$Query$UserConnectionFromJson(json);

  late List<SearchUsers$Query$UserConnection$User> nodes;

  @override
  List<Object?> get props => [nodes];
  @override
  Map<String, dynamic> toJson() =>
      _$SearchUsers$Query$UserConnectionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SearchUsers$Query extends JsonSerializable with EquatableMixin {
  SearchUsers$Query();

  factory SearchUsers$Query.fromJson(Map<String, dynamic> json) =>
      _$SearchUsers$QueryFromJson(json);

  late SearchUsers$Query$UserConnection searchUsers;

  @override
  List<Object?> get props => [searchUsers];
  @override
  Map<String, dynamic> toJson() => _$SearchUsers$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RecentChats$Query$ChatConnection$Chat$ChatItemEdge$ChatItem$ChatMemberInfo
    extends RecentChats$Query$ChatConnection$Chat$ChatItemEdge$ChatItem
    with EquatableMixin {
  RecentChats$Query$ChatConnection$Chat$ChatItemEdge$ChatItem$ChatMemberInfo();

  factory RecentChats$Query$ChatConnection$Chat$ChatItemEdge$ChatItem$ChatMemberInfo.fromJson(
          Map<String, dynamic> json) =>
      _$RecentChats$Query$ChatConnection$Chat$ChatItemEdge$ChatItem$ChatMemberInfoFromJson(
          json);

  late String byId;

  @JsonKey(unknownEnumValue: ChatMemberInfoAction.artemisUnknown)
  late ChatMemberInfoAction action;

  @override
  List<Object?> get props => [byId, action];
  @override
  Map<String, dynamic> toJson() =>
      _$RecentChats$Query$ChatConnection$Chat$ChatItemEdge$ChatItem$ChatMemberInfoToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class RecentChats$Query$ChatConnection$Chat$ChatItemEdge$ChatItem$ChatMessage$ChatItem
    extends JsonSerializable with EquatableMixin {
  RecentChats$Query$ChatConnection$Chat$ChatItemEdge$ChatItem$ChatMessage$ChatItem();

  factory RecentChats$Query$ChatConnection$Chat$ChatItemEdge$ChatItem$ChatMessage$ChatItem.fromJson(
          Map<String, dynamic> json) =>
      _$RecentChats$Query$ChatConnection$Chat$ChatItemEdge$ChatItem$ChatMessage$ChatItemFromJson(
          json);

  late String id;

  @override
  List<Object?> get props => [id];
  @override
  Map<String, dynamic> toJson() =>
      _$RecentChats$Query$ChatConnection$Chat$ChatItemEdge$ChatItem$ChatMessage$ChatItemToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class RecentChats$Query$ChatConnection$Chat$ChatItemEdge$ChatItem$ChatMessage
    extends RecentChats$Query$ChatConnection$Chat$ChatItemEdge$ChatItem
    with EquatableMixin {
  RecentChats$Query$ChatConnection$Chat$ChatItemEdge$ChatItem$ChatMessage();

  factory RecentChats$Query$ChatConnection$Chat$ChatItemEdge$ChatItem$ChatMessage.fromJson(
          Map<String, dynamic> json) =>
      _$RecentChats$Query$ChatConnection$Chat$ChatItemEdge$ChatItem$ChatMessageFromJson(
          json);

  RecentChats$Query$ChatConnection$Chat$ChatItemEdge$ChatItem$ChatMessage$ChatItem?
      repliesTo;

  String? text;

  @override
  List<Object?> get props => [repliesTo, text];
  @override
  Map<String, dynamic> toJson() =>
      _$RecentChats$Query$ChatConnection$Chat$ChatItemEdge$ChatItem$ChatMessageToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class RecentChats$Query$ChatConnection$Chat$ChatItemEdge$ChatItem$ChatForward$ChatItem
    extends JsonSerializable with EquatableMixin {
  RecentChats$Query$ChatConnection$Chat$ChatItemEdge$ChatItem$ChatForward$ChatItem();

  factory RecentChats$Query$ChatConnection$Chat$ChatItemEdge$ChatItem$ChatForward$ChatItem.fromJson(
          Map<String, dynamic> json) =>
      _$RecentChats$Query$ChatConnection$Chat$ChatItemEdge$ChatItem$ChatForward$ChatItemFromJson(
          json);

  late String id;

  @override
  List<Object?> get props => [id];
  @override
  Map<String, dynamic> toJson() =>
      _$RecentChats$Query$ChatConnection$Chat$ChatItemEdge$ChatItem$ChatForward$ChatItemToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class RecentChats$Query$ChatConnection$Chat$ChatItemEdge$ChatItem$ChatForward
    extends RecentChats$Query$ChatConnection$Chat$ChatItemEdge$ChatItem
    with EquatableMixin {
  RecentChats$Query$ChatConnection$Chat$ChatItemEdge$ChatItem$ChatForward();

  factory RecentChats$Query$ChatConnection$Chat$ChatItemEdge$ChatItem$ChatForward.fromJson(
          Map<String, dynamic> json) =>
      _$RecentChats$Query$ChatConnection$Chat$ChatItemEdge$ChatItem$ChatForwardFromJson(
          json);

  late RecentChats$Query$ChatConnection$Chat$ChatItemEdge$ChatItem$ChatForward$ChatItem
      item;

  @override
  List<Object?> get props => [item];
  @override
  Map<String, dynamic> toJson() =>
      _$RecentChats$Query$ChatConnection$Chat$ChatItemEdge$ChatItem$ChatForwardToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class RecentChats$Query$ChatConnection$Chat$ChatItemEdge$ChatItem
    extends JsonSerializable with EquatableMixin {
  RecentChats$Query$ChatConnection$Chat$ChatItemEdge$ChatItem();

  factory RecentChats$Query$ChatConnection$Chat$ChatItemEdge$ChatItem.fromJson(
      Map<String, dynamic> json) {
    switch (json['__typename'].toString()) {
      case r'ChatMemberInfo':
        return RecentChats$Query$ChatConnection$Chat$ChatItemEdge$ChatItem$ChatMemberInfo
            .fromJson(json);
      case r'ChatMessage':
        return RecentChats$Query$ChatConnection$Chat$ChatItemEdge$ChatItem$ChatMessage
            .fromJson(json);
      case r'ChatForward':
        return RecentChats$Query$ChatConnection$Chat$ChatItemEdge$ChatItem$ChatForward
            .fromJson(json);
      default:
    }
    return _$RecentChats$Query$ChatConnection$Chat$ChatItemEdge$ChatItemFromJson(
        json);
  }

  @JsonKey(name: '__typename')
  String? $$typename;

  late String id;

  late String chatId;

  late String authorId;

  late DateTime at;

  @override
  List<Object?> get props => [$$typename, id, chatId, authorId, at];
  @override
  Map<String, dynamic> toJson() {
    switch ($$typename) {
      case r'ChatMemberInfo':
        return (this
                as RecentChats$Query$ChatConnection$Chat$ChatItemEdge$ChatItem$ChatMemberInfo)
            .toJson();
      case r'ChatMessage':
        return (this
                as RecentChats$Query$ChatConnection$Chat$ChatItemEdge$ChatItem$ChatMessage)
            .toJson();
      case r'ChatForward':
        return (this
                as RecentChats$Query$ChatConnection$Chat$ChatItemEdge$ChatItem$ChatForward)
            .toJson();
      default:
    }
    return _$RecentChats$Query$ChatConnection$Chat$ChatItemEdge$ChatItemToJson(
        this);
  }
}

@JsonSerializable(explicitToJson: true)
class RecentChats$Query$ChatConnection$Chat$ChatItemEdge
    extends JsonSerializable with EquatableMixin {
  RecentChats$Query$ChatConnection$Chat$ChatItemEdge();

  factory RecentChats$Query$ChatConnection$Chat$ChatItemEdge.fromJson(
          Map<String, dynamic> json) =>
      _$RecentChats$Query$ChatConnection$Chat$ChatItemEdgeFromJson(json);

  late RecentChats$Query$ChatConnection$Chat$ChatItemEdge$ChatItem node;

  @override
  List<Object?> get props => [node];
  @override
  Map<String, dynamic> toJson() =>
      _$RecentChats$Query$ChatConnection$Chat$ChatItemEdgeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RecentChats$Query$ChatConnection$Chat$ChatMemberConnection$ChatMember$ChatUser$User$UserAvatar
    extends JsonSerializable with EquatableMixin {
  RecentChats$Query$ChatConnection$Chat$ChatMemberConnection$ChatMember$ChatUser$User$UserAvatar();

  factory RecentChats$Query$ChatConnection$Chat$ChatMemberConnection$ChatMember$ChatUser$User$UserAvatar.fromJson(
          Map<String, dynamic> json) =>
      _$RecentChats$Query$ChatConnection$Chat$ChatMemberConnection$ChatMember$ChatUser$User$UserAvatarFromJson(
          json);

  late String big;

  @override
  List<Object?> get props => [big];
  @override
  Map<String, dynamic> toJson() =>
      _$RecentChats$Query$ChatConnection$Chat$ChatMemberConnection$ChatMember$ChatUser$User$UserAvatarToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class RecentChats$Query$ChatConnection$Chat$ChatMemberConnection$ChatMember$ChatUser$User
    extends JsonSerializable with EquatableMixin {
  RecentChats$Query$ChatConnection$Chat$ChatMemberConnection$ChatMember$ChatUser$User();

  factory RecentChats$Query$ChatConnection$Chat$ChatMemberConnection$ChatMember$ChatUser$User.fromJson(
          Map<String, dynamic> json) =>
      _$RecentChats$Query$ChatConnection$Chat$ChatMemberConnection$ChatMember$ChatUser$UserFromJson(
          json);

  String? name;

  RecentChats$Query$ChatConnection$Chat$ChatMemberConnection$ChatMember$ChatUser$User$UserAvatar?
      avatar;

  @override
  List<Object?> get props => [name, avatar];
  @override
  Map<String, dynamic> toJson() =>
      _$RecentChats$Query$ChatConnection$Chat$ChatMemberConnection$ChatMember$ChatUser$UserToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class RecentChats$Query$ChatConnection$Chat$ChatMemberConnection$ChatMember$ChatUser
    extends JsonSerializable with EquatableMixin {
  RecentChats$Query$ChatConnection$Chat$ChatMemberConnection$ChatMember$ChatUser();

  factory RecentChats$Query$ChatConnection$Chat$ChatMemberConnection$ChatMember$ChatUser.fromJson(
          Map<String, dynamic> json) =>
      _$RecentChats$Query$ChatConnection$Chat$ChatMemberConnection$ChatMember$ChatUserFromJson(
          json);

  String? name;

  late RecentChats$Query$ChatConnection$Chat$ChatMemberConnection$ChatMember$ChatUser$User
      user;

  @override
  List<Object?> get props => [name, user];
  @override
  Map<String, dynamic> toJson() =>
      _$RecentChats$Query$ChatConnection$Chat$ChatMemberConnection$ChatMember$ChatUserToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class RecentChats$Query$ChatConnection$Chat$ChatMemberConnection$ChatMember
    extends JsonSerializable with EquatableMixin {
  RecentChats$Query$ChatConnection$Chat$ChatMemberConnection$ChatMember();

  factory RecentChats$Query$ChatConnection$Chat$ChatMemberConnection$ChatMember.fromJson(
          Map<String, dynamic> json) =>
      _$RecentChats$Query$ChatConnection$Chat$ChatMemberConnection$ChatMemberFromJson(
          json);

  late RecentChats$Query$ChatConnection$Chat$ChatMemberConnection$ChatMember$ChatUser
      user;

  @override
  List<Object?> get props => [user];
  @override
  Map<String, dynamic> toJson() =>
      _$RecentChats$Query$ChatConnection$Chat$ChatMemberConnection$ChatMemberToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class RecentChats$Query$ChatConnection$Chat$ChatMemberConnection
    extends JsonSerializable with EquatableMixin {
  RecentChats$Query$ChatConnection$Chat$ChatMemberConnection();

  factory RecentChats$Query$ChatConnection$Chat$ChatMemberConnection.fromJson(
          Map<String, dynamic> json) =>
      _$RecentChats$Query$ChatConnection$Chat$ChatMemberConnectionFromJson(
          json);

  late List<
          RecentChats$Query$ChatConnection$Chat$ChatMemberConnection$ChatMember>
      nodes;

  @override
  List<Object?> get props => [nodes];
  @override
  Map<String, dynamic> toJson() =>
      _$RecentChats$Query$ChatConnection$Chat$ChatMemberConnectionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RecentChats$Query$ChatConnection$Chat extends JsonSerializable
    with EquatableMixin {
  RecentChats$Query$ChatConnection$Chat();

  factory RecentChats$Query$ChatConnection$Chat.fromJson(
          Map<String, dynamic> json) =>
      _$RecentChats$Query$ChatConnection$ChatFromJson(json);

  late String id;

  String? name;

  @JsonKey(unknownEnumValue: ChatKind.artemisUnknown)
  late ChatKind kind;

  late bool isHidden;

  late DateTime lastDelivery;

  RecentChats$Query$ChatConnection$Chat$ChatItemEdge? lastItem;

  late RecentChats$Query$ChatConnection$Chat$ChatMemberConnection members;

  @override
  List<Object?> get props =>
      [id, name, kind, isHidden, lastDelivery, lastItem, members];
  @override
  Map<String, dynamic> toJson() =>
      _$RecentChats$Query$ChatConnection$ChatToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RecentChats$Query$ChatConnection extends JsonSerializable
    with EquatableMixin {
  RecentChats$Query$ChatConnection();

  factory RecentChats$Query$ChatConnection.fromJson(
          Map<String, dynamic> json) =>
      _$RecentChats$Query$ChatConnectionFromJson(json);

  late List<RecentChats$Query$ChatConnection$Chat> nodes;

  @override
  List<Object?> get props => [nodes];
  @override
  Map<String, dynamic> toJson() =>
      _$RecentChats$Query$ChatConnectionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RecentChats$Query extends JsonSerializable with EquatableMixin {
  RecentChats$Query();

  factory RecentChats$Query.fromJson(Map<String, dynamic> json) =>
      _$RecentChats$QueryFromJson(json);

  late RecentChats$Query$ChatConnection recentChats;

  @override
  List<Object?> get props => [recentChats];
  @override
  Map<String, dynamic> toJson() => _$RecentChats$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateDialogChat$Mutation$CreateDialogChatResult$Chat$ChatMemberConnection$ChatMember$ChatUser$User$UserAvatar
    extends JsonSerializable with EquatableMixin {
  CreateDialogChat$Mutation$CreateDialogChatResult$Chat$ChatMemberConnection$ChatMember$ChatUser$User$UserAvatar();

  factory CreateDialogChat$Mutation$CreateDialogChatResult$Chat$ChatMemberConnection$ChatMember$ChatUser$User$UserAvatar.fromJson(
          Map<String, dynamic> json) =>
      _$CreateDialogChat$Mutation$CreateDialogChatResult$Chat$ChatMemberConnection$ChatMember$ChatUser$User$UserAvatarFromJson(
          json);

  late String big;

  @override
  List<Object?> get props => [big];
  @override
  Map<String, dynamic> toJson() =>
      _$CreateDialogChat$Mutation$CreateDialogChatResult$Chat$ChatMemberConnection$ChatMember$ChatUser$User$UserAvatarToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class CreateDialogChat$Mutation$CreateDialogChatResult$Chat$ChatMemberConnection$ChatMember$ChatUser$User
    extends JsonSerializable with EquatableMixin {
  CreateDialogChat$Mutation$CreateDialogChatResult$Chat$ChatMemberConnection$ChatMember$ChatUser$User();

  factory CreateDialogChat$Mutation$CreateDialogChatResult$Chat$ChatMemberConnection$ChatMember$ChatUser$User.fromJson(
          Map<String, dynamic> json) =>
      _$CreateDialogChat$Mutation$CreateDialogChatResult$Chat$ChatMemberConnection$ChatMember$ChatUser$UserFromJson(
          json);

  late String num;

  String? name;

  CreateDialogChat$Mutation$CreateDialogChatResult$Chat$ChatMemberConnection$ChatMember$ChatUser$User$UserAvatar?
      avatar;

  @override
  List<Object?> get props => [num, name, avatar];
  @override
  Map<String, dynamic> toJson() =>
      _$CreateDialogChat$Mutation$CreateDialogChatResult$Chat$ChatMemberConnection$ChatMember$ChatUser$UserToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class CreateDialogChat$Mutation$CreateDialogChatResult$Chat$ChatMemberConnection$ChatMember$ChatUser
    extends JsonSerializable with EquatableMixin {
  CreateDialogChat$Mutation$CreateDialogChatResult$Chat$ChatMemberConnection$ChatMember$ChatUser();

  factory CreateDialogChat$Mutation$CreateDialogChatResult$Chat$ChatMemberConnection$ChatMember$ChatUser.fromJson(
          Map<String, dynamic> json) =>
      _$CreateDialogChat$Mutation$CreateDialogChatResult$Chat$ChatMemberConnection$ChatMember$ChatUserFromJson(
          json);

  late String id;

  late CreateDialogChat$Mutation$CreateDialogChatResult$Chat$ChatMemberConnection$ChatMember$ChatUser$User
      user;

  String? name;

  @override
  List<Object?> get props => [id, user, name];
  @override
  Map<String, dynamic> toJson() =>
      _$CreateDialogChat$Mutation$CreateDialogChatResult$Chat$ChatMemberConnection$ChatMember$ChatUserToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class CreateDialogChat$Mutation$CreateDialogChatResult$Chat$ChatMemberConnection$ChatMember
    extends JsonSerializable with EquatableMixin {
  CreateDialogChat$Mutation$CreateDialogChatResult$Chat$ChatMemberConnection$ChatMember();

  factory CreateDialogChat$Mutation$CreateDialogChatResult$Chat$ChatMemberConnection$ChatMember.fromJson(
          Map<String, dynamic> json) =>
      _$CreateDialogChat$Mutation$CreateDialogChatResult$Chat$ChatMemberConnection$ChatMemberFromJson(
          json);

  late CreateDialogChat$Mutation$CreateDialogChatResult$Chat$ChatMemberConnection$ChatMember$ChatUser
      user;

  @override
  List<Object?> get props => [user];
  @override
  Map<String, dynamic> toJson() =>
      _$CreateDialogChat$Mutation$CreateDialogChatResult$Chat$ChatMemberConnection$ChatMemberToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class CreateDialogChat$Mutation$CreateDialogChatResult$Chat$ChatMemberConnection
    extends JsonSerializable with EquatableMixin {
  CreateDialogChat$Mutation$CreateDialogChatResult$Chat$ChatMemberConnection();

  factory CreateDialogChat$Mutation$CreateDialogChatResult$Chat$ChatMemberConnection.fromJson(
          Map<String, dynamic> json) =>
      _$CreateDialogChat$Mutation$CreateDialogChatResult$Chat$ChatMemberConnectionFromJson(
          json);

  late List<
          CreateDialogChat$Mutation$CreateDialogChatResult$Chat$ChatMemberConnection$ChatMember>
      nodes;

  @override
  List<Object?> get props => [nodes];
  @override
  Map<String, dynamic> toJson() =>
      _$CreateDialogChat$Mutation$CreateDialogChatResult$Chat$ChatMemberConnectionToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class CreateDialogChat$Mutation$CreateDialogChatResult$Chat
    extends CreateDialogChat$Mutation$CreateDialogChatResult
    with EquatableMixin {
  CreateDialogChat$Mutation$CreateDialogChatResult$Chat();

  factory CreateDialogChat$Mutation$CreateDialogChatResult$Chat.fromJson(
          Map<String, dynamic> json) =>
      _$CreateDialogChat$Mutation$CreateDialogChatResult$ChatFromJson(json);

  late String id;

  String? name;

  late CreateDialogChat$Mutation$CreateDialogChatResult$Chat$ChatMemberConnection
      members;

  @JsonKey(unknownEnumValue: ChatKind.artemisUnknown)
  late ChatKind kind;

  @override
  List<Object?> get props => [id, name, members, kind];
  @override
  Map<String, dynamic> toJson() =>
      _$CreateDialogChat$Mutation$CreateDialogChatResult$ChatToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateDialogChat$Mutation$CreateDialogChatResult$CreateDialogChatError
    extends CreateDialogChat$Mutation$CreateDialogChatResult
    with EquatableMixin {
  CreateDialogChat$Mutation$CreateDialogChatResult$CreateDialogChatError();

  factory CreateDialogChat$Mutation$CreateDialogChatResult$CreateDialogChatError.fromJson(
          Map<String, dynamic> json) =>
      _$CreateDialogChat$Mutation$CreateDialogChatResult$CreateDialogChatErrorFromJson(
          json);

  @JsonKey(unknownEnumValue: CreateDialogChatErrorCode.artemisUnknown)
  late CreateDialogChatErrorCode code;

  @override
  List<Object?> get props => [code];
  @override
  Map<String, dynamic> toJson() =>
      _$CreateDialogChat$Mutation$CreateDialogChatResult$CreateDialogChatErrorToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class CreateDialogChat$Mutation$CreateDialogChatResult extends JsonSerializable
    with EquatableMixin {
  CreateDialogChat$Mutation$CreateDialogChatResult();

  factory CreateDialogChat$Mutation$CreateDialogChatResult.fromJson(
      Map<String, dynamic> json) {
    switch (json['__typename'].toString()) {
      case r'Chat':
        return CreateDialogChat$Mutation$CreateDialogChatResult$Chat.fromJson(
            json);
      case r'CreateDialogChatError':
        return CreateDialogChat$Mutation$CreateDialogChatResult$CreateDialogChatError
            .fromJson(json);
      default:
    }
    return _$CreateDialogChat$Mutation$CreateDialogChatResultFromJson(json);
  }

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [$$typename];
  @override
  Map<String, dynamic> toJson() {
    switch ($$typename) {
      case r'Chat':
        return (this as CreateDialogChat$Mutation$CreateDialogChatResult$Chat)
            .toJson();
      case r'CreateDialogChatError':
        return (this
                as CreateDialogChat$Mutation$CreateDialogChatResult$CreateDialogChatError)
            .toJson();
      default:
    }
    return _$CreateDialogChat$Mutation$CreateDialogChatResultToJson(this);
  }
}

@JsonSerializable(explicitToJson: true)
class CreateDialogChat$Mutation extends JsonSerializable with EquatableMixin {
  CreateDialogChat$Mutation();

  factory CreateDialogChat$Mutation.fromJson(Map<String, dynamic> json) =>
      _$CreateDialogChat$MutationFromJson(json);

  late CreateDialogChat$Mutation$CreateDialogChatResult createDialogChat;

  @override
  List<Object?> get props => [createDialogChat];
  @override
  Map<String, dynamic> toJson() => _$CreateDialogChat$MutationToJson(this);
}

enum UnfavoriteChatContactErrorCode {
  @JsonValue('UNKNOWN_CHAT_CONTACT')
  unknownChatContact,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}
enum FavoriteChatContactErrorCode {
  @JsonValue('UNKNOWN_CHAT_CONTACT')
  unknownChatContact,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}
enum PostChatMessageErrorCode {
  @JsonValue('BLOCKED')
  blocked,
  @JsonValue('NO_TEXT_AND_NO_ATTACHMENT')
  noTextAndNoAttachment,
  @JsonValue('NOT_MEMBER')
  notMember,
  @JsonValue('UNKNOWN_ATTACHMENT')
  unknownAttachment,
  @JsonValue('UNKNOWN_CHAT')
  unknownChat,
  @JsonValue('UNKNOWN_REPLYING_CHAT_ITEM')
  unknownReplyingChatItem,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}
enum Angle {
  @JsonValue('DEG0')
  deg0,
  @JsonValue('DEG90')
  deg90,
  @JsonValue('DEG180')
  deg180,
  @JsonValue('DEG270')
  deg270,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}
enum CreateSessionErrorCode {
  @JsonValue('UNKNOWN_USER')
  unknownUser,
  @JsonValue('WRONG_PASSWORD')
  wrongPassword,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}
enum CreateChatContactErrorCode {
  @JsonValue('UNKNOWN_USER')
  unknownUser,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}
enum UpdateUserLoginErrorCode {
  @JsonValue('OCCUPIED')
  occupied,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}
enum ChatMemberInfoAction {
  @JsonValue('ADDED')
  added,
  @JsonValue('REMOVED')
  removed,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}
enum UpdateUserPasswordErrorCode {
  @JsonValue('WRONG_OLD_PASSWORD')
  wrongOldPassword,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}
enum ChatKind {
  @JsonValue('MONOLOG')
  monolog,
  @JsonValue('DIALOG')
  dialog,
  @JsonValue('GROUP')
  group,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}
enum CreateDialogChatErrorCode {
  @JsonValue('BLOCKED')
  blocked,
  @JsonValue('UNKNOWN_DIRECT_LINK')
  unknownDirectLink,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}
final DELETE_USER_NAME_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'deleteUserName'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'deleteUserName'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'name'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ]))
      ]))
]);

class DeleteUserNameMutation
    extends GraphQLQuery<DeleteUserName$Mutation, JsonSerializable> {
  DeleteUserNameMutation();

  @override
  final DocumentNode document = DELETE_USER_NAME_MUTATION_DOCUMENT;

  @override
  final String operationName = 'deleteUserName';

  @override
  List<Object?> get props => [document, operationName];
  @override
  DeleteUserName$Mutation parse(Map<String, dynamic> json) =>
      DeleteUserName$Mutation.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class UpdateUserNameArguments extends JsonSerializable with EquatableMixin {
  UpdateUserNameArguments({required this.name});

  @override
  factory UpdateUserNameArguments.fromJson(Map<String, dynamic> json) =>
      _$UpdateUserNameArgumentsFromJson(json);

  late String name;

  @override
  List<Object?> get props => [name];
  @override
  Map<String, dynamic> toJson() => _$UpdateUserNameArgumentsToJson(this);
}

final UPDATE_USER_NAME_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'updateUserName'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'name')),
            type: NamedTypeNode(
                name: NameNode(value: 'UserName'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'updateUserName'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'name'),
                  value: VariableNode(name: NameNode(value: 'name')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'name'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ]))
      ]))
]);

class UpdateUserNameMutation
    extends GraphQLQuery<UpdateUserName$Mutation, UpdateUserNameArguments> {
  UpdateUserNameMutation({required this.variables});

  @override
  final DocumentNode document = UPDATE_USER_NAME_MUTATION_DOCUMENT;

  @override
  final String operationName = 'updateUserName';

  @override
  final UpdateUserNameArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  UpdateUserName$Mutation parse(Map<String, dynamic> json) =>
      UpdateUserName$Mutation.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class UnfavoriteChatContactArguments extends JsonSerializable
    with EquatableMixin {
  UnfavoriteChatContactArguments({required this.id});

  @override
  factory UnfavoriteChatContactArguments.fromJson(Map<String, dynamic> json) =>
      _$UnfavoriteChatContactArgumentsFromJson(json);

  late String id;

  @override
  List<Object?> get props => [id];
  @override
  Map<String, dynamic> toJson() => _$UnfavoriteChatContactArgumentsToJson(this);
}

final UNFAVORITE_CHAT_CONTACT_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'unfavoriteChatContact'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'id')),
            type: NamedTypeNode(
                name: NameNode(value: 'ChatContactId'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'unfavoriteChatContact'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'id'),
                  value: VariableNode(name: NameNode(value: 'id')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              InlineFragmentNode(
                  typeCondition: TypeConditionNode(
                      on: NamedTypeNode(
                          name: NameNode(value: 'ChatContact'),
                          isNonNull: false)),
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'favoritePosition'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              InlineFragmentNode(
                  typeCondition: TypeConditionNode(
                      on: NamedTypeNode(
                          name: NameNode(value: 'UnfavoriteChatContactError'),
                          isNonNull: false)),
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'code'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ]))
            ]))
      ]))
]);

class UnfavoriteChatContactMutation extends GraphQLQuery<
    UnfavoriteChatContact$Mutation, UnfavoriteChatContactArguments> {
  UnfavoriteChatContactMutation({required this.variables});

  @override
  final DocumentNode document = UNFAVORITE_CHAT_CONTACT_MUTATION_DOCUMENT;

  @override
  final String operationName = 'unfavoriteChatContact';

  @override
  final UnfavoriteChatContactArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  UnfavoriteChatContact$Mutation parse(Map<String, dynamic> json) =>
      UnfavoriteChatContact$Mutation.fromJson(json);
}

final CREATE_USER_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'createUser'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'createUser'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'user'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'id'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'num'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              FieldNode(
                  name: NameNode(value: 'session'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'token'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'expireAt'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ]))
            ]))
      ]))
]);

class CreateUserMutation
    extends GraphQLQuery<CreateUser$Mutation, JsonSerializable> {
  CreateUserMutation();

  @override
  final DocumentNode document = CREATE_USER_MUTATION_DOCUMENT;

  @override
  final String operationName = 'createUser';

  @override
  List<Object?> get props => [document, operationName];
  @override
  CreateUser$Mutation parse(Map<String, dynamic> json) =>
      CreateUser$Mutation.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class DeleteSessionArguments extends JsonSerializable with EquatableMixin {
  DeleteSessionArguments({required this.token});

  @override
  factory DeleteSessionArguments.fromJson(Map<String, dynamic> json) =>
      _$DeleteSessionArgumentsFromJson(json);

  late String token;

  @override
  List<Object?> get props => [token];
  @override
  Map<String, dynamic> toJson() => _$DeleteSessionArgumentsToJson(this);
}

final DELETE_SESSION_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'deleteSession'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'token')),
            type: NamedTypeNode(
                name: NameNode(value: 'AccessToken'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'deleteSession'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'token'),
                  value: VariableNode(name: NameNode(value: 'token')))
            ],
            directives: [],
            selectionSet: null)
      ]))
]);

class DeleteSessionMutation
    extends GraphQLQuery<DeleteSession$Mutation, DeleteSessionArguments> {
  DeleteSessionMutation({required this.variables});

  @override
  final DocumentNode document = DELETE_SESSION_MUTATION_DOCUMENT;

  @override
  final String operationName = 'deleteSession';

  @override
  final DeleteSessionArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  DeleteSession$Mutation parse(Map<String, dynamic> json) =>
      DeleteSession$Mutation.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class FavoriteChatContactArguments extends JsonSerializable
    with EquatableMixin {
  FavoriteChatContactArguments({required this.id, required this.pos});

  @override
  factory FavoriteChatContactArguments.fromJson(Map<String, dynamic> json) =>
      _$FavoriteChatContactArgumentsFromJson(json);

  late String id;

  late double pos;

  @override
  List<Object?> get props => [id, pos];
  @override
  Map<String, dynamic> toJson() => _$FavoriteChatContactArgumentsToJson(this);
}

final FAVORITE_CHAT_CONTACT_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'favoriteChatContact'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'id')),
            type: NamedTypeNode(
                name: NameNode(value: 'ChatContactId'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'pos')),
            type: NamedTypeNode(
                name: NameNode(value: 'ChatContactPosition'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'favoriteChatContact'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'id'),
                  value: VariableNode(name: NameNode(value: 'id'))),
              ArgumentNode(
                  name: NameNode(value: 'pos'),
                  value: VariableNode(name: NameNode(value: 'pos')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              InlineFragmentNode(
                  typeCondition: TypeConditionNode(
                      on: NamedTypeNode(
                          name: NameNode(value: 'ChatContact'),
                          isNonNull: false)),
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'favoritePosition'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              InlineFragmentNode(
                  typeCondition: TypeConditionNode(
                      on: NamedTypeNode(
                          name: NameNode(value: 'FavoriteChatContactError'),
                          isNonNull: false)),
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'code'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ]))
            ]))
      ]))
]);

class FavoriteChatContactMutation extends GraphQLQuery<
    FavoriteChatContact$Mutation, FavoriteChatContactArguments> {
  FavoriteChatContactMutation({required this.variables});

  @override
  final DocumentNode document = FAVORITE_CHAT_CONTACT_MUTATION_DOCUMENT;

  @override
  final String operationName = 'favoriteChatContact';

  @override
  final FavoriteChatContactArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  FavoriteChatContact$Mutation parse(Map<String, dynamic> json) =>
      FavoriteChatContact$Mutation.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class PostChatMessageArguments extends JsonSerializable with EquatableMixin {
  PostChatMessageArguments(
      {required this.chatId, this.text, this.attachments, this.repliesTo});

  @override
  factory PostChatMessageArguments.fromJson(Map<String, dynamic> json) =>
      _$PostChatMessageArgumentsFromJson(json);

  late String chatId;

  final String? text;

  final List<String>? attachments;

  final String? repliesTo;

  @override
  List<Object?> get props => [chatId, text, attachments, repliesTo];
  @override
  Map<String, dynamic> toJson() => _$PostChatMessageArgumentsToJson(this);
}

final POST_CHAT_MESSAGE_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'postChatMessage'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'chatId')),
            type:
                NamedTypeNode(name: NameNode(value: 'ChatId'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'text')),
            type: NamedTypeNode(
                name: NameNode(value: 'ChatMessageText'), isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'attachments')),
            type: ListTypeNode(
                type: NamedTypeNode(
                    name: NameNode(value: 'AttachmentId'), isNonNull: true),
                isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'repliesTo')),
            type: NamedTypeNode(
                name: NameNode(value: 'ChatItemId'), isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'postChatMessage'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'chatId'),
                  value: VariableNode(name: NameNode(value: 'chatId'))),
              ArgumentNode(
                  name: NameNode(value: 'text'),
                  value: VariableNode(name: NameNode(value: 'text'))),
              ArgumentNode(
                  name: NameNode(value: 'attachments'),
                  value: VariableNode(name: NameNode(value: 'attachments'))),
              ArgumentNode(
                  name: NameNode(value: 'repliesTo'),
                  value: VariableNode(name: NameNode(value: 'repliesTo')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              InlineFragmentNode(
                  typeCondition: TypeConditionNode(
                      on: NamedTypeNode(
                          name: NameNode(value: 'ChatMessage'),
                          isNonNull: false)),
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'id'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'chatId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'authorId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'repliesTo'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'id'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null)
                        ])),
                    FieldNode(
                        name: NameNode(value: 'text'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'attachments'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: '__typename'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'id'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'original'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'filename'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'size'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          InlineFragmentNode(
                              typeCondition: TypeConditionNode(
                                  on: NamedTypeNode(
                                      name: NameNode(value: 'ImageAttachment'),
                                      isNonNull: false)),
                              directives: [],
                              selectionSet: SelectionSetNode(selections: [
                                FieldNode(
                                    name: NameNode(value: 'big'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null),
                                FieldNode(
                                    name: NameNode(value: 'medium'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null),
                                FieldNode(
                                    name: NameNode(value: 'small'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null)
                              ]))
                        ])),
                    FieldNode(
                        name: NameNode(value: 'at'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              InlineFragmentNode(
                  typeCondition: TypeConditionNode(
                      on: NamedTypeNode(
                          name: NameNode(value: 'PostChatMessageError'),
                          isNonNull: false)),
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'code'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ]))
            ]))
      ]))
]);

class PostChatMessageMutation
    extends GraphQLQuery<PostChatMessage$Mutation, PostChatMessageArguments> {
  PostChatMessageMutation({required this.variables});

  @override
  final DocumentNode document = POST_CHAT_MESSAGE_MUTATION_DOCUMENT;

  @override
  final String operationName = 'postChatMessage';

  @override
  final PostChatMessageArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  PostChatMessage$Mutation parse(Map<String, dynamic> json) =>
      PostChatMessage$Mutation.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class CreateSessionArguments extends JsonSerializable with EquatableMixin {
  CreateSessionArguments(
      {this.num,
      this.login,
      this.email,
      this.phone,
      required this.password,
      this.remember});

  @override
  factory CreateSessionArguments.fromJson(Map<String, dynamic> json) =>
      _$CreateSessionArgumentsFromJson(json);

  final String? num;

  final String? login;

  final String? email;

  final String? phone;

  late String password;

  final bool? remember;

  @override
  List<Object?> get props => [num, login, email, phone, password, remember];
  @override
  Map<String, dynamic> toJson() => _$CreateSessionArgumentsToJson(this);
}

final CREATE_SESSION_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'createSession'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'num')),
            type: NamedTypeNode(
                name: NameNode(value: 'UserNum'), isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'login')),
            type: NamedTypeNode(
                name: NameNode(value: 'UserLogin'), isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'email')),
            type: NamedTypeNode(
                name: NameNode(value: 'UserEmail'), isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'phone')),
            type: NamedTypeNode(
                name: NameNode(value: 'UserPhone'), isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'password')),
            type: NamedTypeNode(
                name: NameNode(value: 'UserPassword'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'remember')),
            type: NamedTypeNode(
                name: NameNode(value: 'Boolean'), isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'createSession'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'num'),
                  value: VariableNode(name: NameNode(value: 'num'))),
              ArgumentNode(
                  name: NameNode(value: 'login'),
                  value: VariableNode(name: NameNode(value: 'login'))),
              ArgumentNode(
                  name: NameNode(value: 'email'),
                  value: VariableNode(name: NameNode(value: 'email'))),
              ArgumentNode(
                  name: NameNode(value: 'phone'),
                  value: VariableNode(name: NameNode(value: 'phone'))),
              ArgumentNode(
                  name: NameNode(value: 'password'),
                  value: VariableNode(name: NameNode(value: 'password'))),
              ArgumentNode(
                  name: NameNode(value: 'remember'),
                  value: VariableNode(name: NameNode(value: 'remember')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              InlineFragmentNode(
                  typeCondition: TypeConditionNode(
                      on: NamedTypeNode(
                          name: NameNode(value: 'CreateSessionOk'),
                          isNonNull: false)),
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'session'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'token'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'expireAt'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null)
                        ])),
                    FieldNode(
                        name: NameNode(value: 'user'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'id'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'num'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'login'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'name'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'bio'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'avatar'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(selections: [
                                FieldNode(
                                    name: NameNode(value: 'crop'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: SelectionSetNode(selections: [
                                      FieldNode(
                                          name: NameNode(value: 'topLeft'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet:
                                              SelectionSetNode(selections: [
                                            FieldNode(
                                                name: NameNode(value: 'x'),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null),
                                            FieldNode(
                                                name: NameNode(value: 'y'),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null)
                                          ])),
                                      FieldNode(
                                          name: NameNode(value: 'bottomRight'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet:
                                              SelectionSetNode(selections: [
                                            FieldNode(
                                                name: NameNode(value: 'x'),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null),
                                            FieldNode(
                                                name: NameNode(value: 'y'),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null)
                                          ])),
                                      FieldNode(
                                          name: NameNode(value: 'angle'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null)
                                    ])),
                                FieldNode(
                                    name: NameNode(value: 'original'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null),
                                FieldNode(
                                    name: NameNode(value: 'full'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null),
                                FieldNode(
                                    name: NameNode(value: 'big'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null),
                                FieldNode(
                                    name: NameNode(value: 'medium'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null),
                                FieldNode(
                                    name: NameNode(value: 'small'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null)
                              ]))
                        ]))
                  ])),
              InlineFragmentNode(
                  typeCondition: TypeConditionNode(
                      on: NamedTypeNode(
                          name: NameNode(value: 'CreateSessionError'),
                          isNonNull: false)),
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'code'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ]))
            ]))
      ]))
]);

class CreateSessionMutation
    extends GraphQLQuery<CreateSession$Mutation, CreateSessionArguments> {
  CreateSessionMutation({required this.variables});

  @override
  final DocumentNode document = CREATE_SESSION_MUTATION_DOCUMENT;

  @override
  final String operationName = 'createSession';

  @override
  final CreateSessionArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  CreateSession$Mutation parse(Map<String, dynamic> json) =>
      CreateSession$Mutation.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class DeleteChatContactArguments extends JsonSerializable with EquatableMixin {
  DeleteChatContactArguments({required this.id});

  @override
  factory DeleteChatContactArguments.fromJson(Map<String, dynamic> json) =>
      _$DeleteChatContactArgumentsFromJson(json);

  late String id;

  @override
  List<Object?> get props => [id];
  @override
  Map<String, dynamic> toJson() => _$DeleteChatContactArgumentsToJson(this);
}

final DELETE_CHAT_CONTACT_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'deleteChatContact'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'id')),
            type: NamedTypeNode(
                name: NameNode(value: 'ChatContactId'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'deleteChatContact'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'id'),
                  value: VariableNode(name: NameNode(value: 'id')))
            ],
            directives: [],
            selectionSet: null)
      ]))
]);

class DeleteChatContactMutation extends GraphQLQuery<DeleteChatContact$Mutation,
    DeleteChatContactArguments> {
  DeleteChatContactMutation({required this.variables});

  @override
  final DocumentNode document = DELETE_CHAT_CONTACT_MUTATION_DOCUMENT;

  @override
  final String operationName = 'deleteChatContact';

  @override
  final DeleteChatContactArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  DeleteChatContact$Mutation parse(Map<String, dynamic> json) =>
      DeleteChatContact$Mutation.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class CreateChatContactArguments extends JsonSerializable with EquatableMixin {
  CreateChatContactArguments({required this.name, this.records});

  @override
  factory CreateChatContactArguments.fromJson(Map<String, dynamic> json) =>
      _$CreateChatContactArgumentsFromJson(json);

  late String name;

  final List<ChatContactRecord>? records;

  @override
  List<Object?> get props => [name, records];
  @override
  Map<String, dynamic> toJson() => _$CreateChatContactArgumentsToJson(this);
}

final CREATE_CHAT_CONTACT_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'createChatContact'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'name')),
            type: NamedTypeNode(
                name: NameNode(value: 'UserName'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'records')),
            type: ListTypeNode(
                type: NamedTypeNode(
                    name: NameNode(value: 'ChatContactRecord'),
                    isNonNull: true),
                isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'createChatContact'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'name'),
                  value: VariableNode(name: NameNode(value: 'name'))),
              ArgumentNode(
                  name: NameNode(value: 'records'),
                  value: VariableNode(name: NameNode(value: 'records')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              InlineFragmentNode(
                  typeCondition: TypeConditionNode(
                      on: NamedTypeNode(
                          name: NameNode(value: 'ChatContact'),
                          isNonNull: false)),
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'id'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'name'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'chatUsers'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'id'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'user'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(selections: [
                                FieldNode(
                                    name: NameNode(value: 'id'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null),
                                FieldNode(
                                    name: NameNode(value: 'num'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null),
                                FieldNode(
                                    name: NameNode(value: 'name'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null),
                                FieldNode(
                                    name: NameNode(value: 'avatar'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: SelectionSetNode(selections: [
                                      FieldNode(
                                          name: NameNode(value: 'big'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null)
                                    ]))
                              ]))
                        ]))
                  ])),
              InlineFragmentNode(
                  typeCondition: TypeConditionNode(
                      on: NamedTypeNode(
                          name: NameNode(value: 'CreateChatContactError'),
                          isNonNull: false)),
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'code'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ]))
            ]))
      ]))
]);

class CreateChatContactMutation extends GraphQLQuery<CreateChatContact$Mutation,
    CreateChatContactArguments> {
  CreateChatContactMutation({required this.variables});

  @override
  final DocumentNode document = CREATE_CHAT_CONTACT_MUTATION_DOCUMENT;

  @override
  final String operationName = 'createChatContact';

  @override
  final CreateChatContactArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  CreateChatContact$Mutation parse(Map<String, dynamic> json) =>
      CreateChatContact$Mutation.fromJson(json);
}

final DELETE_USER_BIO_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'deleteUserBio'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'deleteUserBio'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'bio'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ]))
      ]))
]);

class DeleteUserBioMutation
    extends GraphQLQuery<DeleteUserBio$Mutation, JsonSerializable> {
  DeleteUserBioMutation();

  @override
  final DocumentNode document = DELETE_USER_BIO_MUTATION_DOCUMENT;

  @override
  final String operationName = 'deleteUserBio';

  @override
  List<Object?> get props => [document, operationName];
  @override
  DeleteUserBio$Mutation parse(Map<String, dynamic> json) =>
      DeleteUserBio$Mutation.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class UpdateUserBioArguments extends JsonSerializable with EquatableMixin {
  UpdateUserBioArguments({required this.bio});

  @override
  factory UpdateUserBioArguments.fromJson(Map<String, dynamic> json) =>
      _$UpdateUserBioArgumentsFromJson(json);

  late String bio;

  @override
  List<Object?> get props => [bio];
  @override
  Map<String, dynamic> toJson() => _$UpdateUserBioArgumentsToJson(this);
}

final UPDATE_USER_BIO_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'updateUserBio'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'bio')),
            type: NamedTypeNode(
                name: NameNode(value: 'UserBio'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'updateUserBio'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'bio'),
                  value: VariableNode(name: NameNode(value: 'bio')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'bio'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ]))
      ]))
]);

class UpdateUserBioMutation
    extends GraphQLQuery<UpdateUserBio$Mutation, UpdateUserBioArguments> {
  UpdateUserBioMutation({required this.variables});

  @override
  final DocumentNode document = UPDATE_USER_BIO_MUTATION_DOCUMENT;

  @override
  final String operationName = 'updateUserBio';

  @override
  final UpdateUserBioArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  UpdateUserBio$Mutation parse(Map<String, dynamic> json) =>
      UpdateUserBio$Mutation.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class ChatContactsArguments extends JsonSerializable with EquatableMixin {
  ChatContactsArguments(
      {this.first, this.after, this.last, this.before, this.noFavorite});

  @override
  factory ChatContactsArguments.fromJson(Map<String, dynamic> json) =>
      _$ChatContactsArgumentsFromJson(json);

  final int? first;

  final String? after;

  final int? last;

  final String? before;

  final bool? noFavorite;

  @override
  List<Object?> get props => [first, after, last, before, noFavorite];
  @override
  Map<String, dynamic> toJson() => _$ChatContactsArgumentsToJson(this);
}

final CHAT_CONTACTS_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'chatContacts'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'first')),
            type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'after')),
            type: NamedTypeNode(
                name: NameNode(value: 'String'), isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'last')),
            type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'before')),
            type: NamedTypeNode(
                name: NameNode(value: 'String'), isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'noFavorite')),
            type: NamedTypeNode(
                name: NameNode(value: 'Boolean'), isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'chatContacts'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'first'),
                  value: VariableNode(name: NameNode(value: 'first'))),
              ArgumentNode(
                  name: NameNode(value: 'after'),
                  value: VariableNode(name: NameNode(value: 'after'))),
              ArgumentNode(
                  name: NameNode(value: 'last'),
                  value: VariableNode(name: NameNode(value: 'last'))),
              ArgumentNode(
                  name: NameNode(value: 'before'),
                  value: VariableNode(name: NameNode(value: 'before'))),
              ArgumentNode(
                  name: NameNode(value: 'noFavorite'),
                  value: VariableNode(name: NameNode(value: 'noFavorite')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'nodes'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'id'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'name'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'chatUsers'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'id'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'user'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(selections: [
                                FieldNode(
                                    name: NameNode(value: 'id'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null),
                                FieldNode(
                                    name: NameNode(value: 'num'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null),
                                FieldNode(
                                    name: NameNode(value: 'name'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null),
                                FieldNode(
                                    name: NameNode(value: 'avatar'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: SelectionSetNode(selections: [
                                      FieldNode(
                                          name: NameNode(value: 'big'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null)
                                    ]))
                              ]))
                        ])),
                    FieldNode(
                        name: NameNode(value: 'favoritePosition'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ]))
            ]))
      ]))
]);

class ChatContactsQuery
    extends GraphQLQuery<ChatContacts$Query, ChatContactsArguments> {
  ChatContactsQuery({required this.variables});

  @override
  final DocumentNode document = CHAT_CONTACTS_QUERY_DOCUMENT;

  @override
  final String operationName = 'chatContacts';

  @override
  final ChatContactsArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  ChatContacts$Query parse(Map<String, dynamic> json) =>
      ChatContacts$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class UpdateUserLoginArguments extends JsonSerializable with EquatableMixin {
  UpdateUserLoginArguments({required this.login});

  @override
  factory UpdateUserLoginArguments.fromJson(Map<String, dynamic> json) =>
      _$UpdateUserLoginArgumentsFromJson(json);

  late String login;

  @override
  List<Object?> get props => [login];
  @override
  Map<String, dynamic> toJson() => _$UpdateUserLoginArgumentsToJson(this);
}

final UPDATE_USER_LOGIN_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'updateUserLogin'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'login')),
            type: NamedTypeNode(
                name: NameNode(value: 'UserLogin'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'updateUserLogin'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'login'),
                  value: VariableNode(name: NameNode(value: 'login')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              InlineFragmentNode(
                  typeCondition: TypeConditionNode(
                      on: NamedTypeNode(
                          name: NameNode(value: 'MyUser'), isNonNull: false)),
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'login'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              InlineFragmentNode(
                  typeCondition: TypeConditionNode(
                      on: NamedTypeNode(
                          name: NameNode(value: 'UpdateUserLoginError'),
                          isNonNull: false)),
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'code'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ]))
            ]))
      ]))
]);

class UpdateUserLoginMutation
    extends GraphQLQuery<UpdateUserLogin$Mutation, UpdateUserLoginArguments> {
  UpdateUserLoginMutation({required this.variables});

  @override
  final DocumentNode document = UPDATE_USER_LOGIN_MUTATION_DOCUMENT;

  @override
  final String operationName = 'updateUserLogin';

  @override
  final UpdateUserLoginArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  UpdateUserLogin$Mutation parse(Map<String, dynamic> json) =>
      UpdateUserLogin$Mutation.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class MessagesArguments extends JsonSerializable with EquatableMixin {
  MessagesArguments(
      {required this.id, this.first, this.after, this.last, this.before});

  @override
  factory MessagesArguments.fromJson(Map<String, dynamic> json) =>
      _$MessagesArgumentsFromJson(json);

  late String id;

  final int? first;

  final String? after;

  final int? last;

  final String? before;

  @override
  List<Object?> get props => [id, first, after, last, before];
  @override
  Map<String, dynamic> toJson() => _$MessagesArgumentsToJson(this);
}

final MESSAGES_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'messages'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'id')),
            type:
                NamedTypeNode(name: NameNode(value: 'ChatId'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'first')),
            type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'after')),
            type: NamedTypeNode(
                name: NameNode(value: 'String'), isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'last')),
            type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'before')),
            type: NamedTypeNode(
                name: NameNode(value: 'String'), isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'chat'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'id'),
                  value: VariableNode(name: NameNode(value: 'id')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'items'),
                  alias: null,
                  arguments: [
                    ArgumentNode(
                        name: NameNode(value: 'first'),
                        value: VariableNode(name: NameNode(value: 'first'))),
                    ArgumentNode(
                        name: NameNode(value: 'after'),
                        value: VariableNode(name: NameNode(value: 'after'))),
                    ArgumentNode(
                        name: NameNode(value: 'last'),
                        value: VariableNode(name: NameNode(value: 'last'))),
                    ArgumentNode(
                        name: NameNode(value: 'before'),
                        value: VariableNode(name: NameNode(value: 'before')))
                  ],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'nodes'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: '__typename'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'id'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'chatId'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'authorId'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'at'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          InlineFragmentNode(
                              typeCondition: TypeConditionNode(
                                  on: NamedTypeNode(
                                      name: NameNode(value: 'ChatMemberInfo'),
                                      isNonNull: false)),
                              directives: [],
                              selectionSet: SelectionSetNode(selections: [
                                FieldNode(
                                    name: NameNode(value: 'byId'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null),
                                FieldNode(
                                    name: NameNode(value: 'action'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null)
                              ])),
                          InlineFragmentNode(
                              typeCondition: TypeConditionNode(
                                  on: NamedTypeNode(
                                      name: NameNode(value: 'ChatMessage'),
                                      isNonNull: false)),
                              directives: [],
                              selectionSet: SelectionSetNode(selections: [
                                FieldNode(
                                    name: NameNode(value: 'repliesTo'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: SelectionSetNode(selections: [
                                      FieldNode(
                                          name: NameNode(value: 'id'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null)
                                    ])),
                                FieldNode(
                                    name: NameNode(value: 'text'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null)
                              ])),
                          InlineFragmentNode(
                              typeCondition: TypeConditionNode(
                                  on: NamedTypeNode(
                                      name: NameNode(value: 'ChatForward'),
                                      isNonNull: false)),
                              directives: [],
                              selectionSet: SelectionSetNode(selections: [
                                FieldNode(
                                    name: NameNode(value: 'item'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: SelectionSetNode(selections: [
                                      FieldNode(
                                          name: NameNode(value: 'id'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null)
                                    ]))
                              ]))
                        ]))
                  ]))
            ]))
      ]))
]);

class MessagesQuery extends GraphQLQuery<Messages$Query, MessagesArguments> {
  MessagesQuery({required this.variables});

  @override
  final DocumentNode document = MESSAGES_QUERY_DOCUMENT;

  @override
  final String operationName = 'messages';

  @override
  final MessagesArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  Messages$Query parse(Map<String, dynamic> json) =>
      Messages$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class UserArguments extends JsonSerializable with EquatableMixin {
  UserArguments({required this.id});

  @override
  factory UserArguments.fromJson(Map<String, dynamic> json) =>
      _$UserArgumentsFromJson(json);

  late String id;

  @override
  List<Object?> get props => [id];
  @override
  Map<String, dynamic> toJson() => _$UserArgumentsToJson(this);
}

final USER_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'user'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'id')),
            type:
                NamedTypeNode(name: NameNode(value: 'UserId'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'user'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'id'),
                  value: VariableNode(name: NameNode(value: 'id')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'id'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'num'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'name'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'bio'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'avatar'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'crop'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'topLeft'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(selections: [
                                FieldNode(
                                    name: NameNode(value: 'x'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null),
                                FieldNode(
                                    name: NameNode(value: 'y'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null)
                              ])),
                          FieldNode(
                              name: NameNode(value: 'bottomRight'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(selections: [
                                FieldNode(
                                    name: NameNode(value: 'x'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null),
                                FieldNode(
                                    name: NameNode(value: 'y'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null)
                              ])),
                          FieldNode(
                              name: NameNode(value: 'angle'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null)
                        ])),
                    FieldNode(
                        name: NameNode(value: 'original'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'big'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              FieldNode(
                  name: NameNode(value: 'mutualContactsCount'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'isDeleted'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'contacts'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'id'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'name'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'chatUsers'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'dialog'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(selections: [
                                FieldNode(
                                    name: NameNode(value: 'id'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null)
                              ]))
                        ])),
                    FieldNode(
                        name: NameNode(value: 'favoritePosition'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ]))
            ]))
      ]))
]);

class UserQuery extends GraphQLQuery<User$Query, UserArguments> {
  UserQuery({required this.variables});

  @override
  final DocumentNode document = USER_QUERY_DOCUMENT;

  @override
  final String operationName = 'user';

  @override
  final UserArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  User$Query parse(Map<String, dynamic> json) => User$Query.fromJson(json);
}

final MY_USER_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'myUser'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'myUser'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'id'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'num'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'login'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'name'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'bio'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'hasPassword'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'avatar'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'crop'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'topLeft'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(selections: [
                                FieldNode(
                                    name: NameNode(value: 'x'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null),
                                FieldNode(
                                    name: NameNode(value: 'y'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null)
                              ])),
                          FieldNode(
                              name: NameNode(value: 'bottomRight'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(selections: [
                                FieldNode(
                                    name: NameNode(value: 'x'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null),
                                FieldNode(
                                    name: NameNode(value: 'y'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null)
                              ])),
                          FieldNode(
                              name: NameNode(value: 'angle'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null)
                        ])),
                    FieldNode(
                        name: NameNode(value: 'original'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'full'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'big'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'medium'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'small'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ]))
            ]))
      ]))
]);

class MyUserQuery extends GraphQLQuery<MyUser$Query, JsonSerializable> {
  MyUserQuery();

  @override
  final DocumentNode document = MY_USER_QUERY_DOCUMENT;

  @override
  final String operationName = 'myUser';

  @override
  List<Object?> get props => [document, operationName];
  @override
  MyUser$Query parse(Map<String, dynamic> json) => MyUser$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class FavoriteChatContactsArguments extends JsonSerializable
    with EquatableMixin {
  FavoriteChatContactsArguments(
      {this.first, this.after, this.last, this.before});

  @override
  factory FavoriteChatContactsArguments.fromJson(Map<String, dynamic> json) =>
      _$FavoriteChatContactsArgumentsFromJson(json);

  final int? first;

  final String? after;

  final int? last;

  final String? before;

  @override
  List<Object?> get props => [first, after, last, before];
  @override
  Map<String, dynamic> toJson() => _$FavoriteChatContactsArgumentsToJson(this);
}

final FAVORITE_CHAT_CONTACTS_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'favoriteChatContacts'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'first')),
            type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'after')),
            type: NamedTypeNode(
                name: NameNode(value: 'String'), isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'last')),
            type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'before')),
            type: NamedTypeNode(
                name: NameNode(value: 'String'), isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'favoriteChatContacts'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'first'),
                  value: VariableNode(name: NameNode(value: 'first'))),
              ArgumentNode(
                  name: NameNode(value: 'after'),
                  value: VariableNode(name: NameNode(value: 'after'))),
              ArgumentNode(
                  name: NameNode(value: 'last'),
                  value: VariableNode(name: NameNode(value: 'last'))),
              ArgumentNode(
                  name: NameNode(value: 'before'),
                  value: VariableNode(name: NameNode(value: 'before')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'nodes'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'id'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'name'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'chatUsers'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'id'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'user'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(selections: [
                                FieldNode(
                                    name: NameNode(value: 'id'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null),
                                FieldNode(
                                    name: NameNode(value: 'num'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null),
                                FieldNode(
                                    name: NameNode(value: 'name'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null),
                                FieldNode(
                                    name: NameNode(value: 'avatar'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: SelectionSetNode(selections: [
                                      FieldNode(
                                          name: NameNode(value: 'big'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null)
                                    ]))
                              ]))
                        ])),
                    FieldNode(
                        name: NameNode(value: 'favoritePosition'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ]))
            ]))
      ]))
]);

class FavoriteChatContactsQuery extends GraphQLQuery<FavoriteChatContacts$Query,
    FavoriteChatContactsArguments> {
  FavoriteChatContactsQuery({required this.variables});

  @override
  final DocumentNode document = FAVORITE_CHAT_CONTACTS_QUERY_DOCUMENT;

  @override
  final String operationName = 'favoriteChatContacts';

  @override
  final FavoriteChatContactsArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  FavoriteChatContacts$Query parse(Map<String, dynamic> json) =>
      FavoriteChatContacts$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class UpdateUserPasswordArguments extends JsonSerializable with EquatableMixin {
  UpdateUserPasswordArguments({required this.kw$new, this.old});

  @override
  factory UpdateUserPasswordArguments.fromJson(Map<String, dynamic> json) =>
      _$UpdateUserPasswordArgumentsFromJson(json);

  @JsonKey(name: 'new')
  late String kw$new;

  final String? old;

  @override
  List<Object?> get props => [kw$new, old];
  @override
  Map<String, dynamic> toJson() => _$UpdateUserPasswordArgumentsToJson(this);
}

final UPDATE_USER_PASSWORD_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'updateUserPassword'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'new')),
            type: NamedTypeNode(
                name: NameNode(value: 'UserPassword'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'old')),
            type: NamedTypeNode(
                name: NameNode(value: 'UserPassword'), isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'updateUserPassword'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'new'),
                  value: VariableNode(name: NameNode(value: 'new'))),
              ArgumentNode(
                  name: NameNode(value: 'old'),
                  value: VariableNode(name: NameNode(value: 'old')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              InlineFragmentNode(
                  typeCondition: TypeConditionNode(
                      on: NamedTypeNode(
                          name: NameNode(value: 'MyUser'), isNonNull: false)),
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'hasPassword'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              InlineFragmentNode(
                  typeCondition: TypeConditionNode(
                      on: NamedTypeNode(
                          name: NameNode(value: 'UpdateUserPasswordError'),
                          isNonNull: false)),
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'code'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ]))
            ]))
      ]))
]);

class UpdateUserPasswordMutation extends GraphQLQuery<
    UpdateUserPassword$Mutation, UpdateUserPasswordArguments> {
  UpdateUserPasswordMutation({required this.variables});

  @override
  final DocumentNode document = UPDATE_USER_PASSWORD_MUTATION_DOCUMENT;

  @override
  final String operationName = 'updateUserPassword';

  @override
  final UpdateUserPasswordArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  UpdateUserPassword$Mutation parse(Map<String, dynamic> json) =>
      UpdateUserPassword$Mutation.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class ChatArguments extends JsonSerializable with EquatableMixin {
  ChatArguments({required this.id});

  @override
  factory ChatArguments.fromJson(Map<String, dynamic> json) =>
      _$ChatArgumentsFromJson(json);

  late String id;

  @override
  List<Object?> get props => [id];
  @override
  Map<String, dynamic> toJson() => _$ChatArgumentsToJson(this);
}

final CHAT_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'chat'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'id')),
            type:
                NamedTypeNode(name: NameNode(value: 'ChatId'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'chat'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'id'),
                  value: VariableNode(name: NameNode(value: 'id')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'id'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'name'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'members'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'nodes'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'user'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(selections: [
                                FieldNode(
                                    name: NameNode(value: 'id'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null),
                                FieldNode(
                                    name: NameNode(value: 'user'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: SelectionSetNode(selections: [
                                      FieldNode(
                                          name: NameNode(value: 'num'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null),
                                      FieldNode(
                                          name: NameNode(value: 'name'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null),
                                      FieldNode(
                                          name: NameNode(value: 'avatar'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet:
                                              SelectionSetNode(selections: [
                                            FieldNode(
                                                name: NameNode(value: 'big'),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null)
                                          ]))
                                    ])),
                                FieldNode(
                                    name: NameNode(value: 'name'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null)
                              ]))
                        ]))
                  ])),
              FieldNode(
                  name: NameNode(value: 'kind'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'isHidden'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ]))
      ]))
]);

class ChatQuery extends GraphQLQuery<Chat$Query, ChatArguments> {
  ChatQuery({required this.variables});

  @override
  final DocumentNode document = CHAT_QUERY_DOCUMENT;

  @override
  final String operationName = 'chat';

  @override
  final ChatArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  Chat$Query parse(Map<String, dynamic> json) => Chat$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class SearchUsersArguments extends JsonSerializable with EquatableMixin {
  SearchUsersArguments({this.num, this.login});

  @override
  factory SearchUsersArguments.fromJson(Map<String, dynamic> json) =>
      _$SearchUsersArgumentsFromJson(json);

  final String? num;

  final String? login;

  @override
  List<Object?> get props => [num, login];
  @override
  Map<String, dynamic> toJson() => _$SearchUsersArgumentsToJson(this);
}

final SEARCH_USERS_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'searchUsers'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'num')),
            type: NamedTypeNode(
                name: NameNode(value: 'UserNum'), isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'login')),
            type: NamedTypeNode(
                name: NameNode(value: 'UserLogin'), isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'searchUsers'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'num'),
                  value: VariableNode(name: NameNode(value: 'num'))),
              ArgumentNode(
                  name: NameNode(value: 'login'),
                  value: VariableNode(name: NameNode(value: 'login')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'nodes'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'id'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'num'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'name'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'avatar'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'big'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null)
                        ]))
                  ]))
            ]))
      ]))
]);

class SearchUsersQuery
    extends GraphQLQuery<SearchUsers$Query, SearchUsersArguments> {
  SearchUsersQuery({required this.variables});

  @override
  final DocumentNode document = SEARCH_USERS_QUERY_DOCUMENT;

  @override
  final String operationName = 'searchUsers';

  @override
  final SearchUsersArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  SearchUsers$Query parse(Map<String, dynamic> json) =>
      SearchUsers$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class RecentChatsArguments extends JsonSerializable with EquatableMixin {
  RecentChatsArguments({this.first, this.after, this.last, this.before});

  @override
  factory RecentChatsArguments.fromJson(Map<String, dynamic> json) =>
      _$RecentChatsArgumentsFromJson(json);

  final int? first;

  final String? after;

  final int? last;

  final String? before;

  @override
  List<Object?> get props => [first, after, last, before];
  @override
  Map<String, dynamic> toJson() => _$RecentChatsArgumentsToJson(this);
}

final RECENT_CHATS_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'recentChats'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'first')),
            type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'after')),
            type: NamedTypeNode(
                name: NameNode(value: 'String'), isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'last')),
            type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'before')),
            type: NamedTypeNode(
                name: NameNode(value: 'String'), isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'recentChats'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'first'),
                  value: VariableNode(name: NameNode(value: 'first'))),
              ArgumentNode(
                  name: NameNode(value: 'after'),
                  value: VariableNode(name: NameNode(value: 'after'))),
              ArgumentNode(
                  name: NameNode(value: 'last'),
                  value: VariableNode(name: NameNode(value: 'last'))),
              ArgumentNode(
                  name: NameNode(value: 'before'),
                  value: VariableNode(name: NameNode(value: 'before')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'nodes'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'id'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'name'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'kind'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'isHidden'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'lastDelivery'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'lastItem'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'node'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(selections: [
                                FieldNode(
                                    name: NameNode(value: '__typename'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null),
                                FieldNode(
                                    name: NameNode(value: 'id'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null),
                                FieldNode(
                                    name: NameNode(value: 'chatId'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null),
                                FieldNode(
                                    name: NameNode(value: 'authorId'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null),
                                FieldNode(
                                    name: NameNode(value: 'at'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null),
                                InlineFragmentNode(
                                    typeCondition: TypeConditionNode(
                                        on: NamedTypeNode(
                                            name: NameNode(
                                                value: 'ChatMemberInfo'),
                                            isNonNull: false)),
                                    directives: [],
                                    selectionSet: SelectionSetNode(selections: [
                                      FieldNode(
                                          name: NameNode(value: 'byId'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null),
                                      FieldNode(
                                          name: NameNode(value: 'action'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null)
                                    ])),
                                InlineFragmentNode(
                                    typeCondition: TypeConditionNode(
                                        on: NamedTypeNode(
                                            name:
                                                NameNode(value: 'ChatMessage'),
                                            isNonNull: false)),
                                    directives: [],
                                    selectionSet: SelectionSetNode(selections: [
                                      FieldNode(
                                          name: NameNode(value: 'repliesTo'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet:
                                              SelectionSetNode(selections: [
                                            FieldNode(
                                                name: NameNode(value: 'id'),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null)
                                          ])),
                                      FieldNode(
                                          name: NameNode(value: 'text'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null)
                                    ])),
                                InlineFragmentNode(
                                    typeCondition: TypeConditionNode(
                                        on: NamedTypeNode(
                                            name:
                                                NameNode(value: 'ChatForward'),
                                            isNonNull: false)),
                                    directives: [],
                                    selectionSet: SelectionSetNode(selections: [
                                      FieldNode(
                                          name: NameNode(value: 'item'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet:
                                              SelectionSetNode(selections: [
                                            FieldNode(
                                                name: NameNode(value: 'id'),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null)
                                          ]))
                                    ]))
                              ]))
                        ])),
                    FieldNode(
                        name: NameNode(value: 'members'),
                        alias: null,
                        arguments: [
                          ArgumentNode(
                              name: NameNode(value: 'first'),
                              value: IntValueNode(value: '4'))
                        ],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'nodes'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(selections: [
                                FieldNode(
                                    name: NameNode(value: 'user'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: SelectionSetNode(selections: [
                                      FieldNode(
                                          name: NameNode(value: 'name'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null),
                                      FieldNode(
                                          name: NameNode(value: 'user'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet:
                                              SelectionSetNode(selections: [
                                            FieldNode(
                                                name: NameNode(value: 'name'),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null),
                                            FieldNode(
                                                name: NameNode(value: 'avatar'),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: SelectionSetNode(
                                                    selections: [
                                                      FieldNode(
                                                          name: NameNode(
                                                              value: 'big'),
                                                          alias: null,
                                                          arguments: [],
                                                          directives: [],
                                                          selectionSet: null)
                                                    ]))
                                          ]))
                                    ]))
                              ]))
                        ]))
                  ]))
            ]))
      ]))
]);

class RecentChatsQuery
    extends GraphQLQuery<RecentChats$Query, RecentChatsArguments> {
  RecentChatsQuery({required this.variables});

  @override
  final DocumentNode document = RECENT_CHATS_QUERY_DOCUMENT;

  @override
  final String operationName = 'recentChats';

  @override
  final RecentChatsArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  RecentChats$Query parse(Map<String, dynamic> json) =>
      RecentChats$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class CreateDialogChatArguments extends JsonSerializable with EquatableMixin {
  CreateDialogChatArguments({this.responderId});

  @override
  factory CreateDialogChatArguments.fromJson(Map<String, dynamic> json) =>
      _$CreateDialogChatArgumentsFromJson(json);

  final String? responderId;

  @override
  List<Object?> get props => [responderId];
  @override
  Map<String, dynamic> toJson() => _$CreateDialogChatArgumentsToJson(this);
}

final CREATE_DIALOG_CHAT_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'createDialogChat'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'responderId')),
            type: NamedTypeNode(
                name: NameNode(value: 'UserId'), isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'createDialogChat'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'responderId'),
                  value: VariableNode(name: NameNode(value: 'responderId')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              InlineFragmentNode(
                  typeCondition: TypeConditionNode(
                      on: NamedTypeNode(
                          name: NameNode(value: 'Chat'), isNonNull: false)),
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'id'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'name'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'members'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'nodes'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(selections: [
                                FieldNode(
                                    name: NameNode(value: 'user'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: SelectionSetNode(selections: [
                                      FieldNode(
                                          name: NameNode(value: 'id'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null),
                                      FieldNode(
                                          name: NameNode(value: 'user'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet:
                                              SelectionSetNode(selections: [
                                            FieldNode(
                                                name: NameNode(value: 'num'),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null),
                                            FieldNode(
                                                name: NameNode(value: 'name'),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null),
                                            FieldNode(
                                                name: NameNode(value: 'avatar'),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: SelectionSetNode(
                                                    selections: [
                                                      FieldNode(
                                                          name: NameNode(
                                                              value: 'big'),
                                                          alias: null,
                                                          arguments: [],
                                                          directives: [],
                                                          selectionSet: null)
                                                    ]))
                                          ])),
                                      FieldNode(
                                          name: NameNode(value: 'name'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null)
                                    ]))
                              ]))
                        ])),
                    FieldNode(
                        name: NameNode(value: 'kind'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              InlineFragmentNode(
                  typeCondition: TypeConditionNode(
                      on: NamedTypeNode(
                          name: NameNode(value: 'CreateDialogChatError'),
                          isNonNull: false)),
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'code'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ]))
            ]))
      ]))
]);

class CreateDialogChatMutation
    extends GraphQLQuery<CreateDialogChat$Mutation, CreateDialogChatArguments> {
  CreateDialogChatMutation({required this.variables});

  @override
  final DocumentNode document = CREATE_DIALOG_CHAT_MUTATION_DOCUMENT;

  @override
  final String operationName = 'createDialogChat';

  @override
  final CreateDialogChatArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  CreateDialogChat$Mutation parse(Map<String, dynamic> json) =>
      CreateDialogChat$Mutation.fromJson(json);
}
