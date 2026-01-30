import 'package:flutter/widgets.dart';
import 'package:no_ai_sns/core/utils/result.dart';
import 'package:no_ai_sns/features/notification/domain/entities/alert_/alert_entity.gen.dart';
import 'package:no_ai_sns/features/notification/presentation/providers/repository/notification_repository/notification_repository_provider.dart';
import 'package:no_ai_sns/features/notification/presentation/state/notification_state.gen.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'notification_notifier.g.dart';

@Riverpod()
class NotificationNotifier extends _$NotificationNotifier {
  @override
  NotificationState build() {
    Future.microtask(() => _loadAlert());
    return NotificationState(isLoading: true);
  }

  void _loadAlert() async {
    final repo = ref.read(notificationRepositoryProvider);
    final result = await repo.getAlerts(limit: 15, cursor: null);

    switch (result) {
      case Success<List<AlertEntity>>(value: final alerts):
        state = state.copyWith(alerts: alerts, isLoading: false);
      case Failure<List<AlertEntity>>(error: final error):
        debugPrint(error.toString());
        state = state.copyWith(
          alerts: [],
          isLoading: false,
          isInitialError: true,
        );
    }
  }
}
