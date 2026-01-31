import 'package:dio/dio.dart';
import 'package:no_ai_sns/core/network/notification/notification_client.dart';
import 'package:no_ai_sns/core/utils/result.dart';
import 'package:no_ai_sns/features/notification/data/mapper/notification_mapper.dart';
import 'package:no_ai_sns/features/notification/domain/entities/alert_/alert_entity.gen.dart';
import 'package:no_ai_sns/features/notification/domain/repository/notification_repository.dart';

final class NotificationRepositoryImpl extends NotificationRepository {
  NotificationRepositoryImpl(this._client);

  final NotificationClient _client;

  @override
  Future<Result<List<AlertEntity>>> getAlerts({
    required int limit,
    String? cursor,
  }) async {
    try {
      final dto = await _client.getNotifications(limit: limit, cursor: cursor);
      final result = NotificationMapper.toAlertEntities(dto);

      return Result.Success(result);
    } on DioException catch (error) {
      return Result.Failure(Exception(error.message));
    } catch (error) {
      return Result.Failure(Exception(error.toString()));
    }
  }

  @override
  Future<Result<int>> getAlertCount() async {
    try {
      final result = await _client.getUnreadCount();
      final count = result.count;
      return Result.Success(count);
    } on DioException catch (error) {
      return Result.Failure(Exception(error.message));
    } catch (error) {
      return Result.Failure(Exception(error.toString()));
    }
  }

  @override
  Future<bool> postAlertRead({required int notificationId}) async {
    try {
      await _client.postAlertRead(notificationId);
      return true;
    } catch (error) {
      return false;
    }
  }
}
