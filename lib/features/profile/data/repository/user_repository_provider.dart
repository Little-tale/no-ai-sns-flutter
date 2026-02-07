import 'package:dio/dio.dart';
import 'package:no_ai_sns/core/network/auth/auth_client.dart';
import 'package:no_ai_sns/core/network/feed/feed_posts_client.dart';
import 'package:no_ai_sns/core/providers/dio_provider.dart';
import 'package:no_ai_sns/features/profile/data/repository/user_repository_impl.dart';
import 'package:no_ai_sns/features/profile/domain/repository/user_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_repository_provider.g.dart';

@riverpod
UserRepository userRepository(Ref ref) {
  final dio = ref.read(dioProvider);
  final hasLogger = dio.interceptors.any((i) => i is LogInterceptor);
  if (!hasLogger) {
    dio.interceptors.add(LogInterceptor(responseBody: true));
  }
  final authClient = AuthClient(dio);
  final feedClient = FeedPostsClient(dio);
  return UserRepositoryImpl(authClient: authClient, feedClient: feedClient);
}
