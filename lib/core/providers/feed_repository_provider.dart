import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:no_ai_sns/core/network/base_url.dart';
import 'package:no_ai_sns/core/providers/dio_provider.dart';
import 'package:no_ai_sns/features/home/data/repositories/feed_repository_impl.dart';
import 'package:no_ai_sns/features/home/domain/repositories/feed_repository.dart';
import 'package:no_ai_sns/core/network/feed/feed_posts_client.dart';

// FeedPostsClient Provider
final feedPostsClientProvider = Provider<FeedPostsClient>((ref) {
  final dio = ref.watch(dioProvider);
  return FeedPostsClient(dio, baseUrl: baseURL);
});

// FeedRepository Provider
final feedRepositoryProvider = Provider<FeedRepository>((ref) {
  final client = ref.watch(feedPostsClientProvider);
  return FeedRepositoryImpl(client);
});
