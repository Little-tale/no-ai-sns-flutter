import 'package:dio/dio.dart';
import 'package:no_ai_sns/core/data/DTO/author/dto_author.gen.dart';
import 'package:no_ai_sns/features/home/data/DTO/feed_list_item_dto/dto_feed_list_item.gen.dart';
import 'package:no_ai_sns/features/search/data/request_dto/search_feed/rdto_search_feed.gen.dart';
import 'package:no_ai_sns/features/search/data/request_dto/search_user/rdto_search_user.gen.dart';
import 'package:retrofit/retrofit.dart';

part 'search_client.g.dart';

@RestApi()
abstract class SearchClient {
  factory SearchClient(Dio dio, {String? baseUrl}) = _SearchClient;

  @GET('/users/search')
  Future<List<AuthorDTO>> searchUser({
    @Queries() required SearchUserRequestDTO rdto,
  });

  @GET('/posts/search')
  Future<List<FeedListItemDTO>> searchFeed({
    @Queries() required SearchFeedRequestDTO rdto,
  });
}
