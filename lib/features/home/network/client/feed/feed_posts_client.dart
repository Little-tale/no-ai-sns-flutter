import 'package:dio/dio.dart';
import 'package:no_ai_sns/features/home/data/DTO/feed_comment_item_dto/dto_feed_comment_item.gen.dart';
import 'package:no_ai_sns/features/home/data/DTO/feed_comment_item_request_dto/dto_comment_item_request.gen.dart';
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

  @GET('/posts/{post_id}/comments')
  Future<List<FeedCommentItemDTO>> getComments({
    @Path('post_id') required int postId,
    @Query('limit') required int limit,
    @Query('cursor') String? cursor,
  });

  @POST('/posts/{post_id}/comments')
  Future<FeedCommentItemDTO> postComment({
    @Path('post_id') required int postId,
    @Body() required CommentItemRequestDTO body,
  });

  @POST('/posts/{post_id}/comments/{comment_id}/like')
  Future<String> postCommentLike({
    @Path('post_id') required int postId,
    @Path('comment_id') required int commentId,
  });

  @DELETE('/posts/{post_id}/comments/{comment_id}/like')
  Future<String> deleteCommentLike({
    @Path('post_id') required int postId,
    @Path('comment_id') required int commentId,
  });

  @POST('/posts/{post_id}/like')
  Future<String> postFeedLike({@Path('post_id') required int postId});

  @DELETE('/posts/{post_id}/like')
  Future<String> deleteFeedLike({@Path('post_id') required int postId});
}
