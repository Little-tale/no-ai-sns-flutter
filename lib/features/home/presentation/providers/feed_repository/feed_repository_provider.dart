import 'package:dio/dio.dart';
import 'package:no_ai_sns/core/network/base_url.dart';
import 'package:no_ai_sns/features/home/data/repositories/feed_repository_impl.dart';
import 'package:no_ai_sns/features/home/domain/repositories/feed_repository.dart';
import 'package:no_ai_sns/features/home/network/client/feed/feed_posts_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'feed_repository_provider.g.dart';

@riverpod
FeedRepository feedRepository(Ref ref) {
  final dio = Dio(BaseOptions(baseUrl: baseURL))
    ..interceptors.add(LogInterceptor(responseBody: true));
  final client = FeedPostsClient(dio);
  return FeedRepositoryImpl(client);
}
