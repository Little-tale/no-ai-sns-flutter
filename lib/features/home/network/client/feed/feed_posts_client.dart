import 'package:dio/dio.dart';
import 'package:no_ai_sns/features/home/data/DTO/feed_list_item_dto/dto_feed_list_item.gen.dart';
import 'package:retrofit/retrofit.dart';

part 'feed_posts_client.g.dart';

@RestApi()
abstract class FeedPostsClient {
  factory FeedPostsClient(Dio dio, {String? baseUrl}) = _FeedPostsClient;

  @GET('/posts')
  Future<List<FeedListItemDTO>> getTopRatedMovies({
    @Query('limit') required int limit,
    @Query('cursor') String? cursor,
  });
}
