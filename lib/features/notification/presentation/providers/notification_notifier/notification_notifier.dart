import 'package:no_ai_sns/core/utils/result.dart';
import 'package:no_ai_sns/features/notification/domain/entities/alert_/alert_entity.gen.dart';
import 'package:no_ai_sns/features/notification/presentation/providers/repository/notification_repository/notification_repository_provider.dart';
import 'package:no_ai_sns/features/notification/presentation/state/notification_state.gen.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'notification_notifier.g.dart';

// (keepAlive: true)
@riverpod
class NotificationNotifier extends _$NotificationNotifier {
  @override
  Future<NotificationState> build() async {
    return await _fetchAlerts();
  }

  void moreRequest() {
    final current = state.value;
    if (current == null) {
      return;
    }
    if (!current.isMore) return;
    if (current.alerts.isEmpty) return;
    if (current.isMoreLoading) return;
    state = AsyncValue.data(current.copyWith(isMoreLoading: true));
    final item = current.alerts.last.alertID;
    _loadAlert(cursor: item.toString());
  }

  Future<NotificationState> _fetchAlerts({String? cursor}) async {
    final current = state.value;
    final limit = 15;
    final repo = ref.read(notificationRepositoryProvider);
    final result = await repo.getAlerts(limit: limit, cursor: cursor);

    switch (result) {
      case Success<List<AlertEntity>>(value: final alerts):
        if (cursor != null) {
          if (current == null) {
            return NotificationState(
              alerts: alerts,
              isMore: alerts.length == limit,
              isMoreLoading: false,
            );
          }
          return current.copyWith(
            alerts: [...current.alerts, ...alerts],
            isMore: alerts.length == limit,
            isMoreLoading: false,
          );
        } else {
          return NotificationState(
            alerts: alerts,
            isMore: alerts.length == limit,
            isMoreLoading: false,
          );
        }

      case Failure<List<AlertEntity>>(error: final error):
        throw error; // 문제 생기면 아래처럼 수정
      // return NotificationState(
      //   alerts: [],
      //   isInitialError: true,
      //   isMoreLoading: false,
      // );
    }
  }

  void _loadAlert({String? cursor}) async {
    final next = await _fetchAlerts(cursor: cursor);
    state = AsyncValue.data(next);
  }
}
