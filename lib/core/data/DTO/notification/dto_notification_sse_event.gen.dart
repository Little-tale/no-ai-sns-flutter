// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'dto_notification_sse_event.gen.freezed.dart';
part 'dto_notification_sse_event.gen.g.dart';

@freezed
sealed class NotificationSseEventDTO with _$NotificationSseEventDTO {
  factory NotificationSseEventDTO({
    required String type,
    @JsonKey(name: 'notification_id') required int notificationId,
    @JsonKey(name: 'notification_type') required String notificationType,
    required String title,
    required String body,
    @JsonKey(name: 'post_id') int? postId,
    @JsonKey(name: 'conversation_id') int? conversationId,
  }) = _NotificationSseEventDTO;

  factory NotificationSseEventDTO.fromJson(Map<String, dynamic> json) =>
      _$NotificationSseEventDTOFromJson(json);
}
