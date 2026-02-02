// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dto_notification_sse_event.gen.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NotificationSseEventDTO _$NotificationSseEventDTOFromJson(
  Map<String, dynamic> json,
) => _NotificationSseEventDTO(
  type: json['type'] as String,
  notificationId: (json['notification_id'] as num).toInt(),
  notificationType: json['notification_type'] as String,
  title: json['title'] as String,
  body: json['body'] as String,
  postId: (json['post_id'] as num?)?.toInt(),
  conversationId: (json['conversation_id'] as num?)?.toInt(),
);

Map<String, dynamic> _$NotificationSseEventDTOToJson(
  _NotificationSseEventDTO instance,
) => <String, dynamic>{
  'type': instance.type,
  'notification_id': instance.notificationId,
  'notification_type': instance.notificationType,
  'title': instance.title,
  'body': instance.body,
  'post_id': instance.postId,
  'conversation_id': instance.conversationId,
};
