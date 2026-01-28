import 'package:no_ai_sns/core/utils/result.dart';
import 'package:no_ai_sns/features/home/domain/entities/feed_item/feed_item_entity.gen.dart';

abstract class FeedRepository {
  /// FeedList
  Future<Result<List<FeedItemEntity>>> getTopRatedMovies({
    required int limit,
    String? cursor,
  });
}
