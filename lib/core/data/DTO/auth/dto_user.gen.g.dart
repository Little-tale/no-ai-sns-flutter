// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dto_user.gen.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserDTO _$UserDTOFromJson(Map<String, dynamic> json) => _UserDTO(
  id: (json['id'] as num).toInt(),
  nickname: json['nickname'] as String,
  profileImagePath: json['profile_image_path'] as String?,
);

Map<String, dynamic> _$UserDTOToJson(_UserDTO instance) => <String, dynamic>{
  'id': instance.id,
  'nickname': instance.nickname,
  'profile_image_path': instance.profileImagePath,
};
