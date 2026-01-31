// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dot_notification_count.gen.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NotificationCountDTO _$NotificationCountDTOFromJson(
  Map<String, dynamic> json,
) => _NotificationCountDTO(count: (json['unread_count'] as num).toInt());

Map<String, dynamic> _$NotificationCountDTOToJson(
  _NotificationCountDTO instance,
) => <String, dynamic>{'unread_count': instance.count};
