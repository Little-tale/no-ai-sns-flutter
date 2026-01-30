import 'package:dio/dio.dart';
import 'package:no_ai_sns/core/network/notification/notification_client.dart';
import 'package:no_ai_sns/core/providers/dio_provider.dart';
import 'package:no_ai_sns/features/notification/data/repository/notification_repository_impl.dart';
import 'package:no_ai_sns/features/notification/domain/repository/notification_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'notification_repository_provider.g.dart';

@riverpod
NotificationRepository notificationRepository(Ref ref) {
  final dio = ref.read(dioProvider);
  final hasLogger = dio.interceptors.any((i) => i is LogInterceptor);

  if (!hasLogger) {
    dio.interceptors.add(LogInterceptor(responseBody: true));
  }
  final client = NotificationClient(dio);
  return NotificationRepositoryImpl(client);
}
