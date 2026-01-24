// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dto_notification.gen.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NotificationDTO _$NotificationDTOFromJson(Map<String, dynamic> json) =>
    _NotificationDTO(
      id: (json['id'] as num).toInt(),
      userId: (json['user_id'] as num).toInt(),
      type: json['type'] as String,
      title: json['title'] as String?,
      body: json['body'] as String?,
      isRead: json['is_read'] as bool,
      createdAt: json['created_at'] as String,
    );

Map<String, dynamic> _$NotificationDTOToJson(_NotificationDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'type': instance.type,
      'title': instance.title,
      'body': instance.body,
      'is_read': instance.isRead,
      'created_at': instance.createdAt,
    };
