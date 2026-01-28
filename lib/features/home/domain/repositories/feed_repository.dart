import 'package:no_ai_sns/core/utils/result.dart';
import 'package:no_ai_sns/features/home/domain/entities/comment_item/comment._item_entity.gen.dart';
import 'package:no_ai_sns/features/home/domain/entities/feed_item/feed_item_entity.gen.dart';

abstract class FeedRepository {
  /// FeedList
  Future<Result<List<FeedItemEntity>>> getFeeds({
    required int limit,
    String? cursor,
  });

  Future<Result<List<CommentItemEntity>>> getCommentItems({
    required int postId,
    required int limit,
    String? cursor,
  });
}
