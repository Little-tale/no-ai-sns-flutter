import 'package:dio/dio.dart';
import 'package:no_ai_sns/core/utils/result.dart';
import 'package:no_ai_sns/features/home/network/client/feed/feed_posts_client.dart';
import 'package:no_ai_sns/features/home/data/mapper/feed_mapper.dart';
import 'package:no_ai_sns/features/home/domain/entities/feed_item/feed_item_entity.gen.dart';
import 'package:no_ai_sns/features/home/domain/repositories/feed_repository.dart';

final class FeedRepositoryImpl implements FeedRepository {
  FeedRepositoryImpl(this._client);

  final FeedPostsClient _client;

  @override
  Future<Result<List<FeedItemEntity>>> getTopRatedMovies({
    required int limit,
    String? cursor,
  }) async {
    try {
      final dto = await _client.getTopRatedMovies(limit: limit, cursor: cursor);
      final mapping = FeedMapper.toMapFeedListDTO(dto);
      return Result.Success(mapping);
    } on DioException catch (error) {
      return Result.Failure(Exception(error.message));
    } catch (error) {
      return Result.Failure(Exception(error.toString()));
    }
  }


}
