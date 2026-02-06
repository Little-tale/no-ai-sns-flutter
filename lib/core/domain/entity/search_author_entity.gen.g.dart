// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_author_entity.gen.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SearchAuthorEntity _$SearchAuthorEntityFromJson(Map<String, dynamic> json) =>
    _SearchAuthorEntity(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      profileImageUrl: json['profileImageUrl'] as String?,
      isMe: json['isMe'] as bool,
      isFollowing: json['isFollowing'] as bool,
    );

Map<String, dynamic> _$SearchAuthorEntityToJson(_SearchAuthorEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'profileImageUrl': instance.profileImageUrl,
      'isMe': instance.isMe,
      'isFollowing': instance.isFollowing,
    };
