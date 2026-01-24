import 'dart:math';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:no_ai_sns/features/notification/domain/entities/alert_type/alert_type_entity.dart';

part 'alert_entity.gen.freezed.dart';

@freezed
sealed class AlertEntity with _$AlertEntity {
  factory AlertEntity({
    required int alertID,
    required int userID,
    required AlertType type,
    required String title, // 없을 시 제목없음
    String? content,
    required String createAt,
    required bool isRead,
  }) = _AlertEntity;

  static AlertType _randomType() {
    final values = AlertType.values;
    return values[Random().nextInt(values.length)];
  }

  static get dummy => AlertEntity(
    alertID: 0,
    userID: 0,
    type: _randomType(),
    title: "새 좋아요",
    content: "닉네임님이 좋아요를 눌렀습니다",
    createAt: "2023-01-01T00:00:00",
    isRead: false,
  );
}
