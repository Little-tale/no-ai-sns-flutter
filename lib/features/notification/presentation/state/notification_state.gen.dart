import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:no_ai_sns/features/notification/domain/entities/alert_/alert_entity.gen.dart';

part 'notification_state.gen.freezed.dart';

@freezed
sealed class NotificationState with _$NotificationState {
  factory NotificationState({
    @Default([]) List<AlertEntity> alerts,
    @Default(false) bool isMore,
    @Default(false) bool isLoading,
    @Default(false) bool isInitialError,
    @Default(false) bool isMoreLoading,
  }) = _NotificationState;
}
