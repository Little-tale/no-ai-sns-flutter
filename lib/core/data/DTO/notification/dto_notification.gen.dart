// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'dto_notification.gen.freezed.dart';
part 'dto_notification.gen.g.dart';

@freezed
sealed class NotificationDTO with _$NotificationDTO {
  factory NotificationDTO({
    required int id,
    @JsonKey(name: 'user_id') required int userId,
    required String type,
    String? title,
    String? body,
    @JsonKey(name: 'is_read') required bool isRead,
    @JsonKey(name: 'created_at') required String createdAt,
  }) = _NotificationDTO;

  factory NotificationDTO.fromJson(Map<String, dynamic> json) =>
      _$NotificationDTOFromJson(json);
}
