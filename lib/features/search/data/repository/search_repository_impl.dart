import 'package:dio/dio.dart';
import 'package:no_ai_sns/core/data/mapper/user_mapper.dart';
import 'package:no_ai_sns/core/domain/entity/author_entity.gen.dart';
import 'package:no_ai_sns/core/utils/result.dart';
import 'package:no_ai_sns/features/home/data/mapper/feed_mapper.dart';
import 'package:no_ai_sns/features/home/domain/entities/feed_item/feed_item_entity.gen.dart';
import 'package:no_ai_sns/features/search/data/request_dto/search_feed/rdto_search_feed.gen.dart';
import 'package:no_ai_sns/features/search/data/request_dto/search_user/rdto_search_user.gen.dart';
import 'package:no_ai_sns/features/search/domain/repository/search_repository.dart';
import 'package:no_ai_sns/features/search/network/search_client.dart';

final class SearchRepositoryImpl implements SearchRepository {
  // dio client

  SearchRepositoryImpl({required SearchClient client}) : _client = client;

  final SearchClient _client;

  @override
  Future<Result<List<FeedItemEntity>>> searchFeed({
    required SearchFeedRequestDTO rdto,
  }) async {
    try {
      final dto = await _client.searchFeed(rdto: rdto);
      final mapping = FeedMapper.toMapFeedListDTO(dto);
      return Result.Success(mapping);
    } on DioException catch (error) {
      return Result.Failure(Exception(error.message));
    } catch (error) {
      return Result.Failure(Exception(error.toString()));
    }
  }

  @override
  Future<Result<List<AuthorEntity>>> searchUser({
    required SearchUserRequestDTO rdto,
  }) async {
    try {
      final dto = await _client.searchUser(rdto: rdto);
      final mapping = UserMapper.toMapList(dto);
      return Result.Success(mapping);
    } on DioException catch (error) {
      return Result.Failure(Exception(error.message));
    } catch (error) {
      return Result.Failure(Exception(error.toString()));
    }
  }
}
