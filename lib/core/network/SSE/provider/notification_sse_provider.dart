import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:no_ai_sns/core/data/DTO/notification/dto_notification_sse_event.gen.dart';
import 'package:no_ai_sns/core/network/SSE/provider/sse_dio_provider.dart';
import 'package:no_ai_sns/core/network/SSE/stream/sse_stream.dart';
import 'package:no_ai_sns/features/auth/presentation/providers/token_storage_provider.dart';

final notificationSseProvider = StreamProvider<NotificationSseEventDTO>((
  ref,
) async* {
  final token = await ref.read(tokenStorageProvider.notifier).getAccessToken();
  if (token == null) return;

  final dio = ref.read(sseDioProvider);
  await for (final msg in sseStream(
    dio: dio,
    path: '/notifications/sse',
    query: {'token': token},
  )) {
    final data = msg['data'];
    if (data is Map<String, dynamic> &&
        data['type'] == 'notification' &&
        data['notification_id'] != null) {
      yield NotificationSseEventDTO.fromJson(data);
    }
  }
});
