import 'package:dio/dio.dart';
import 'package:no_ai_sns/core/domain/entity/search_author_entity.gen.dart';
import 'package:no_ai_sns/core/utils/result.dart';
import 'package:no_ai_sns/features/home/domain/entities/feed_item/feed_item_entity.gen.dart';
import 'package:no_ai_sns/features/search/data/request_dto/search_feed/rdto_search_feed.gen.dart';
import 'package:no_ai_sns/features/search/data/request_dto/search_user/rdto_search_user.gen.dart';

abstract class SearchRepository {
  // search Feed
  Future<Result<List<FeedItemEntity>>> searchFeed({
    required SearchFeedRequestDTO rdto,
    CancelToken? cancelToken,
  });

  // search User
  Future<Result<List<SearchAuthorEntity>>> searchUser({
    required SearchUserRequestDTO rdto,
    CancelToken? cancelToken,
  });
}
