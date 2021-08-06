// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.12

part of 'api.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeleteUserName$Mutation$MyUser _$DeleteUserName$Mutation$MyUserFromJson(
    Map<String, dynamic> json) {
  return DeleteUserName$Mutation$MyUser()..name = json['name'] as String?;
}

Map<String, dynamic> _$DeleteUserName$Mutation$MyUserToJson(
        DeleteUserName$Mutation$MyUser instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

DeleteUserName$Mutation _$DeleteUserName$MutationFromJson(
    Map<String, dynamic> json) {
  return DeleteUserName$Mutation()
    ..deleteUserName = DeleteUserName$Mutation$MyUser.fromJson(
        json['deleteUserName'] as Map<String, dynamic>);
}

Map<String, dynamic> _$DeleteUserName$MutationToJson(
        DeleteUserName$Mutation instance) =>
    <String, dynamic>{
      'deleteUserName': instance.deleteUserName.toJson(),
    };

UpdateUserName$Mutation$MyUser _$UpdateUserName$Mutation$MyUserFromJson(
    Map<String, dynamic> json) {
  return UpdateUserName$Mutation$MyUser()..name = json['name'] as String?;
}

Map<String, dynamic> _$UpdateUserName$Mutation$MyUserToJson(
        UpdateUserName$Mutation$MyUser instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

UpdateUserName$Mutation _$UpdateUserName$MutationFromJson(
    Map<String, dynamic> json) {
  return UpdateUserName$Mutation()
    ..updateUserName = UpdateUserName$Mutation$MyUser.fromJson(
        json['updateUserName'] as Map<String, dynamic>);
}

Map<String, dynamic> _$UpdateUserName$MutationToJson(
        UpdateUserName$Mutation instance) =>
    <String, dynamic>{
      'updateUserName': instance.updateUserName.toJson(),
    };

UnfavoriteChatContact$Mutation$UnfavoriteChatContactResult$ChatContact
    _$UnfavoriteChatContact$Mutation$UnfavoriteChatContactResult$ChatContactFromJson(
        Map<String, dynamic> json) {
  return UnfavoriteChatContact$Mutation$UnfavoriteChatContactResult$ChatContact()
    ..$$typename = json['__typename'] as String?
    ..favoritePosition = (json['favoritePosition'] as num?)?.toDouble();
}

Map<String, dynamic>
    _$UnfavoriteChatContact$Mutation$UnfavoriteChatContactResult$ChatContactToJson(
            UnfavoriteChatContact$Mutation$UnfavoriteChatContactResult$ChatContact
                instance) =>
        <String, dynamic>{
          '__typename': instance.$$typename,
          'favoritePosition': instance.favoritePosition,
        };

UnfavoriteChatContact$Mutation$UnfavoriteChatContactResult$UnfavoriteChatContactError
    _$UnfavoriteChatContact$Mutation$UnfavoriteChatContactResult$UnfavoriteChatContactErrorFromJson(
        Map<String, dynamic> json) {
  return UnfavoriteChatContact$Mutation$UnfavoriteChatContactResult$UnfavoriteChatContactError()
    ..$$typename = json['__typename'] as String?
    ..code = _$enumDecode(_$UnfavoriteChatContactErrorCodeEnumMap, json['code'],
        unknownValue: UnfavoriteChatContactErrorCode.artemisUnknown);
}

Map<String, dynamic>
    _$UnfavoriteChatContact$Mutation$UnfavoriteChatContactResult$UnfavoriteChatContactErrorToJson(
            UnfavoriteChatContact$Mutation$UnfavoriteChatContactResult$UnfavoriteChatContactError
                instance) =>
        <String, dynamic>{
          '__typename': instance.$$typename,
          'code': _$UnfavoriteChatContactErrorCodeEnumMap[instance.code],
        };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

const _$UnfavoriteChatContactErrorCodeEnumMap = {
  UnfavoriteChatContactErrorCode.unknownChatContact: 'UNKNOWN_CHAT_CONTACT',
  UnfavoriteChatContactErrorCode.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

UnfavoriteChatContact$Mutation$UnfavoriteChatContactResult
    _$UnfavoriteChatContact$Mutation$UnfavoriteChatContactResultFromJson(
        Map<String, dynamic> json) {
  return UnfavoriteChatContact$Mutation$UnfavoriteChatContactResult()
    ..$$typename = json['__typename'] as String?;
}

Map<String,
    dynamic> _$UnfavoriteChatContact$Mutation$UnfavoriteChatContactResultToJson(
        UnfavoriteChatContact$Mutation$UnfavoriteChatContactResult instance) =>
    <String, dynamic>{
      '__typename': instance.$$typename,
    };

UnfavoriteChatContact$Mutation _$UnfavoriteChatContact$MutationFromJson(
    Map<String, dynamic> json) {
  return UnfavoriteChatContact$Mutation()
    ..unfavoriteChatContact =
        UnfavoriteChatContact$Mutation$UnfavoriteChatContactResult.fromJson(
            json['unfavoriteChatContact'] as Map<String, dynamic>);
}

Map<String, dynamic> _$UnfavoriteChatContact$MutationToJson(
        UnfavoriteChatContact$Mutation instance) =>
    <String, dynamic>{
      'unfavoriteChatContact': instance.unfavoriteChatContact.toJson(),
    };

CreateUser$Mutation$CreateUserResult$MyUser
    _$CreateUser$Mutation$CreateUserResult$MyUserFromJson(
        Map<String, dynamic> json) {
  return CreateUser$Mutation$CreateUserResult$MyUser()
    ..id = json['id'] as String
    ..num = json['num'] as String;
}

Map<String, dynamic> _$CreateUser$Mutation$CreateUserResult$MyUserToJson(
        CreateUser$Mutation$CreateUserResult$MyUser instance) =>
    <String, dynamic>{
      'id': instance.id,
      'num': instance.num,
    };

CreateUser$Mutation$CreateUserResult$Session
    _$CreateUser$Mutation$CreateUserResult$SessionFromJson(
        Map<String, dynamic> json) {
  return CreateUser$Mutation$CreateUserResult$Session()
    ..token = json['token'] as String
    ..expireAt = DateTime.parse(json['expireAt'] as String);
}

Map<String, dynamic> _$CreateUser$Mutation$CreateUserResult$SessionToJson(
        CreateUser$Mutation$CreateUserResult$Session instance) =>
    <String, dynamic>{
      'token': instance.token,
      'expireAt': instance.expireAt.toIso8601String(),
    };

CreateUser$Mutation$CreateUserResult
    _$CreateUser$Mutation$CreateUserResultFromJson(Map<String, dynamic> json) {
  return CreateUser$Mutation$CreateUserResult()
    ..user = CreateUser$Mutation$CreateUserResult$MyUser.fromJson(
        json['user'] as Map<String, dynamic>)
    ..session = CreateUser$Mutation$CreateUserResult$Session.fromJson(
        json['session'] as Map<String, dynamic>);
}

Map<String, dynamic> _$CreateUser$Mutation$CreateUserResultToJson(
        CreateUser$Mutation$CreateUserResult instance) =>
    <String, dynamic>{
      'user': instance.user.toJson(),
      'session': instance.session.toJson(),
    };

CreateUser$Mutation _$CreateUser$MutationFromJson(Map<String, dynamic> json) {
  return CreateUser$Mutation()
    ..createUser = CreateUser$Mutation$CreateUserResult.fromJson(
        json['createUser'] as Map<String, dynamic>);
}

Map<String, dynamic> _$CreateUser$MutationToJson(
        CreateUser$Mutation instance) =>
    <String, dynamic>{
      'createUser': instance.createUser.toJson(),
    };

DeleteSession$Mutation _$DeleteSession$MutationFromJson(
    Map<String, dynamic> json) {
  return DeleteSession$Mutation()
    ..deleteSession = json['deleteSession'] as bool;
}

Map<String, dynamic> _$DeleteSession$MutationToJson(
        DeleteSession$Mutation instance) =>
    <String, dynamic>{
      'deleteSession': instance.deleteSession,
    };

FavoriteChatContact$Mutation$FavoriteChatContactResult$ChatContact
    _$FavoriteChatContact$Mutation$FavoriteChatContactResult$ChatContactFromJson(
        Map<String, dynamic> json) {
  return FavoriteChatContact$Mutation$FavoriteChatContactResult$ChatContact()
    ..$$typename = json['__typename'] as String?
    ..favoritePosition = (json['favoritePosition'] as num?)?.toDouble();
}

Map<String, dynamic>
    _$FavoriteChatContact$Mutation$FavoriteChatContactResult$ChatContactToJson(
            FavoriteChatContact$Mutation$FavoriteChatContactResult$ChatContact
                instance) =>
        <String, dynamic>{
          '__typename': instance.$$typename,
          'favoritePosition': instance.favoritePosition,
        };

FavoriteChatContact$Mutation$FavoriteChatContactResult$FavoriteChatContactError
    _$FavoriteChatContact$Mutation$FavoriteChatContactResult$FavoriteChatContactErrorFromJson(
        Map<String, dynamic> json) {
  return FavoriteChatContact$Mutation$FavoriteChatContactResult$FavoriteChatContactError()
    ..$$typename = json['__typename'] as String?
    ..code = _$enumDecode(_$FavoriteChatContactErrorCodeEnumMap, json['code'],
        unknownValue: FavoriteChatContactErrorCode.artemisUnknown);
}

Map<String, dynamic>
    _$FavoriteChatContact$Mutation$FavoriteChatContactResult$FavoriteChatContactErrorToJson(
            FavoriteChatContact$Mutation$FavoriteChatContactResult$FavoriteChatContactError
                instance) =>
        <String, dynamic>{
          '__typename': instance.$$typename,
          'code': _$FavoriteChatContactErrorCodeEnumMap[instance.code],
        };

const _$FavoriteChatContactErrorCodeEnumMap = {
  FavoriteChatContactErrorCode.unknownChatContact: 'UNKNOWN_CHAT_CONTACT',
  FavoriteChatContactErrorCode.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

FavoriteChatContact$Mutation$FavoriteChatContactResult
    _$FavoriteChatContact$Mutation$FavoriteChatContactResultFromJson(
        Map<String, dynamic> json) {
  return FavoriteChatContact$Mutation$FavoriteChatContactResult()
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic>
    _$FavoriteChatContact$Mutation$FavoriteChatContactResultToJson(
            FavoriteChatContact$Mutation$FavoriteChatContactResult instance) =>
        <String, dynamic>{
          '__typename': instance.$$typename,
        };

FavoriteChatContact$Mutation _$FavoriteChatContact$MutationFromJson(
    Map<String, dynamic> json) {
  return FavoriteChatContact$Mutation()
    ..favoriteChatContact =
        FavoriteChatContact$Mutation$FavoriteChatContactResult.fromJson(
            json['favoriteChatContact'] as Map<String, dynamic>);
}

Map<String, dynamic> _$FavoriteChatContact$MutationToJson(
        FavoriteChatContact$Mutation instance) =>
    <String, dynamic>{
      'favoriteChatContact': instance.favoriteChatContact.toJson(),
    };

PostChatMessage$Mutation$PostChatMessageResult$ChatMessage$ChatItem
    _$PostChatMessage$Mutation$PostChatMessageResult$ChatMessage$ChatItemFromJson(
        Map<String, dynamic> json) {
  return PostChatMessage$Mutation$PostChatMessageResult$ChatMessage$ChatItem()
    ..id = json['id'] as String;
}

Map<String, dynamic>
    _$PostChatMessage$Mutation$PostChatMessageResult$ChatMessage$ChatItemToJson(
            PostChatMessage$Mutation$PostChatMessageResult$ChatMessage$ChatItem
                instance) =>
        <String, dynamic>{
          'id': instance.id,
        };

PostChatMessage$Mutation$PostChatMessageResult$ChatMessage$Attachment$ImageAttachment
    _$PostChatMessage$Mutation$PostChatMessageResult$ChatMessage$Attachment$ImageAttachmentFromJson(
        Map<String, dynamic> json) {
  return PostChatMessage$Mutation$PostChatMessageResult$ChatMessage$Attachment$ImageAttachment()
    ..$$typename = json['__typename'] as String?
    ..id = json['id'] as String
    ..original = json['original'] as String
    ..filename = json['filename'] as String
    ..size = json['size'] as int
    ..big = json['big'] as String
    ..medium = json['medium'] as String
    ..small = json['small'] as String;
}

Map<String, dynamic>
    _$PostChatMessage$Mutation$PostChatMessageResult$ChatMessage$Attachment$ImageAttachmentToJson(
            PostChatMessage$Mutation$PostChatMessageResult$ChatMessage$Attachment$ImageAttachment
                instance) =>
        <String, dynamic>{
          '__typename': instance.$$typename,
          'id': instance.id,
          'original': instance.original,
          'filename': instance.filename,
          'size': instance.size,
          'big': instance.big,
          'medium': instance.medium,
          'small': instance.small,
        };

PostChatMessage$Mutation$PostChatMessageResult$ChatMessage$Attachment
    _$PostChatMessage$Mutation$PostChatMessageResult$ChatMessage$AttachmentFromJson(
        Map<String, dynamic> json) {
  return PostChatMessage$Mutation$PostChatMessageResult$ChatMessage$Attachment()
    ..$$typename = json['__typename'] as String?
    ..id = json['id'] as String
    ..original = json['original'] as String
    ..filename = json['filename'] as String
    ..size = json['size'] as int;
}

Map<String, dynamic>
    _$PostChatMessage$Mutation$PostChatMessageResult$ChatMessage$AttachmentToJson(
            PostChatMessage$Mutation$PostChatMessageResult$ChatMessage$Attachment
                instance) =>
        <String, dynamic>{
          '__typename': instance.$$typename,
          'id': instance.id,
          'original': instance.original,
          'filename': instance.filename,
          'size': instance.size,
        };

PostChatMessage$Mutation$PostChatMessageResult$ChatMessage
    _$PostChatMessage$Mutation$PostChatMessageResult$ChatMessageFromJson(
        Map<String, dynamic> json) {
  return PostChatMessage$Mutation$PostChatMessageResult$ChatMessage()
    ..$$typename = json['__typename'] as String?
    ..id = json['id'] as String
    ..chatId = json['chatId'] as String
    ..authorId = json['authorId'] as String
    ..repliesTo = json['repliesTo'] == null
        ? null
        : PostChatMessage$Mutation$PostChatMessageResult$ChatMessage$ChatItem
            .fromJson(json['repliesTo'] as Map<String, dynamic>)
    ..text = json['text'] as String?
    ..attachments = (json['attachments'] as List<dynamic>)
        .map((e) =>
            PostChatMessage$Mutation$PostChatMessageResult$ChatMessage$Attachment
                .fromJson(e as Map<String, dynamic>))
        .toList()
    ..at = DateTime.parse(json['at'] as String);
}

Map<String,
    dynamic> _$PostChatMessage$Mutation$PostChatMessageResult$ChatMessageToJson(
        PostChatMessage$Mutation$PostChatMessageResult$ChatMessage instance) =>
    <String, dynamic>{
      '__typename': instance.$$typename,
      'id': instance.id,
      'chatId': instance.chatId,
      'authorId': instance.authorId,
      'repliesTo': instance.repliesTo?.toJson(),
      'text': instance.text,
      'attachments': instance.attachments.map((e) => e.toJson()).toList(),
      'at': instance.at.toIso8601String(),
    };

PostChatMessage$Mutation$PostChatMessageResult$PostChatMessageError
    _$PostChatMessage$Mutation$PostChatMessageResult$PostChatMessageErrorFromJson(
        Map<String, dynamic> json) {
  return PostChatMessage$Mutation$PostChatMessageResult$PostChatMessageError()
    ..$$typename = json['__typename'] as String?
    ..code = _$enumDecode(_$PostChatMessageErrorCodeEnumMap, json['code'],
        unknownValue: PostChatMessageErrorCode.artemisUnknown);
}

Map<String, dynamic>
    _$PostChatMessage$Mutation$PostChatMessageResult$PostChatMessageErrorToJson(
            PostChatMessage$Mutation$PostChatMessageResult$PostChatMessageError
                instance) =>
        <String, dynamic>{
          '__typename': instance.$$typename,
          'code': _$PostChatMessageErrorCodeEnumMap[instance.code],
        };

const _$PostChatMessageErrorCodeEnumMap = {
  PostChatMessageErrorCode.blocked: 'BLOCKED',
  PostChatMessageErrorCode.noTextAndNoAttachment: 'NO_TEXT_AND_NO_ATTACHMENT',
  PostChatMessageErrorCode.notMember: 'NOT_MEMBER',
  PostChatMessageErrorCode.unknownAttachment: 'UNKNOWN_ATTACHMENT',
  PostChatMessageErrorCode.unknownChat: 'UNKNOWN_CHAT',
  PostChatMessageErrorCode.unknownReplyingChatItem:
      'UNKNOWN_REPLYING_CHAT_ITEM',
  PostChatMessageErrorCode.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

PostChatMessage$Mutation$PostChatMessageResult
    _$PostChatMessage$Mutation$PostChatMessageResultFromJson(
        Map<String, dynamic> json) {
  return PostChatMessage$Mutation$PostChatMessageResult()
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic> _$PostChatMessage$Mutation$PostChatMessageResultToJson(
        PostChatMessage$Mutation$PostChatMessageResult instance) =>
    <String, dynamic>{
      '__typename': instance.$$typename,
    };

PostChatMessage$Mutation _$PostChatMessage$MutationFromJson(
    Map<String, dynamic> json) {
  return PostChatMessage$Mutation()
    ..postChatMessage = PostChatMessage$Mutation$PostChatMessageResult.fromJson(
        json['postChatMessage'] as Map<String, dynamic>);
}

Map<String, dynamic> _$PostChatMessage$MutationToJson(
        PostChatMessage$Mutation instance) =>
    <String, dynamic>{
      'postChatMessage': instance.postChatMessage.toJson(),
    };

CreateSession$Mutation$CreateSessionResult$CreateSessionOk$Session
    _$CreateSession$Mutation$CreateSessionResult$CreateSessionOk$SessionFromJson(
        Map<String, dynamic> json) {
  return CreateSession$Mutation$CreateSessionResult$CreateSessionOk$Session()
    ..token = json['token'] as String
    ..expireAt = DateTime.parse(json['expireAt'] as String);
}

Map<String, dynamic>
    _$CreateSession$Mutation$CreateSessionResult$CreateSessionOk$SessionToJson(
            CreateSession$Mutation$CreateSessionResult$CreateSessionOk$Session
                instance) =>
        <String, dynamic>{
          'token': instance.token,
          'expireAt': instance.expireAt.toIso8601String(),
        };

CreateSession$Mutation$CreateSessionResult$CreateSessionOk$MyUser$UserAvatar$CropArea$Point
    _$CreateSession$Mutation$CreateSessionResult$CreateSessionOk$MyUser$UserAvatar$CropArea$PointFromJson(
        Map<String, dynamic> json) {
  return CreateSession$Mutation$CreateSessionResult$CreateSessionOk$MyUser$UserAvatar$CropArea$Point()
    ..x = json['x'] as int
    ..y = json['y'] as int;
}

Map<String, dynamic>
    _$CreateSession$Mutation$CreateSessionResult$CreateSessionOk$MyUser$UserAvatar$CropArea$PointToJson(
            CreateSession$Mutation$CreateSessionResult$CreateSessionOk$MyUser$UserAvatar$CropArea$Point
                instance) =>
        <String, dynamic>{
          'x': instance.x,
          'y': instance.y,
        };

CreateSession$Mutation$CreateSessionResult$CreateSessionOk$MyUser$UserAvatar$CropArea
    _$CreateSession$Mutation$CreateSessionResult$CreateSessionOk$MyUser$UserAvatar$CropAreaFromJson(
        Map<String, dynamic> json) {
  return CreateSession$Mutation$CreateSessionResult$CreateSessionOk$MyUser$UserAvatar$CropArea()
    ..topLeft =
        CreateSession$Mutation$CreateSessionResult$CreateSessionOk$MyUser$UserAvatar$CropArea$Point
            .fromJson(json['topLeft'] as Map<String, dynamic>)
    ..bottomRight =
        CreateSession$Mutation$CreateSessionResult$CreateSessionOk$MyUser$UserAvatar$CropArea$Point
            .fromJson(json['bottomRight'] as Map<String, dynamic>)
    ..angle = _$enumDecodeNullable(_$AngleEnumMap, json['angle'],
        unknownValue: Angle.artemisUnknown);
}

Map<String, dynamic>
    _$CreateSession$Mutation$CreateSessionResult$CreateSessionOk$MyUser$UserAvatar$CropAreaToJson(
            CreateSession$Mutation$CreateSessionResult$CreateSessionOk$MyUser$UserAvatar$CropArea
                instance) =>
        <String, dynamic>{
          'topLeft': instance.topLeft.toJson(),
          'bottomRight': instance.bottomRight.toJson(),
          'angle': _$AngleEnumMap[instance.angle],
        };

K? _$enumDecodeNullable<K, V>(
  Map<K, V> enumValues,
  dynamic source, {
  K? unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<K, V>(enumValues, source, unknownValue: unknownValue);
}

const _$AngleEnumMap = {
  Angle.deg0: 'DEG0',
  Angle.deg90: 'DEG90',
  Angle.deg180: 'DEG180',
  Angle.deg270: 'DEG270',
  Angle.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

CreateSession$Mutation$CreateSessionResult$CreateSessionOk$MyUser$UserAvatar
    _$CreateSession$Mutation$CreateSessionResult$CreateSessionOk$MyUser$UserAvatarFromJson(
        Map<String, dynamic> json) {
  return CreateSession$Mutation$CreateSessionResult$CreateSessionOk$MyUser$UserAvatar()
    ..crop = json['crop'] == null
        ? null
        : CreateSession$Mutation$CreateSessionResult$CreateSessionOk$MyUser$UserAvatar$CropArea
            .fromJson(json['crop'] as Map<String, dynamic>)
    ..original = json['original'] as String
    ..full = json['full'] as String
    ..big = json['big'] as String
    ..medium = json['medium'] as String
    ..small = json['small'] as String;
}

Map<String, dynamic>
    _$CreateSession$Mutation$CreateSessionResult$CreateSessionOk$MyUser$UserAvatarToJson(
            CreateSession$Mutation$CreateSessionResult$CreateSessionOk$MyUser$UserAvatar
                instance) =>
        <String, dynamic>{
          'crop': instance.crop?.toJson(),
          'original': instance.original,
          'full': instance.full,
          'big': instance.big,
          'medium': instance.medium,
          'small': instance.small,
        };

CreateSession$Mutation$CreateSessionResult$CreateSessionOk$MyUser
    _$CreateSession$Mutation$CreateSessionResult$CreateSessionOk$MyUserFromJson(
        Map<String, dynamic> json) {
  return CreateSession$Mutation$CreateSessionResult$CreateSessionOk$MyUser()
    ..id = json['id'] as String
    ..num = json['num'] as String
    ..login = json['login'] as String?
    ..name = json['name'] as String?
    ..bio = json['bio'] as String?
    ..avatar = json['avatar'] == null
        ? null
        : CreateSession$Mutation$CreateSessionResult$CreateSessionOk$MyUser$UserAvatar
            .fromJson(json['avatar'] as Map<String, dynamic>);
}

Map<String, dynamic>
    _$CreateSession$Mutation$CreateSessionResult$CreateSessionOk$MyUserToJson(
            CreateSession$Mutation$CreateSessionResult$CreateSessionOk$MyUser
                instance) =>
        <String, dynamic>{
          'id': instance.id,
          'num': instance.num,
          'login': instance.login,
          'name': instance.name,
          'bio': instance.bio,
          'avatar': instance.avatar?.toJson(),
        };

CreateSession$Mutation$CreateSessionResult$CreateSessionOk
    _$CreateSession$Mutation$CreateSessionResult$CreateSessionOkFromJson(
        Map<String, dynamic> json) {
  return CreateSession$Mutation$CreateSessionResult$CreateSessionOk()
    ..$$typename = json['__typename'] as String?
    ..session =
        CreateSession$Mutation$CreateSessionResult$CreateSessionOk$Session
            .fromJson(json['session'] as Map<String, dynamic>)
    ..user = CreateSession$Mutation$CreateSessionResult$CreateSessionOk$MyUser
        .fromJson(json['user'] as Map<String, dynamic>);
}

Map<String,
    dynamic> _$CreateSession$Mutation$CreateSessionResult$CreateSessionOkToJson(
        CreateSession$Mutation$CreateSessionResult$CreateSessionOk instance) =>
    <String, dynamic>{
      '__typename': instance.$$typename,
      'session': instance.session.toJson(),
      'user': instance.user.toJson(),
    };

CreateSession$Mutation$CreateSessionResult$CreateSessionError
    _$CreateSession$Mutation$CreateSessionResult$CreateSessionErrorFromJson(
        Map<String, dynamic> json) {
  return CreateSession$Mutation$CreateSessionResult$CreateSessionError()
    ..$$typename = json['__typename'] as String?
    ..code = _$enumDecode(_$CreateSessionErrorCodeEnumMap, json['code'],
        unknownValue: CreateSessionErrorCode.artemisUnknown);
}

Map<String, dynamic>
    _$CreateSession$Mutation$CreateSessionResult$CreateSessionErrorToJson(
            CreateSession$Mutation$CreateSessionResult$CreateSessionError
                instance) =>
        <String, dynamic>{
          '__typename': instance.$$typename,
          'code': _$CreateSessionErrorCodeEnumMap[instance.code],
        };

const _$CreateSessionErrorCodeEnumMap = {
  CreateSessionErrorCode.unknownUser: 'UNKNOWN_USER',
  CreateSessionErrorCode.wrongPassword: 'WRONG_PASSWORD',
  CreateSessionErrorCode.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

CreateSession$Mutation$CreateSessionResult
    _$CreateSession$Mutation$CreateSessionResultFromJson(
        Map<String, dynamic> json) {
  return CreateSession$Mutation$CreateSessionResult()
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic> _$CreateSession$Mutation$CreateSessionResultToJson(
        CreateSession$Mutation$CreateSessionResult instance) =>
    <String, dynamic>{
      '__typename': instance.$$typename,
    };

CreateSession$Mutation _$CreateSession$MutationFromJson(
    Map<String, dynamic> json) {
  return CreateSession$Mutation()
    ..createSession = CreateSession$Mutation$CreateSessionResult.fromJson(
        json['createSession'] as Map<String, dynamic>);
}

Map<String, dynamic> _$CreateSession$MutationToJson(
        CreateSession$Mutation instance) =>
    <String, dynamic>{
      'createSession': instance.createSession.toJson(),
    };

DeleteChatContact$Mutation _$DeleteChatContact$MutationFromJson(
    Map<String, dynamic> json) {
  return DeleteChatContact$Mutation()
    ..deleteChatContact = json['deleteChatContact'] as bool;
}

Map<String, dynamic> _$DeleteChatContact$MutationToJson(
        DeleteChatContact$Mutation instance) =>
    <String, dynamic>{
      'deleteChatContact': instance.deleteChatContact,
    };

CreateChatContact$Mutation$CreateChatContactResult$ChatContact$ChatUser$User$UserAvatar
    _$CreateChatContact$Mutation$CreateChatContactResult$ChatContact$ChatUser$User$UserAvatarFromJson(
        Map<String, dynamic> json) {
  return CreateChatContact$Mutation$CreateChatContactResult$ChatContact$ChatUser$User$UserAvatar()
    ..big = json['big'] as String;
}

Map<String, dynamic>
    _$CreateChatContact$Mutation$CreateChatContactResult$ChatContact$ChatUser$User$UserAvatarToJson(
            CreateChatContact$Mutation$CreateChatContactResult$ChatContact$ChatUser$User$UserAvatar
                instance) =>
        <String, dynamic>{
          'big': instance.big,
        };

CreateChatContact$Mutation$CreateChatContactResult$ChatContact$ChatUser$User
    _$CreateChatContact$Mutation$CreateChatContactResult$ChatContact$ChatUser$UserFromJson(
        Map<String, dynamic> json) {
  return CreateChatContact$Mutation$CreateChatContactResult$ChatContact$ChatUser$User()
    ..id = json['id'] as String
    ..num = json['num'] as String
    ..name = json['name'] as String?
    ..avatar = json['avatar'] == null
        ? null
        : CreateChatContact$Mutation$CreateChatContactResult$ChatContact$ChatUser$User$UserAvatar
            .fromJson(json['avatar'] as Map<String, dynamic>);
}

Map<String, dynamic>
    _$CreateChatContact$Mutation$CreateChatContactResult$ChatContact$ChatUser$UserToJson(
            CreateChatContact$Mutation$CreateChatContactResult$ChatContact$ChatUser$User
                instance) =>
        <String, dynamic>{
          'id': instance.id,
          'num': instance.num,
          'name': instance.name,
          'avatar': instance.avatar?.toJson(),
        };

CreateChatContact$Mutation$CreateChatContactResult$ChatContact$ChatUser
    _$CreateChatContact$Mutation$CreateChatContactResult$ChatContact$ChatUserFromJson(
        Map<String, dynamic> json) {
  return CreateChatContact$Mutation$CreateChatContactResult$ChatContact$ChatUser()
    ..id = json['id'] as String
    ..user =
        CreateChatContact$Mutation$CreateChatContactResult$ChatContact$ChatUser$User
            .fromJson(json['user'] as Map<String, dynamic>);
}

Map<String, dynamic>
    _$CreateChatContact$Mutation$CreateChatContactResult$ChatContact$ChatUserToJson(
            CreateChatContact$Mutation$CreateChatContactResult$ChatContact$ChatUser
                instance) =>
        <String, dynamic>{
          'id': instance.id,
          'user': instance.user.toJson(),
        };

CreateChatContact$Mutation$CreateChatContactResult$ChatContact
    _$CreateChatContact$Mutation$CreateChatContactResult$ChatContactFromJson(
        Map<String, dynamic> json) {
  return CreateChatContact$Mutation$CreateChatContactResult$ChatContact()
    ..$$typename = json['__typename'] as String?
    ..id = json['id'] as String
    ..name = json['name'] as String
    ..chatUsers = (json['chatUsers'] as List<dynamic>)
        .map((e) =>
            CreateChatContact$Mutation$CreateChatContactResult$ChatContact$ChatUser
                .fromJson(e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic>
    _$CreateChatContact$Mutation$CreateChatContactResult$ChatContactToJson(
            CreateChatContact$Mutation$CreateChatContactResult$ChatContact
                instance) =>
        <String, dynamic>{
          '__typename': instance.$$typename,
          'id': instance.id,
          'name': instance.name,
          'chatUsers': instance.chatUsers.map((e) => e.toJson()).toList(),
        };

CreateChatContact$Mutation$CreateChatContactResult$CreateChatContactError
    _$CreateChatContact$Mutation$CreateChatContactResult$CreateChatContactErrorFromJson(
        Map<String, dynamic> json) {
  return CreateChatContact$Mutation$CreateChatContactResult$CreateChatContactError()
    ..$$typename = json['__typename'] as String?
    ..code = _$enumDecode(_$CreateChatContactErrorCodeEnumMap, json['code'],
        unknownValue: CreateChatContactErrorCode.artemisUnknown);
}

Map<String, dynamic>
    _$CreateChatContact$Mutation$CreateChatContactResult$CreateChatContactErrorToJson(
            CreateChatContact$Mutation$CreateChatContactResult$CreateChatContactError
                instance) =>
        <String, dynamic>{
          '__typename': instance.$$typename,
          'code': _$CreateChatContactErrorCodeEnumMap[instance.code],
        };

const _$CreateChatContactErrorCodeEnumMap = {
  CreateChatContactErrorCode.unknownUser: 'UNKNOWN_USER',
  CreateChatContactErrorCode.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

CreateChatContact$Mutation$CreateChatContactResult
    _$CreateChatContact$Mutation$CreateChatContactResultFromJson(
        Map<String, dynamic> json) {
  return CreateChatContact$Mutation$CreateChatContactResult()
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic> _$CreateChatContact$Mutation$CreateChatContactResultToJson(
        CreateChatContact$Mutation$CreateChatContactResult instance) =>
    <String, dynamic>{
      '__typename': instance.$$typename,
    };

CreateChatContact$Mutation _$CreateChatContact$MutationFromJson(
    Map<String, dynamic> json) {
  return CreateChatContact$Mutation()
    ..createChatContact =
        CreateChatContact$Mutation$CreateChatContactResult.fromJson(
            json['createChatContact'] as Map<String, dynamic>);
}

Map<String, dynamic> _$CreateChatContact$MutationToJson(
        CreateChatContact$Mutation instance) =>
    <String, dynamic>{
      'createChatContact': instance.createChatContact.toJson(),
    };

ChatContactRecord _$ChatContactRecordFromJson(Map<String, dynamic> json) {
  return ChatContactRecord(
    userId: json['userId'] as String?,
    email: json['email'] as String?,
    phone: json['phone'] as String?,
  );
}

Map<String, dynamic> _$ChatContactRecordToJson(ChatContactRecord instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'email': instance.email,
      'phone': instance.phone,
    };

DeleteUserBio$Mutation$MyUser _$DeleteUserBio$Mutation$MyUserFromJson(
    Map<String, dynamic> json) {
  return DeleteUserBio$Mutation$MyUser()..bio = json['bio'] as String?;
}

Map<String, dynamic> _$DeleteUserBio$Mutation$MyUserToJson(
        DeleteUserBio$Mutation$MyUser instance) =>
    <String, dynamic>{
      'bio': instance.bio,
    };

DeleteUserBio$Mutation _$DeleteUserBio$MutationFromJson(
    Map<String, dynamic> json) {
  return DeleteUserBio$Mutation()
    ..deleteUserBio = DeleteUserBio$Mutation$MyUser.fromJson(
        json['deleteUserBio'] as Map<String, dynamic>);
}

Map<String, dynamic> _$DeleteUserBio$MutationToJson(
        DeleteUserBio$Mutation instance) =>
    <String, dynamic>{
      'deleteUserBio': instance.deleteUserBio.toJson(),
    };

UpdateUserBio$Mutation$MyUser _$UpdateUserBio$Mutation$MyUserFromJson(
    Map<String, dynamic> json) {
  return UpdateUserBio$Mutation$MyUser()..bio = json['bio'] as String?;
}

Map<String, dynamic> _$UpdateUserBio$Mutation$MyUserToJson(
        UpdateUserBio$Mutation$MyUser instance) =>
    <String, dynamic>{
      'bio': instance.bio,
    };

UpdateUserBio$Mutation _$UpdateUserBio$MutationFromJson(
    Map<String, dynamic> json) {
  return UpdateUserBio$Mutation()
    ..updateUserBio = UpdateUserBio$Mutation$MyUser.fromJson(
        json['updateUserBio'] as Map<String, dynamic>);
}

Map<String, dynamic> _$UpdateUserBio$MutationToJson(
        UpdateUserBio$Mutation instance) =>
    <String, dynamic>{
      'updateUserBio': instance.updateUserBio.toJson(),
    };

ChatContacts$Query$ChatContactConnection$ChatContact$ChatUser$User$UserAvatar
    _$ChatContacts$Query$ChatContactConnection$ChatContact$ChatUser$User$UserAvatarFromJson(
        Map<String, dynamic> json) {
  return ChatContacts$Query$ChatContactConnection$ChatContact$ChatUser$User$UserAvatar()
    ..big = json['big'] as String;
}

Map<String, dynamic>
    _$ChatContacts$Query$ChatContactConnection$ChatContact$ChatUser$User$UserAvatarToJson(
            ChatContacts$Query$ChatContactConnection$ChatContact$ChatUser$User$UserAvatar
                instance) =>
        <String, dynamic>{
          'big': instance.big,
        };

ChatContacts$Query$ChatContactConnection$ChatContact$ChatUser$User
    _$ChatContacts$Query$ChatContactConnection$ChatContact$ChatUser$UserFromJson(
        Map<String, dynamic> json) {
  return ChatContacts$Query$ChatContactConnection$ChatContact$ChatUser$User()
    ..id = json['id'] as String
    ..num = json['num'] as String
    ..name = json['name'] as String?
    ..avatar = json['avatar'] == null
        ? null
        : ChatContacts$Query$ChatContactConnection$ChatContact$ChatUser$User$UserAvatar
            .fromJson(json['avatar'] as Map<String, dynamic>);
}

Map<String, dynamic>
    _$ChatContacts$Query$ChatContactConnection$ChatContact$ChatUser$UserToJson(
            ChatContacts$Query$ChatContactConnection$ChatContact$ChatUser$User
                instance) =>
        <String, dynamic>{
          'id': instance.id,
          'num': instance.num,
          'name': instance.name,
          'avatar': instance.avatar?.toJson(),
        };

ChatContacts$Query$ChatContactConnection$ChatContact$ChatUser
    _$ChatContacts$Query$ChatContactConnection$ChatContact$ChatUserFromJson(
        Map<String, dynamic> json) {
  return ChatContacts$Query$ChatContactConnection$ChatContact$ChatUser()
    ..id = json['id'] as String
    ..user = ChatContacts$Query$ChatContactConnection$ChatContact$ChatUser$User
        .fromJson(json['user'] as Map<String, dynamic>);
}

Map<String, dynamic>
    _$ChatContacts$Query$ChatContactConnection$ChatContact$ChatUserToJson(
            ChatContacts$Query$ChatContactConnection$ChatContact$ChatUser
                instance) =>
        <String, dynamic>{
          'id': instance.id,
          'user': instance.user.toJson(),
        };

ChatContacts$Query$ChatContactConnection$ChatContact
    _$ChatContacts$Query$ChatContactConnection$ChatContactFromJson(
        Map<String, dynamic> json) {
  return ChatContacts$Query$ChatContactConnection$ChatContact()
    ..id = json['id'] as String
    ..name = json['name'] as String
    ..chatUsers = (json['chatUsers'] as List<dynamic>)
        .map((e) =>
            ChatContacts$Query$ChatContactConnection$ChatContact$ChatUser
                .fromJson(e as Map<String, dynamic>))
        .toList()
    ..favoritePosition = (json['favoritePosition'] as num?)?.toDouble();
}

Map<String, dynamic>
    _$ChatContacts$Query$ChatContactConnection$ChatContactToJson(
            ChatContacts$Query$ChatContactConnection$ChatContact instance) =>
        <String, dynamic>{
          'id': instance.id,
          'name': instance.name,
          'chatUsers': instance.chatUsers.map((e) => e.toJson()).toList(),
          'favoritePosition': instance.favoritePosition,
        };

ChatContacts$Query$ChatContactConnection
    _$ChatContacts$Query$ChatContactConnectionFromJson(
        Map<String, dynamic> json) {
  return ChatContacts$Query$ChatContactConnection()
    ..nodes = (json['nodes'] as List<dynamic>)
        .map((e) =>
            ChatContacts$Query$ChatContactConnection$ChatContact.fromJson(
                e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$ChatContacts$Query$ChatContactConnectionToJson(
        ChatContacts$Query$ChatContactConnection instance) =>
    <String, dynamic>{
      'nodes': instance.nodes.map((e) => e.toJson()).toList(),
    };

ChatContacts$Query _$ChatContacts$QueryFromJson(Map<String, dynamic> json) {
  return ChatContacts$Query()
    ..chatContacts = ChatContacts$Query$ChatContactConnection.fromJson(
        json['chatContacts'] as Map<String, dynamic>);
}

Map<String, dynamic> _$ChatContacts$QueryToJson(ChatContacts$Query instance) =>
    <String, dynamic>{
      'chatContacts': instance.chatContacts.toJson(),
    };

UpdateUserLogin$Mutation$UpdateUserLoginResult$MyUser
    _$UpdateUserLogin$Mutation$UpdateUserLoginResult$MyUserFromJson(
        Map<String, dynamic> json) {
  return UpdateUserLogin$Mutation$UpdateUserLoginResult$MyUser()
    ..$$typename = json['__typename'] as String?
    ..login = json['login'] as String?;
}

Map<String, dynamic>
    _$UpdateUserLogin$Mutation$UpdateUserLoginResult$MyUserToJson(
            UpdateUserLogin$Mutation$UpdateUserLoginResult$MyUser instance) =>
        <String, dynamic>{
          '__typename': instance.$$typename,
          'login': instance.login,
        };

UpdateUserLogin$Mutation$UpdateUserLoginResult$UpdateUserLoginError
    _$UpdateUserLogin$Mutation$UpdateUserLoginResult$UpdateUserLoginErrorFromJson(
        Map<String, dynamic> json) {
  return UpdateUserLogin$Mutation$UpdateUserLoginResult$UpdateUserLoginError()
    ..$$typename = json['__typename'] as String?
    ..code = _$enumDecode(_$UpdateUserLoginErrorCodeEnumMap, json['code'],
        unknownValue: UpdateUserLoginErrorCode.artemisUnknown);
}

Map<String, dynamic>
    _$UpdateUserLogin$Mutation$UpdateUserLoginResult$UpdateUserLoginErrorToJson(
            UpdateUserLogin$Mutation$UpdateUserLoginResult$UpdateUserLoginError
                instance) =>
        <String, dynamic>{
          '__typename': instance.$$typename,
          'code': _$UpdateUserLoginErrorCodeEnumMap[instance.code],
        };

const _$UpdateUserLoginErrorCodeEnumMap = {
  UpdateUserLoginErrorCode.occupied: 'OCCUPIED',
  UpdateUserLoginErrorCode.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

UpdateUserLogin$Mutation$UpdateUserLoginResult
    _$UpdateUserLogin$Mutation$UpdateUserLoginResultFromJson(
        Map<String, dynamic> json) {
  return UpdateUserLogin$Mutation$UpdateUserLoginResult()
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic> _$UpdateUserLogin$Mutation$UpdateUserLoginResultToJson(
        UpdateUserLogin$Mutation$UpdateUserLoginResult instance) =>
    <String, dynamic>{
      '__typename': instance.$$typename,
    };

UpdateUserLogin$Mutation _$UpdateUserLogin$MutationFromJson(
    Map<String, dynamic> json) {
  return UpdateUserLogin$Mutation()
    ..updateUserLogin = UpdateUserLogin$Mutation$UpdateUserLoginResult.fromJson(
        json['updateUserLogin'] as Map<String, dynamic>);
}

Map<String, dynamic> _$UpdateUserLogin$MutationToJson(
        UpdateUserLogin$Mutation instance) =>
    <String, dynamic>{
      'updateUserLogin': instance.updateUserLogin.toJson(),
    };

Messages$Query$Chat$ChatItemConnection$ChatItem$ChatMemberInfo
    _$Messages$Query$Chat$ChatItemConnection$ChatItem$ChatMemberInfoFromJson(
        Map<String, dynamic> json) {
  return Messages$Query$Chat$ChatItemConnection$ChatItem$ChatMemberInfo()
    ..$$typename = json['__typename'] as String?
    ..id = json['id'] as String
    ..chatId = json['chatId'] as String
    ..authorId = json['authorId'] as String
    ..at = DateTime.parse(json['at'] as String)
    ..byId = json['byId'] as String
    ..action = _$enumDecode(_$ChatMemberInfoActionEnumMap, json['action'],
        unknownValue: ChatMemberInfoAction.artemisUnknown);
}

Map<String, dynamic>
    _$Messages$Query$Chat$ChatItemConnection$ChatItem$ChatMemberInfoToJson(
            Messages$Query$Chat$ChatItemConnection$ChatItem$ChatMemberInfo
                instance) =>
        <String, dynamic>{
          '__typename': instance.$$typename,
          'id': instance.id,
          'chatId': instance.chatId,
          'authorId': instance.authorId,
          'at': instance.at.toIso8601String(),
          'byId': instance.byId,
          'action': _$ChatMemberInfoActionEnumMap[instance.action],
        };

const _$ChatMemberInfoActionEnumMap = {
  ChatMemberInfoAction.added: 'ADDED',
  ChatMemberInfoAction.removed: 'REMOVED',
  ChatMemberInfoAction.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

Messages$Query$Chat$ChatItemConnection$ChatItem$ChatMessage$ChatItem
    _$Messages$Query$Chat$ChatItemConnection$ChatItem$ChatMessage$ChatItemFromJson(
        Map<String, dynamic> json) {
  return Messages$Query$Chat$ChatItemConnection$ChatItem$ChatMessage$ChatItem()
    ..id = json['id'] as String;
}

Map<String, dynamic>
    _$Messages$Query$Chat$ChatItemConnection$ChatItem$ChatMessage$ChatItemToJson(
            Messages$Query$Chat$ChatItemConnection$ChatItem$ChatMessage$ChatItem
                instance) =>
        <String, dynamic>{
          'id': instance.id,
        };

Messages$Query$Chat$ChatItemConnection$ChatItem$ChatMessage
    _$Messages$Query$Chat$ChatItemConnection$ChatItem$ChatMessageFromJson(
        Map<String, dynamic> json) {
  return Messages$Query$Chat$ChatItemConnection$ChatItem$ChatMessage()
    ..$$typename = json['__typename'] as String?
    ..id = json['id'] as String
    ..chatId = json['chatId'] as String
    ..authorId = json['authorId'] as String
    ..at = DateTime.parse(json['at'] as String)
    ..repliesTo = json['repliesTo'] == null
        ? null
        : Messages$Query$Chat$ChatItemConnection$ChatItem$ChatMessage$ChatItem
            .fromJson(json['repliesTo'] as Map<String, dynamic>)
    ..text = json['text'] as String?;
}

Map<String, dynamic>
    _$Messages$Query$Chat$ChatItemConnection$ChatItem$ChatMessageToJson(
            Messages$Query$Chat$ChatItemConnection$ChatItem$ChatMessage
                instance) =>
        <String, dynamic>{
          '__typename': instance.$$typename,
          'id': instance.id,
          'chatId': instance.chatId,
          'authorId': instance.authorId,
          'at': instance.at.toIso8601String(),
          'repliesTo': instance.repliesTo?.toJson(),
          'text': instance.text,
        };

Messages$Query$Chat$ChatItemConnection$ChatItem$ChatForward$ChatItem
    _$Messages$Query$Chat$ChatItemConnection$ChatItem$ChatForward$ChatItemFromJson(
        Map<String, dynamic> json) {
  return Messages$Query$Chat$ChatItemConnection$ChatItem$ChatForward$ChatItem()
    ..id = json['id'] as String;
}

Map<String, dynamic>
    _$Messages$Query$Chat$ChatItemConnection$ChatItem$ChatForward$ChatItemToJson(
            Messages$Query$Chat$ChatItemConnection$ChatItem$ChatForward$ChatItem
                instance) =>
        <String, dynamic>{
          'id': instance.id,
        };

Messages$Query$Chat$ChatItemConnection$ChatItem$ChatForward
    _$Messages$Query$Chat$ChatItemConnection$ChatItem$ChatForwardFromJson(
        Map<String, dynamic> json) {
  return Messages$Query$Chat$ChatItemConnection$ChatItem$ChatForward()
    ..$$typename = json['__typename'] as String?
    ..id = json['id'] as String
    ..chatId = json['chatId'] as String
    ..authorId = json['authorId'] as String
    ..at = DateTime.parse(json['at'] as String)
    ..item =
        Messages$Query$Chat$ChatItemConnection$ChatItem$ChatForward$ChatItem
            .fromJson(json['item'] as Map<String, dynamic>);
}

Map<String, dynamic>
    _$Messages$Query$Chat$ChatItemConnection$ChatItem$ChatForwardToJson(
            Messages$Query$Chat$ChatItemConnection$ChatItem$ChatForward
                instance) =>
        <String, dynamic>{
          '__typename': instance.$$typename,
          'id': instance.id,
          'chatId': instance.chatId,
          'authorId': instance.authorId,
          'at': instance.at.toIso8601String(),
          'item': instance.item.toJson(),
        };

Messages$Query$Chat$ChatItemConnection$ChatItem
    _$Messages$Query$Chat$ChatItemConnection$ChatItemFromJson(
        Map<String, dynamic> json) {
  return Messages$Query$Chat$ChatItemConnection$ChatItem()
    ..$$typename = json['__typename'] as String?
    ..id = json['id'] as String
    ..chatId = json['chatId'] as String
    ..authorId = json['authorId'] as String
    ..at = DateTime.parse(json['at'] as String);
}

Map<String, dynamic> _$Messages$Query$Chat$ChatItemConnection$ChatItemToJson(
        Messages$Query$Chat$ChatItemConnection$ChatItem instance) =>
    <String, dynamic>{
      '__typename': instance.$$typename,
      'id': instance.id,
      'chatId': instance.chatId,
      'authorId': instance.authorId,
      'at': instance.at.toIso8601String(),
    };

Messages$Query$Chat$ChatItemConnection
    _$Messages$Query$Chat$ChatItemConnectionFromJson(
        Map<String, dynamic> json) {
  return Messages$Query$Chat$ChatItemConnection()
    ..nodes = (json['nodes'] as List<dynamic>)
        .map((e) => Messages$Query$Chat$ChatItemConnection$ChatItem.fromJson(
            e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$Messages$Query$Chat$ChatItemConnectionToJson(
        Messages$Query$Chat$ChatItemConnection instance) =>
    <String, dynamic>{
      'nodes': instance.nodes.map((e) => e.toJson()).toList(),
    };

Messages$Query$Chat _$Messages$Query$ChatFromJson(Map<String, dynamic> json) {
  return Messages$Query$Chat()
    ..items = Messages$Query$Chat$ChatItemConnection.fromJson(
        json['items'] as Map<String, dynamic>);
}

Map<String, dynamic> _$Messages$Query$ChatToJson(
        Messages$Query$Chat instance) =>
    <String, dynamic>{
      'items': instance.items.toJson(),
    };

Messages$Query _$Messages$QueryFromJson(Map<String, dynamic> json) {
  return Messages$Query()
    ..chat = json['chat'] == null
        ? null
        : Messages$Query$Chat.fromJson(json['chat'] as Map<String, dynamic>);
}

Map<String, dynamic> _$Messages$QueryToJson(Messages$Query instance) =>
    <String, dynamic>{
      'chat': instance.chat?.toJson(),
    };

User$Query$User$UserAvatar$CropArea$Point
    _$User$Query$User$UserAvatar$CropArea$PointFromJson(
        Map<String, dynamic> json) {
  return User$Query$User$UserAvatar$CropArea$Point()
    ..x = json['x'] as int
    ..y = json['y'] as int;
}

Map<String, dynamic> _$User$Query$User$UserAvatar$CropArea$PointToJson(
        User$Query$User$UserAvatar$CropArea$Point instance) =>
    <String, dynamic>{
      'x': instance.x,
      'y': instance.y,
    };

User$Query$User$UserAvatar$CropArea
    _$User$Query$User$UserAvatar$CropAreaFromJson(Map<String, dynamic> json) {
  return User$Query$User$UserAvatar$CropArea()
    ..topLeft = User$Query$User$UserAvatar$CropArea$Point.fromJson(
        json['topLeft'] as Map<String, dynamic>)
    ..bottomRight = User$Query$User$UserAvatar$CropArea$Point.fromJson(
        json['bottomRight'] as Map<String, dynamic>)
    ..angle = _$enumDecodeNullable(_$AngleEnumMap, json['angle'],
        unknownValue: Angle.artemisUnknown);
}

Map<String, dynamic> _$User$Query$User$UserAvatar$CropAreaToJson(
        User$Query$User$UserAvatar$CropArea instance) =>
    <String, dynamic>{
      'topLeft': instance.topLeft.toJson(),
      'bottomRight': instance.bottomRight.toJson(),
      'angle': _$AngleEnumMap[instance.angle],
    };

User$Query$User$UserAvatar _$User$Query$User$UserAvatarFromJson(
    Map<String, dynamic> json) {
  return User$Query$User$UserAvatar()
    ..crop = json['crop'] == null
        ? null
        : User$Query$User$UserAvatar$CropArea.fromJson(
            json['crop'] as Map<String, dynamic>)
    ..original = json['original'] as String;
}

Map<String, dynamic> _$User$Query$User$UserAvatarToJson(
        User$Query$User$UserAvatar instance) =>
    <String, dynamic>{
      'crop': instance.crop?.toJson(),
      'original': instance.original,
    };

User$Query$User$ChatContact _$User$Query$User$ChatContactFromJson(
    Map<String, dynamic> json) {
  return User$Query$User$ChatContact()
    ..id = json['id'] as String
    ..name = json['name'] as String
    ..favoritePosition = (json['favoritePosition'] as num?)?.toDouble();
}

Map<String, dynamic> _$User$Query$User$ChatContactToJson(
        User$Query$User$ChatContact instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'favoritePosition': instance.favoritePosition,
    };

User$Query$User _$User$Query$UserFromJson(Map<String, dynamic> json) {
  return User$Query$User()
    ..id = json['id'] as String
    ..num = json['num'] as String
    ..name = json['name'] as String?
    ..bio = json['bio'] as String?
    ..avatar = json['avatar'] == null
        ? null
        : User$Query$User$UserAvatar.fromJson(
            json['avatar'] as Map<String, dynamic>)
    ..mutualContactsCount = json['mutualContactsCount'] as int
    ..isDeleted = json['isDeleted'] as bool
    ..contacts = (json['contacts'] as List<dynamic>)
        .map((e) =>
            User$Query$User$ChatContact.fromJson(e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$User$Query$UserToJson(User$Query$User instance) =>
    <String, dynamic>{
      'id': instance.id,
      'num': instance.num,
      'name': instance.name,
      'bio': instance.bio,
      'avatar': instance.avatar?.toJson(),
      'mutualContactsCount': instance.mutualContactsCount,
      'isDeleted': instance.isDeleted,
      'contacts': instance.contacts.map((e) => e.toJson()).toList(),
    };

User$Query _$User$QueryFromJson(Map<String, dynamic> json) {
  return User$Query()
    ..user = json['user'] == null
        ? null
        : User$Query$User.fromJson(json['user'] as Map<String, dynamic>);
}

Map<String, dynamic> _$User$QueryToJson(User$Query instance) =>
    <String, dynamic>{
      'user': instance.user?.toJson(),
    };

MyUser$Query$MyUser$UserAvatar$CropArea$Point
    _$MyUser$Query$MyUser$UserAvatar$CropArea$PointFromJson(
        Map<String, dynamic> json) {
  return MyUser$Query$MyUser$UserAvatar$CropArea$Point()
    ..x = json['x'] as int
    ..y = json['y'] as int;
}

Map<String, dynamic> _$MyUser$Query$MyUser$UserAvatar$CropArea$PointToJson(
        MyUser$Query$MyUser$UserAvatar$CropArea$Point instance) =>
    <String, dynamic>{
      'x': instance.x,
      'y': instance.y,
    };

MyUser$Query$MyUser$UserAvatar$CropArea
    _$MyUser$Query$MyUser$UserAvatar$CropAreaFromJson(
        Map<String, dynamic> json) {
  return MyUser$Query$MyUser$UserAvatar$CropArea()
    ..topLeft = MyUser$Query$MyUser$UserAvatar$CropArea$Point.fromJson(
        json['topLeft'] as Map<String, dynamic>)
    ..bottomRight = MyUser$Query$MyUser$UserAvatar$CropArea$Point.fromJson(
        json['bottomRight'] as Map<String, dynamic>)
    ..angle = _$enumDecodeNullable(_$AngleEnumMap, json['angle'],
        unknownValue: Angle.artemisUnknown);
}

Map<String, dynamic> _$MyUser$Query$MyUser$UserAvatar$CropAreaToJson(
        MyUser$Query$MyUser$UserAvatar$CropArea instance) =>
    <String, dynamic>{
      'topLeft': instance.topLeft.toJson(),
      'bottomRight': instance.bottomRight.toJson(),
      'angle': _$AngleEnumMap[instance.angle],
    };

MyUser$Query$MyUser$UserAvatar _$MyUser$Query$MyUser$UserAvatarFromJson(
    Map<String, dynamic> json) {
  return MyUser$Query$MyUser$UserAvatar()
    ..crop = json['crop'] == null
        ? null
        : MyUser$Query$MyUser$UserAvatar$CropArea.fromJson(
            json['crop'] as Map<String, dynamic>)
    ..original = json['original'] as String
    ..full = json['full'] as String
    ..big = json['big'] as String
    ..medium = json['medium'] as String
    ..small = json['small'] as String;
}

Map<String, dynamic> _$MyUser$Query$MyUser$UserAvatarToJson(
        MyUser$Query$MyUser$UserAvatar instance) =>
    <String, dynamic>{
      'crop': instance.crop?.toJson(),
      'original': instance.original,
      'full': instance.full,
      'big': instance.big,
      'medium': instance.medium,
      'small': instance.small,
    };

MyUser$Query$MyUser _$MyUser$Query$MyUserFromJson(Map<String, dynamic> json) {
  return MyUser$Query$MyUser()
    ..id = json['id'] as String
    ..num = json['num'] as String
    ..login = json['login'] as String?
    ..name = json['name'] as String?
    ..bio = json['bio'] as String?
    ..hasPassword = json['hasPassword'] as bool
    ..avatar = json['avatar'] == null
        ? null
        : MyUser$Query$MyUser$UserAvatar.fromJson(
            json['avatar'] as Map<String, dynamic>);
}

Map<String, dynamic> _$MyUser$Query$MyUserToJson(
        MyUser$Query$MyUser instance) =>
    <String, dynamic>{
      'id': instance.id,
      'num': instance.num,
      'login': instance.login,
      'name': instance.name,
      'bio': instance.bio,
      'hasPassword': instance.hasPassword,
      'avatar': instance.avatar?.toJson(),
    };

MyUser$Query _$MyUser$QueryFromJson(Map<String, dynamic> json) {
  return MyUser$Query()
    ..myUser = json['myUser'] == null
        ? null
        : MyUser$Query$MyUser.fromJson(json['myUser'] as Map<String, dynamic>);
}

Map<String, dynamic> _$MyUser$QueryToJson(MyUser$Query instance) =>
    <String, dynamic>{
      'myUser': instance.myUser?.toJson(),
    };

FavoriteChatContacts$Query$ChatContactConnection$ChatContact$ChatUser$User$UserAvatar
    _$FavoriteChatContacts$Query$ChatContactConnection$ChatContact$ChatUser$User$UserAvatarFromJson(
        Map<String, dynamic> json) {
  return FavoriteChatContacts$Query$ChatContactConnection$ChatContact$ChatUser$User$UserAvatar()
    ..big = json['big'] as String;
}

Map<String, dynamic>
    _$FavoriteChatContacts$Query$ChatContactConnection$ChatContact$ChatUser$User$UserAvatarToJson(
            FavoriteChatContacts$Query$ChatContactConnection$ChatContact$ChatUser$User$UserAvatar
                instance) =>
        <String, dynamic>{
          'big': instance.big,
        };

FavoriteChatContacts$Query$ChatContactConnection$ChatContact$ChatUser$User
    _$FavoriteChatContacts$Query$ChatContactConnection$ChatContact$ChatUser$UserFromJson(
        Map<String, dynamic> json) {
  return FavoriteChatContacts$Query$ChatContactConnection$ChatContact$ChatUser$User()
    ..id = json['id'] as String
    ..num = json['num'] as String
    ..name = json['name'] as String?
    ..avatar = json['avatar'] == null
        ? null
        : FavoriteChatContacts$Query$ChatContactConnection$ChatContact$ChatUser$User$UserAvatar
            .fromJson(json['avatar'] as Map<String, dynamic>);
}

Map<String, dynamic>
    _$FavoriteChatContacts$Query$ChatContactConnection$ChatContact$ChatUser$UserToJson(
            FavoriteChatContacts$Query$ChatContactConnection$ChatContact$ChatUser$User
                instance) =>
        <String, dynamic>{
          'id': instance.id,
          'num': instance.num,
          'name': instance.name,
          'avatar': instance.avatar?.toJson(),
        };

FavoriteChatContacts$Query$ChatContactConnection$ChatContact$ChatUser
    _$FavoriteChatContacts$Query$ChatContactConnection$ChatContact$ChatUserFromJson(
        Map<String, dynamic> json) {
  return FavoriteChatContacts$Query$ChatContactConnection$ChatContact$ChatUser()
    ..id = json['id'] as String
    ..user =
        FavoriteChatContacts$Query$ChatContactConnection$ChatContact$ChatUser$User
            .fromJson(json['user'] as Map<String, dynamic>);
}

Map<String, dynamic>
    _$FavoriteChatContacts$Query$ChatContactConnection$ChatContact$ChatUserToJson(
            FavoriteChatContacts$Query$ChatContactConnection$ChatContact$ChatUser
                instance) =>
        <String, dynamic>{
          'id': instance.id,
          'user': instance.user.toJson(),
        };

FavoriteChatContacts$Query$ChatContactConnection$ChatContact
    _$FavoriteChatContacts$Query$ChatContactConnection$ChatContactFromJson(
        Map<String, dynamic> json) {
  return FavoriteChatContacts$Query$ChatContactConnection$ChatContact()
    ..id = json['id'] as String
    ..name = json['name'] as String
    ..chatUsers = (json['chatUsers'] as List<dynamic>)
        .map((e) =>
            FavoriteChatContacts$Query$ChatContactConnection$ChatContact$ChatUser
                .fromJson(e as Map<String, dynamic>))
        .toList()
    ..favoritePosition = (json['favoritePosition'] as num?)?.toDouble();
}

Map<String, dynamic>
    _$FavoriteChatContacts$Query$ChatContactConnection$ChatContactToJson(
            FavoriteChatContacts$Query$ChatContactConnection$ChatContact
                instance) =>
        <String, dynamic>{
          'id': instance.id,
          'name': instance.name,
          'chatUsers': instance.chatUsers.map((e) => e.toJson()).toList(),
          'favoritePosition': instance.favoritePosition,
        };

FavoriteChatContacts$Query$ChatContactConnection
    _$FavoriteChatContacts$Query$ChatContactConnectionFromJson(
        Map<String, dynamic> json) {
  return FavoriteChatContacts$Query$ChatContactConnection()
    ..nodes = (json['nodes'] as List<dynamic>)
        .map((e) => FavoriteChatContacts$Query$ChatContactConnection$ChatContact
            .fromJson(e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$FavoriteChatContacts$Query$ChatContactConnectionToJson(
        FavoriteChatContacts$Query$ChatContactConnection instance) =>
    <String, dynamic>{
      'nodes': instance.nodes.map((e) => e.toJson()).toList(),
    };

FavoriteChatContacts$Query _$FavoriteChatContacts$QueryFromJson(
    Map<String, dynamic> json) {
  return FavoriteChatContacts$Query()
    ..favoriteChatContacts =
        FavoriteChatContacts$Query$ChatContactConnection.fromJson(
            json['favoriteChatContacts'] as Map<String, dynamic>);
}

Map<String, dynamic> _$FavoriteChatContacts$QueryToJson(
        FavoriteChatContacts$Query instance) =>
    <String, dynamic>{
      'favoriteChatContacts': instance.favoriteChatContacts.toJson(),
    };

UpdateUserPassword$Mutation$UpdateUserPasswordResult$MyUser
    _$UpdateUserPassword$Mutation$UpdateUserPasswordResult$MyUserFromJson(
        Map<String, dynamic> json) {
  return UpdateUserPassword$Mutation$UpdateUserPasswordResult$MyUser()
    ..$$typename = json['__typename'] as String?
    ..hasPassword = json['hasPassword'] as bool;
}

Map<String, dynamic>
    _$UpdateUserPassword$Mutation$UpdateUserPasswordResult$MyUserToJson(
            UpdateUserPassword$Mutation$UpdateUserPasswordResult$MyUser
                instance) =>
        <String, dynamic>{
          '__typename': instance.$$typename,
          'hasPassword': instance.hasPassword,
        };

UpdateUserPassword$Mutation$UpdateUserPasswordResult$UpdateUserPasswordError
    _$UpdateUserPassword$Mutation$UpdateUserPasswordResult$UpdateUserPasswordErrorFromJson(
        Map<String, dynamic> json) {
  return UpdateUserPassword$Mutation$UpdateUserPasswordResult$UpdateUserPasswordError()
    ..$$typename = json['__typename'] as String?
    ..code = _$enumDecode(_$UpdateUserPasswordErrorCodeEnumMap, json['code'],
        unknownValue: UpdateUserPasswordErrorCode.artemisUnknown);
}

Map<String, dynamic>
    _$UpdateUserPassword$Mutation$UpdateUserPasswordResult$UpdateUserPasswordErrorToJson(
            UpdateUserPassword$Mutation$UpdateUserPasswordResult$UpdateUserPasswordError
                instance) =>
        <String, dynamic>{
          '__typename': instance.$$typename,
          'code': _$UpdateUserPasswordErrorCodeEnumMap[instance.code],
        };

const _$UpdateUserPasswordErrorCodeEnumMap = {
  UpdateUserPasswordErrorCode.wrongOldPassword: 'WRONG_OLD_PASSWORD',
  UpdateUserPasswordErrorCode.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

UpdateUserPassword$Mutation$UpdateUserPasswordResult
    _$UpdateUserPassword$Mutation$UpdateUserPasswordResultFromJson(
        Map<String, dynamic> json) {
  return UpdateUserPassword$Mutation$UpdateUserPasswordResult()
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic>
    _$UpdateUserPassword$Mutation$UpdateUserPasswordResultToJson(
            UpdateUserPassword$Mutation$UpdateUserPasswordResult instance) =>
        <String, dynamic>{
          '__typename': instance.$$typename,
        };

UpdateUserPassword$Mutation _$UpdateUserPassword$MutationFromJson(
    Map<String, dynamic> json) {
  return UpdateUserPassword$Mutation()
    ..updateUserPassword =
        UpdateUserPassword$Mutation$UpdateUserPasswordResult.fromJson(
            json['updateUserPassword'] as Map<String, dynamic>);
}

Map<String, dynamic> _$UpdateUserPassword$MutationToJson(
        UpdateUserPassword$Mutation instance) =>
    <String, dynamic>{
      'updateUserPassword': instance.updateUserPassword.toJson(),
    };

Chat$Query$Chat$ChatMemberConnection$ChatMember$ChatUser$User$UserAvatar
    _$Chat$Query$Chat$ChatMemberConnection$ChatMember$ChatUser$User$UserAvatarFromJson(
        Map<String, dynamic> json) {
  return Chat$Query$Chat$ChatMemberConnection$ChatMember$ChatUser$User$UserAvatar()
    ..big = json['big'] as String;
}

Map<String, dynamic>
    _$Chat$Query$Chat$ChatMemberConnection$ChatMember$ChatUser$User$UserAvatarToJson(
            Chat$Query$Chat$ChatMemberConnection$ChatMember$ChatUser$User$UserAvatar
                instance) =>
        <String, dynamic>{
          'big': instance.big,
        };

Chat$Query$Chat$ChatMemberConnection$ChatMember$ChatUser$User
    _$Chat$Query$Chat$ChatMemberConnection$ChatMember$ChatUser$UserFromJson(
        Map<String, dynamic> json) {
  return Chat$Query$Chat$ChatMemberConnection$ChatMember$ChatUser$User()
    ..num = json['num'] as String
    ..avatar = json['avatar'] == null
        ? null
        : Chat$Query$Chat$ChatMemberConnection$ChatMember$ChatUser$User$UserAvatar
            .fromJson(json['avatar'] as Map<String, dynamic>);
}

Map<String, dynamic>
    _$Chat$Query$Chat$ChatMemberConnection$ChatMember$ChatUser$UserToJson(
            Chat$Query$Chat$ChatMemberConnection$ChatMember$ChatUser$User
                instance) =>
        <String, dynamic>{
          'num': instance.num,
          'avatar': instance.avatar?.toJson(),
        };

Chat$Query$Chat$ChatMemberConnection$ChatMember$ChatUser
    _$Chat$Query$Chat$ChatMemberConnection$ChatMember$ChatUserFromJson(
        Map<String, dynamic> json) {
  return Chat$Query$Chat$ChatMemberConnection$ChatMember$ChatUser()
    ..id = json['id'] as String
    ..user =
        Chat$Query$Chat$ChatMemberConnection$ChatMember$ChatUser$User.fromJson(
            json['user'] as Map<String, dynamic>)
    ..name = json['name'] as String?;
}

Map<String,
    dynamic> _$Chat$Query$Chat$ChatMemberConnection$ChatMember$ChatUserToJson(
        Chat$Query$Chat$ChatMemberConnection$ChatMember$ChatUser instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user': instance.user.toJson(),
      'name': instance.name,
    };

Chat$Query$Chat$ChatMemberConnection$ChatMember
    _$Chat$Query$Chat$ChatMemberConnection$ChatMemberFromJson(
        Map<String, dynamic> json) {
  return Chat$Query$Chat$ChatMemberConnection$ChatMember()
    ..user = Chat$Query$Chat$ChatMemberConnection$ChatMember$ChatUser.fromJson(
        json['user'] as Map<String, dynamic>);
}

Map<String, dynamic> _$Chat$Query$Chat$ChatMemberConnection$ChatMemberToJson(
        Chat$Query$Chat$ChatMemberConnection$ChatMember instance) =>
    <String, dynamic>{
      'user': instance.user.toJson(),
    };

Chat$Query$Chat$ChatMemberConnection
    _$Chat$Query$Chat$ChatMemberConnectionFromJson(Map<String, dynamic> json) {
  return Chat$Query$Chat$ChatMemberConnection()
    ..nodes = (json['nodes'] as List<dynamic>)
        .map((e) => Chat$Query$Chat$ChatMemberConnection$ChatMember.fromJson(
            e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$Chat$Query$Chat$ChatMemberConnectionToJson(
        Chat$Query$Chat$ChatMemberConnection instance) =>
    <String, dynamic>{
      'nodes': instance.nodes.map((e) => e.toJson()).toList(),
    };

Chat$Query$Chat _$Chat$Query$ChatFromJson(Map<String, dynamic> json) {
  return Chat$Query$Chat()
    ..id = json['id'] as String
    ..name = json['name'] as String?
    ..members = Chat$Query$Chat$ChatMemberConnection.fromJson(
        json['members'] as Map<String, dynamic>)
    ..kind = _$enumDecode(_$ChatKindEnumMap, json['kind'],
        unknownValue: ChatKind.artemisUnknown)
    ..isHidden = json['isHidden'] as bool
    ..lastDelivery = DateTime.parse(json['lastDelivery'] as String);
}

Map<String, dynamic> _$Chat$Query$ChatToJson(Chat$Query$Chat instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'members': instance.members.toJson(),
      'kind': _$ChatKindEnumMap[instance.kind],
      'isHidden': instance.isHidden,
      'lastDelivery': instance.lastDelivery.toIso8601String(),
    };

const _$ChatKindEnumMap = {
  ChatKind.monolog: 'MONOLOG',
  ChatKind.dialog: 'DIALOG',
  ChatKind.group: 'GROUP',
  ChatKind.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

Chat$Query _$Chat$QueryFromJson(Map<String, dynamic> json) {
  return Chat$Query()
    ..chat = json['chat'] == null
        ? null
        : Chat$Query$Chat.fromJson(json['chat'] as Map<String, dynamic>);
}

Map<String, dynamic> _$Chat$QueryToJson(Chat$Query instance) =>
    <String, dynamic>{
      'chat': instance.chat?.toJson(),
    };

SearchUsers$Query$UserConnection$User$UserAvatar
    _$SearchUsers$Query$UserConnection$User$UserAvatarFromJson(
        Map<String, dynamic> json) {
  return SearchUsers$Query$UserConnection$User$UserAvatar()
    ..big = json['big'] as String;
}

Map<String, dynamic> _$SearchUsers$Query$UserConnection$User$UserAvatarToJson(
        SearchUsers$Query$UserConnection$User$UserAvatar instance) =>
    <String, dynamic>{
      'big': instance.big,
    };

SearchUsers$Query$UserConnection$User
    _$SearchUsers$Query$UserConnection$UserFromJson(Map<String, dynamic> json) {
  return SearchUsers$Query$UserConnection$User()
    ..id = json['id'] as String
    ..num = json['num'] as String
    ..name = json['name'] as String?
    ..avatar = json['avatar'] == null
        ? null
        : SearchUsers$Query$UserConnection$User$UserAvatar.fromJson(
            json['avatar'] as Map<String, dynamic>);
}

Map<String, dynamic> _$SearchUsers$Query$UserConnection$UserToJson(
        SearchUsers$Query$UserConnection$User instance) =>
    <String, dynamic>{
      'id': instance.id,
      'num': instance.num,
      'name': instance.name,
      'avatar': instance.avatar?.toJson(),
    };

SearchUsers$Query$UserConnection _$SearchUsers$Query$UserConnectionFromJson(
    Map<String, dynamic> json) {
  return SearchUsers$Query$UserConnection()
    ..nodes = (json['nodes'] as List<dynamic>)
        .map((e) => SearchUsers$Query$UserConnection$User.fromJson(
            e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$SearchUsers$Query$UserConnectionToJson(
        SearchUsers$Query$UserConnection instance) =>
    <String, dynamic>{
      'nodes': instance.nodes.map((e) => e.toJson()).toList(),
    };

SearchUsers$Query _$SearchUsers$QueryFromJson(Map<String, dynamic> json) {
  return SearchUsers$Query()
    ..searchUsers = SearchUsers$Query$UserConnection.fromJson(
        json['searchUsers'] as Map<String, dynamic>);
}

Map<String, dynamic> _$SearchUsers$QueryToJson(SearchUsers$Query instance) =>
    <String, dynamic>{
      'searchUsers': instance.searchUsers.toJson(),
    };

RecentChats$Query$ChatConnection$Chat$ChatItemEdge$ChatItem$ChatMemberInfo
    _$RecentChats$Query$ChatConnection$Chat$ChatItemEdge$ChatItem$ChatMemberInfoFromJson(
        Map<String, dynamic> json) {
  return RecentChats$Query$ChatConnection$Chat$ChatItemEdge$ChatItem$ChatMemberInfo()
    ..$$typename = json['__typename'] as String?
    ..id = json['id'] as String
    ..chatId = json['chatId'] as String
    ..authorId = json['authorId'] as String
    ..at = DateTime.parse(json['at'] as String)
    ..byId = json['byId'] as String
    ..action = _$enumDecode(_$ChatMemberInfoActionEnumMap, json['action'],
        unknownValue: ChatMemberInfoAction.artemisUnknown);
}

Map<String, dynamic>
    _$RecentChats$Query$ChatConnection$Chat$ChatItemEdge$ChatItem$ChatMemberInfoToJson(
            RecentChats$Query$ChatConnection$Chat$ChatItemEdge$ChatItem$ChatMemberInfo
                instance) =>
        <String, dynamic>{
          '__typename': instance.$$typename,
          'id': instance.id,
          'chatId': instance.chatId,
          'authorId': instance.authorId,
          'at': instance.at.toIso8601String(),
          'byId': instance.byId,
          'action': _$ChatMemberInfoActionEnumMap[instance.action],
        };

RecentChats$Query$ChatConnection$Chat$ChatItemEdge$ChatItem$ChatMessage$ChatItem
    _$RecentChats$Query$ChatConnection$Chat$ChatItemEdge$ChatItem$ChatMessage$ChatItemFromJson(
        Map<String, dynamic> json) {
  return RecentChats$Query$ChatConnection$Chat$ChatItemEdge$ChatItem$ChatMessage$ChatItem()
    ..id = json['id'] as String;
}

Map<String, dynamic>
    _$RecentChats$Query$ChatConnection$Chat$ChatItemEdge$ChatItem$ChatMessage$ChatItemToJson(
            RecentChats$Query$ChatConnection$Chat$ChatItemEdge$ChatItem$ChatMessage$ChatItem
                instance) =>
        <String, dynamic>{
          'id': instance.id,
        };

RecentChats$Query$ChatConnection$Chat$ChatItemEdge$ChatItem$ChatMessage
    _$RecentChats$Query$ChatConnection$Chat$ChatItemEdge$ChatItem$ChatMessageFromJson(
        Map<String, dynamic> json) {
  return RecentChats$Query$ChatConnection$Chat$ChatItemEdge$ChatItem$ChatMessage()
    ..$$typename = json['__typename'] as String?
    ..id = json['id'] as String
    ..chatId = json['chatId'] as String
    ..authorId = json['authorId'] as String
    ..at = DateTime.parse(json['at'] as String)
    ..repliesTo = json['repliesTo'] == null
        ? null
        : RecentChats$Query$ChatConnection$Chat$ChatItemEdge$ChatItem$ChatMessage$ChatItem
            .fromJson(json['repliesTo'] as Map<String, dynamic>)
    ..text = json['text'] as String?;
}

Map<String, dynamic>
    _$RecentChats$Query$ChatConnection$Chat$ChatItemEdge$ChatItem$ChatMessageToJson(
            RecentChats$Query$ChatConnection$Chat$ChatItemEdge$ChatItem$ChatMessage
                instance) =>
        <String, dynamic>{
          '__typename': instance.$$typename,
          'id': instance.id,
          'chatId': instance.chatId,
          'authorId': instance.authorId,
          'at': instance.at.toIso8601String(),
          'repliesTo': instance.repliesTo?.toJson(),
          'text': instance.text,
        };

RecentChats$Query$ChatConnection$Chat$ChatItemEdge$ChatItem$ChatForward$ChatItem
    _$RecentChats$Query$ChatConnection$Chat$ChatItemEdge$ChatItem$ChatForward$ChatItemFromJson(
        Map<String, dynamic> json) {
  return RecentChats$Query$ChatConnection$Chat$ChatItemEdge$ChatItem$ChatForward$ChatItem()
    ..id = json['id'] as String;
}

Map<String, dynamic>
    _$RecentChats$Query$ChatConnection$Chat$ChatItemEdge$ChatItem$ChatForward$ChatItemToJson(
            RecentChats$Query$ChatConnection$Chat$ChatItemEdge$ChatItem$ChatForward$ChatItem
                instance) =>
        <String, dynamic>{
          'id': instance.id,
        };

RecentChats$Query$ChatConnection$Chat$ChatItemEdge$ChatItem$ChatForward
    _$RecentChats$Query$ChatConnection$Chat$ChatItemEdge$ChatItem$ChatForwardFromJson(
        Map<String, dynamic> json) {
  return RecentChats$Query$ChatConnection$Chat$ChatItemEdge$ChatItem$ChatForward()
    ..$$typename = json['__typename'] as String?
    ..id = json['id'] as String
    ..chatId = json['chatId'] as String
    ..authorId = json['authorId'] as String
    ..at = DateTime.parse(json['at'] as String)
    ..item =
        RecentChats$Query$ChatConnection$Chat$ChatItemEdge$ChatItem$ChatForward$ChatItem
            .fromJson(json['item'] as Map<String, dynamic>);
}

Map<String, dynamic>
    _$RecentChats$Query$ChatConnection$Chat$ChatItemEdge$ChatItem$ChatForwardToJson(
            RecentChats$Query$ChatConnection$Chat$ChatItemEdge$ChatItem$ChatForward
                instance) =>
        <String, dynamic>{
          '__typename': instance.$$typename,
          'id': instance.id,
          'chatId': instance.chatId,
          'authorId': instance.authorId,
          'at': instance.at.toIso8601String(),
          'item': instance.item.toJson(),
        };

RecentChats$Query$ChatConnection$Chat$ChatItemEdge$ChatItem
    _$RecentChats$Query$ChatConnection$Chat$ChatItemEdge$ChatItemFromJson(
        Map<String, dynamic> json) {
  return RecentChats$Query$ChatConnection$Chat$ChatItemEdge$ChatItem()
    ..$$typename = json['__typename'] as String?
    ..id = json['id'] as String
    ..chatId = json['chatId'] as String
    ..authorId = json['authorId'] as String
    ..at = DateTime.parse(json['at'] as String);
}

Map<String, dynamic>
    _$RecentChats$Query$ChatConnection$Chat$ChatItemEdge$ChatItemToJson(
            RecentChats$Query$ChatConnection$Chat$ChatItemEdge$ChatItem
                instance) =>
        <String, dynamic>{
          '__typename': instance.$$typename,
          'id': instance.id,
          'chatId': instance.chatId,
          'authorId': instance.authorId,
          'at': instance.at.toIso8601String(),
        };

RecentChats$Query$ChatConnection$Chat$ChatItemEdge
    _$RecentChats$Query$ChatConnection$Chat$ChatItemEdgeFromJson(
        Map<String, dynamic> json) {
  return RecentChats$Query$ChatConnection$Chat$ChatItemEdge()
    ..node =
        RecentChats$Query$ChatConnection$Chat$ChatItemEdge$ChatItem.fromJson(
            json['node'] as Map<String, dynamic>);
}

Map<String, dynamic> _$RecentChats$Query$ChatConnection$Chat$ChatItemEdgeToJson(
        RecentChats$Query$ChatConnection$Chat$ChatItemEdge instance) =>
    <String, dynamic>{
      'node': instance.node.toJson(),
    };

RecentChats$Query$ChatConnection$Chat
    _$RecentChats$Query$ChatConnection$ChatFromJson(Map<String, dynamic> json) {
  return RecentChats$Query$ChatConnection$Chat()
    ..id = json['id'] as String
    ..name = json['name'] as String?
    ..kind = _$enumDecode(_$ChatKindEnumMap, json['kind'],
        unknownValue: ChatKind.artemisUnknown)
    ..isHidden = json['isHidden'] as bool
    ..lastDelivery = DateTime.parse(json['lastDelivery'] as String)
    ..lastItem = json['lastItem'] == null
        ? null
        : RecentChats$Query$ChatConnection$Chat$ChatItemEdge.fromJson(
            json['lastItem'] as Map<String, dynamic>);
}

Map<String, dynamic> _$RecentChats$Query$ChatConnection$ChatToJson(
        RecentChats$Query$ChatConnection$Chat instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'kind': _$ChatKindEnumMap[instance.kind],
      'isHidden': instance.isHidden,
      'lastDelivery': instance.lastDelivery.toIso8601String(),
      'lastItem': instance.lastItem?.toJson(),
    };

RecentChats$Query$ChatConnection _$RecentChats$Query$ChatConnectionFromJson(
    Map<String, dynamic> json) {
  return RecentChats$Query$ChatConnection()
    ..nodes = (json['nodes'] as List<dynamic>)
        .map((e) => RecentChats$Query$ChatConnection$Chat.fromJson(
            e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$RecentChats$Query$ChatConnectionToJson(
        RecentChats$Query$ChatConnection instance) =>
    <String, dynamic>{
      'nodes': instance.nodes.map((e) => e.toJson()).toList(),
    };

RecentChats$Query _$RecentChats$QueryFromJson(Map<String, dynamic> json) {
  return RecentChats$Query()
    ..recentChats = RecentChats$Query$ChatConnection.fromJson(
        json['recentChats'] as Map<String, dynamic>);
}

Map<String, dynamic> _$RecentChats$QueryToJson(RecentChats$Query instance) =>
    <String, dynamic>{
      'recentChats': instance.recentChats.toJson(),
    };

UpdateUserNameArguments _$UpdateUserNameArgumentsFromJson(
    Map<String, dynamic> json) {
  return UpdateUserNameArguments(
    name: json['name'] as String,
  );
}

Map<String, dynamic> _$UpdateUserNameArgumentsToJson(
        UpdateUserNameArguments instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

UnfavoriteChatContactArguments _$UnfavoriteChatContactArgumentsFromJson(
    Map<String, dynamic> json) {
  return UnfavoriteChatContactArguments(
    id: json['id'] as String,
  );
}

Map<String, dynamic> _$UnfavoriteChatContactArgumentsToJson(
        UnfavoriteChatContactArguments instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

DeleteSessionArguments _$DeleteSessionArgumentsFromJson(
    Map<String, dynamic> json) {
  return DeleteSessionArguments(
    token: json['token'] as String,
  );
}

Map<String, dynamic> _$DeleteSessionArgumentsToJson(
        DeleteSessionArguments instance) =>
    <String, dynamic>{
      'token': instance.token,
    };

FavoriteChatContactArguments _$FavoriteChatContactArgumentsFromJson(
    Map<String, dynamic> json) {
  return FavoriteChatContactArguments(
    id: json['id'] as String,
    pos: (json['pos'] as num).toDouble(),
  );
}

Map<String, dynamic> _$FavoriteChatContactArgumentsToJson(
        FavoriteChatContactArguments instance) =>
    <String, dynamic>{
      'id': instance.id,
      'pos': instance.pos,
    };

PostChatMessageArguments _$PostChatMessageArgumentsFromJson(
    Map<String, dynamic> json) {
  return PostChatMessageArguments(
    chatId: json['chatId'] as String,
    text: json['text'] as String?,
    attachments: (json['attachments'] as List<dynamic>?)
        ?.map((e) => e as String)
        .toList(),
    repliesTo: json['repliesTo'] as String?,
  );
}

Map<String, dynamic> _$PostChatMessageArgumentsToJson(
        PostChatMessageArguments instance) =>
    <String, dynamic>{
      'chatId': instance.chatId,
      'text': instance.text,
      'attachments': instance.attachments,
      'repliesTo': instance.repliesTo,
    };

CreateSessionArguments _$CreateSessionArgumentsFromJson(
    Map<String, dynamic> json) {
  return CreateSessionArguments(
    num: json['num'] as String?,
    login: json['login'] as String?,
    email: json['email'] as String?,
    phone: json['phone'] as String?,
    password: json['password'] as String,
    remember: json['remember'] as bool?,
  );
}

Map<String, dynamic> _$CreateSessionArgumentsToJson(
        CreateSessionArguments instance) =>
    <String, dynamic>{
      'num': instance.num,
      'login': instance.login,
      'email': instance.email,
      'phone': instance.phone,
      'password': instance.password,
      'remember': instance.remember,
    };

DeleteChatContactArguments _$DeleteChatContactArgumentsFromJson(
    Map<String, dynamic> json) {
  return DeleteChatContactArguments(
    id: json['id'] as String,
  );
}

Map<String, dynamic> _$DeleteChatContactArgumentsToJson(
        DeleteChatContactArguments instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

CreateChatContactArguments _$CreateChatContactArgumentsFromJson(
    Map<String, dynamic> json) {
  return CreateChatContactArguments(
    name: json['name'] as String,
    records: (json['records'] as List<dynamic>?)
        ?.map((e) => ChatContactRecord.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$CreateChatContactArgumentsToJson(
        CreateChatContactArguments instance) =>
    <String, dynamic>{
      'name': instance.name,
      'records': instance.records?.map((e) => e.toJson()).toList(),
    };

UpdateUserBioArguments _$UpdateUserBioArgumentsFromJson(
    Map<String, dynamic> json) {
  return UpdateUserBioArguments(
    bio: json['bio'] as String,
  );
}

Map<String, dynamic> _$UpdateUserBioArgumentsToJson(
        UpdateUserBioArguments instance) =>
    <String, dynamic>{
      'bio': instance.bio,
    };

ChatContactsArguments _$ChatContactsArgumentsFromJson(
    Map<String, dynamic> json) {
  return ChatContactsArguments(
    first: json['first'] as int?,
    after: json['after'] as String?,
    last: json['last'] as int?,
    before: json['before'] as String?,
    noFavorite: json['noFavorite'] as bool?,
  );
}

Map<String, dynamic> _$ChatContactsArgumentsToJson(
        ChatContactsArguments instance) =>
    <String, dynamic>{
      'first': instance.first,
      'after': instance.after,
      'last': instance.last,
      'before': instance.before,
      'noFavorite': instance.noFavorite,
    };

UpdateUserLoginArguments _$UpdateUserLoginArgumentsFromJson(
    Map<String, dynamic> json) {
  return UpdateUserLoginArguments(
    login: json['login'] as String,
  );
}

Map<String, dynamic> _$UpdateUserLoginArgumentsToJson(
        UpdateUserLoginArguments instance) =>
    <String, dynamic>{
      'login': instance.login,
    };

MessagesArguments _$MessagesArgumentsFromJson(Map<String, dynamic> json) {
  return MessagesArguments(
    id: json['id'] as String,
    first: json['first'] as int?,
    after: json['after'] as String?,
    last: json['last'] as int?,
    before: json['before'] as String?,
  );
}

Map<String, dynamic> _$MessagesArgumentsToJson(MessagesArguments instance) =>
    <String, dynamic>{
      'id': instance.id,
      'first': instance.first,
      'after': instance.after,
      'last': instance.last,
      'before': instance.before,
    };

UserArguments _$UserArgumentsFromJson(Map<String, dynamic> json) {
  return UserArguments(
    id: json['id'] as String,
  );
}

Map<String, dynamic> _$UserArgumentsToJson(UserArguments instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

FavoriteChatContactsArguments _$FavoriteChatContactsArgumentsFromJson(
    Map<String, dynamic> json) {
  return FavoriteChatContactsArguments(
    first: json['first'] as int?,
    after: json['after'] as String?,
    last: json['last'] as int?,
    before: json['before'] as String?,
  );
}

Map<String, dynamic> _$FavoriteChatContactsArgumentsToJson(
        FavoriteChatContactsArguments instance) =>
    <String, dynamic>{
      'first': instance.first,
      'after': instance.after,
      'last': instance.last,
      'before': instance.before,
    };

UpdateUserPasswordArguments _$UpdateUserPasswordArgumentsFromJson(
    Map<String, dynamic> json) {
  return UpdateUserPasswordArguments(
    kw$new: json['new'] as String,
    old: json['old'] as String?,
  );
}

Map<String, dynamic> _$UpdateUserPasswordArgumentsToJson(
        UpdateUserPasswordArguments instance) =>
    <String, dynamic>{
      'new': instance.kw$new,
      'old': instance.old,
    };

ChatArguments _$ChatArgumentsFromJson(Map<String, dynamic> json) {
  return ChatArguments(
    id: json['id'] as String,
  );
}

Map<String, dynamic> _$ChatArgumentsToJson(ChatArguments instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

SearchUsersArguments _$SearchUsersArgumentsFromJson(Map<String, dynamic> json) {
  return SearchUsersArguments(
    num: json['num'] as String?,
    login: json['login'] as String?,
  );
}

Map<String, dynamic> _$SearchUsersArgumentsToJson(
        SearchUsersArguments instance) =>
    <String, dynamic>{
      'num': instance.num,
      'login': instance.login,
    };

RecentChatsArguments _$RecentChatsArgumentsFromJson(Map<String, dynamic> json) {
  return RecentChatsArguments(
    first: json['first'] as int?,
    after: json['after'] as String?,
    last: json['last'] as int?,
    before: json['before'] as String?,
  );
}

Map<String, dynamic> _$RecentChatsArgumentsToJson(
        RecentChatsArguments instance) =>
    <String, dynamic>{
      'first': instance.first,
      'after': instance.after,
      'last': instance.last,
      'before': instance.before,
    };
