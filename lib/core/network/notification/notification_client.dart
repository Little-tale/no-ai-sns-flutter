import 'package:dio/dio.dart';
import 'package:no_ai_sns/core/data/DTO/notification/dot_notification_count.gen.dart';
import 'package:no_ai_sns/core/data/DTO/notification/dto_notification.gen.dart';
import 'package:retrofit/retrofit.dart';

part 'notification_client.g.dart';

@RestApi()
abstract class NotificationClient {
  factory NotificationClient(Dio dio, {String? baseUrl}) = _NotificationClient;

  @GET('/notifications')
  Future<List<NotificationDTO>> getNotifications({
    @Query('limit') required int limit,
    @Query('cursor') String? cursor,
  });

  @GET('/notifications/count')
  Future<NotificationCountDTO> getUnreadCount();
}
