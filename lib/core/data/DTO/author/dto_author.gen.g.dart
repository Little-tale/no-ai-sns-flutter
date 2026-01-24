// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dto_author.gen.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AuthorDTO _$AuthorDTOFromJson(Map<String, dynamic> json) => _AuthorDTO(
  id: (json['id'] as num).toInt(),
  nickname: json['nickname'] as String,
  profileImagePath: json['profile_image_path'] as String?,
);

Map<String, dynamic> _$AuthorDTOToJson(_AuthorDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nickname': instance.nickname,
      'profile_image_path': instance.profileImagePath,
    };
