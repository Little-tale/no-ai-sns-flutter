import 'package:no_ai_sns/core/utils/result.dart';
import 'package:no_ai_sns/features/notification/domain/entities/alert_/alert_entity.gen.dart';

abstract class NotificationRepository {
  Future<Result<List<AlertEntity>>> getAlerts({
    required int limit,
    String? cursor,
  });

  Future<Result<int>> getAlertCount();

  Future<bool> postAlertRead({required int notificationId});
}
