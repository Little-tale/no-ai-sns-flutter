// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dto_search_user.gen.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SearchUserDTO _$SearchUserDTOFromJson(Map<String, dynamic> json) =>
    _SearchUserDTO(
      id: (json['id'] as num).toInt(),
      nickname: json['nickname'] as String,
      profileImagePath: json['profile_image_path'] as String?,
      isMe: json['is_me'] as bool,
      isFollowing: json['is_following'] as bool,
    );

Map<String, dynamic> _$SearchUserDTOToJson(_SearchUserDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nickname': instance.nickname,
      'profile_image_path': instance.profileImagePath,
      'is_me': instance.isMe,
      'is_following': instance.isFollowing,
    };
