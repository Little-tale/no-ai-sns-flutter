import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:no_ai_sns/core/network/base_url.dart';

final sseDioProvider = Provider<Dio>((ref) {
  final dio = Dio(
    BaseOptions(
      baseUrl: baseURL,
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(days: 1),
      headers: {'Accept': 'text/event-stream'},
    ),
  );
  dio.interceptors.add(LogInterceptor());

  return dio;
});
