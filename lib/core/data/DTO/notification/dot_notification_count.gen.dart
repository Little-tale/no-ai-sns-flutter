// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'dot_notification_count.gen.freezed.dart';
part 'dot_notification_count.gen.g.dart';

@freezed
sealed class NotificationCountDTO with _$NotificationCountDTO {
  factory NotificationCountDTO({
    @JsonKey(name: 'unread_count') required int count,
  }) = _NotificationCountDTO;

  factory NotificationCountDTO.fromJson(Map<String, dynamic> json) =>
      _$NotificationCountDTOFromJson(json);
}
