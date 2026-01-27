// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dto_register_response.gen.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RegisterResponseDTO _$RegisterResponseDTOFromJson(Map<String, dynamic> json) =>
    _RegisterResponseDTO(
      id: (json['id'] as num).toInt(),
      email: json['email'] as String,
      nickname: json['nickname'] as String,
      profileImagePath: json['profile_image_path'] as String?,
      profileImagePendingPath: json['profile_image_pending_path'] as String?,
      profileAiStatus: json['profile_ai_status'] as String?,
      profileAiLabel: json['profile_ai_label'] as String?,
      profileAiScore: (json['profile_ai_score'] as num?)?.toDouble(),
      createdAt: json['created_at'] as String,
    );

Map<String, dynamic> _$RegisterResponseDTOToJson(
  _RegisterResponseDTO instance,
) => <String, dynamic>{
  'id': instance.id,
  'email': instance.email,
  'nickname': instance.nickname,
  'profile_image_path': instance.profileImagePath,
  'profile_image_pending_path': instance.profileImagePendingPath,
  'profile_ai_status': instance.profileAiStatus,
  'profile_ai_label': instance.profileAiLabel,
  'profile_ai_score': instance.profileAiScore,
  'created_at': instance.createdAt,
};
