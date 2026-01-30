import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:no_ai_sns/core/data/DTO/refresh/dto_refrsh_request.gen.dart';
import 'package:no_ai_sns/core/network/base_url.dart';
import 'package:no_ai_sns/core/network/refresh/refresh_client.dart';
import 'package:no_ai_sns/core/providers/login_popup_provider.dart';
import 'package:no_ai_sns/features/auth/presentation/providers/token_storage_provider.dart';

// Dio 인스턴스 Provider
final dioProvider = Provider<Dio>((ref) {
  final baseOptions = BaseOptions(
    baseUrl: baseURL,
    contentType: 'application/json',
    headers: const {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    },
    connectTimeout: const Duration(seconds: 30),
    receiveTimeout: const Duration(seconds: 30),
  );

  final dio = Dio(baseOptions);
  final refreshDio = Dio(baseOptions);
  final refreshClient = RefreshClient(refreshDio);
  final tokenStorage = ref.read(tokenStorageProvider.notifier);

  Future<String?> refreshAccessToken() async {
    final refreshToken = await tokenStorage.getRefreshToken();
    if (refreshToken == null || refreshToken.isEmpty) {
      return null;
    }
    final dto = await refreshClient.refrsh(
      RefrshRequestDTO(refreshToken: refreshToken),
    );
    final newAccessToken = dto.accessToken;
    final newRefreshToken = dto.refreshToken;

    if (newAccessToken.isNotEmpty && newRefreshToken.isNotEmpty) {
      await tokenStorage.saveTokens(
        accessToken: newAccessToken,
        refreshToken: newRefreshToken,
      );
    }
    return newAccessToken;
  }

  Future<String?> refreshTokenWithLock() async {
    _refreshCompleter ??= Completer<String?>();
    if (_refreshCompleter!.isCompleted) {
      _refreshCompleter = Completer<String?>();
    }
    if (_refreshInProgress) {
      return _refreshCompleter!.future;
    }
    _refreshInProgress = true;
    try {
      final token = await refreshAccessToken();
      _refreshCompleter?.complete(token);
      return token;
    } finally {
      _refreshInProgress = false;
    }
  }

  Future<void> tokenDelete() async {
    await tokenStorage.clearTokens();
  }

  dio.interceptors.add(
    InterceptorsWrapper(
      onRequest: (options, handler) async {
        final accessToken = await tokenStorage.getAccessToken();
        if (accessToken != null && accessToken.isNotEmpty) {
          options.headers['Authorization'] = 'Bearer $accessToken';
        }
        return handler.next(options);
      },
      onError: (error, handler) async {
        final response = error.response;
        final requestOptions = error.requestOptions;
        final statusCode = response?.statusCode ?? 0;

        if (statusCode == 401 && requestOptions.extra['retry'] != true) {
          requestOptions.extra['retry'] = true;
          try {
            final newToken = await refreshTokenWithLock();
            if (newToken == null || newToken.isEmpty) {
              await tokenDelete();
              ref.read(loginPopupProvider.notifier).show();
              return handler.next(error);
            }
            requestOptions.headers['Authorization'] = 'Bearer $newToken';
            final cloned = await dio.fetch(requestOptions);
            return handler.resolve(cloned);
          } catch (_) {
            await tokenDelete();
            ref.read(loginPopupProvider.notifier).show();
            return handler.next(error);
          }
        }
        return handler.next(error);
      },
    ),
  );
  return dio;
});

Completer<String?>? _refreshCompleter;
bool _refreshInProgress = false;
