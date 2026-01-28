import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:no_ai_sns/core/network/auth/auth_client.dart';
import 'package:no_ai_sns/core/network/base_url.dart';
import 'package:no_ai_sns/core/providers/dio_provider.dart';

// AuthClient Provider
final authClientProvider = Provider<AuthClient>((ref) {
  final dio = ref.watch(dioProvider);
  return AuthClient(dio, baseUrl: baseURL);
});
