import 'package:dio/dio.dart';
import 'package:image_picker/image_picker.dart';
import 'package:no_ai_sns/core/utils/api_exception.dart';
import 'package:no_ai_sns/core/utils/result.dart';
import 'package:no_ai_sns/features/home/data/DTO/feed_comment_item_request_dto/dto_comment_item_request.gen.dart';
import 'package:no_ai_sns/features/home/data/mapper/comment_mapper.dart';
import 'package:no_ai_sns/features/home/domain/entities/comment_item/comment._item_entity.gen.dart';
import 'package:no_ai_sns/features/home/network/client/feed/feed_posts_client.dart';
import 'package:no_ai_sns/features/home/data/mapper/feed_mapper.dart';
import 'package:no_ai_sns/features/home/domain/entities/feed_item/feed_item_entity.gen.dart';
import 'package:no_ai_sns/features/home/domain/repositories/feed_repository.dart';

final class FeedRepositoryImpl implements FeedRepository {
  FeedRepositoryImpl(this._client);

  final FeedPostsClient _client;

  @override
  Future<Result<List<FeedItemEntity>>> getFeeds({
    required int limit,
    String? cursor,
  }) async {
    try {
      final dto = await _client.getTopRatedMovies(limit: limit, cursor: cursor);
      final mapping = FeedMapper.toMapFeedListDTO(dto);
      return Result.Success(mapping);
    } on DioException catch (error) {
      final status = error.response?.statusCode;
      if (status == 401) {
        return Result.Failure(ApiException(ApiErrorType.unauthorized));
      }
      final data = error.response?.data;
      final message = data is Map<String, dynamic> ? data['detail'] : null;
      return Result.Failure(
        ApiException(ApiErrorType.message, message: message ?? error.message),
      );
    } catch (error) {
      return Result.Failure(Exception(error.toString()));
    }
  }

  @override
  Future<Result<List<CommentItemEntity>>> getCommentItems({
    required int postId,
    required int limit,
    String? cursor,
  }) async {
    try {
      final dto = await _client.getComments(
        postId: postId,
        limit: limit,
        cursor: cursor,
      );
      final mapping = CommentMapper.toMapCommentListDTO(dto);
      return Result.Success(mapping);
    } on DioException catch (error) {
      return Result.Failure(Exception(error.message));
    } catch (error) {
      return Result.Failure(Exception(error.toString()));
    }
  }

  // POST - Comment
  @override
  Future<Result<CommentItemEntity>> postCommentItem({
    required int postId,
    required String content,
    int? parentId,
  }) async {
    try {
      final dto = await _client.postComment(
        postId: postId,
        body: CommentItemRequestDTO(content: content, parentId: parentId),
      );
      final mapping = CommentMapper.toMapCommentDTO(dto);
      return Result.Success(mapping);
    } on DioException catch (error) {
      return Result.Failure(Exception(error.message));
    } catch (error) {
      return Result.Failure(Exception(error.toString()));
    }
  }

  // Comment Like API
  @override
  Future<Result<bool>> postCommentLikeState({
    required int postId,
    required int commentId,
    required bool isLiked,
  }) async {
    try {
      if (isLiked) {
        final dto = await _client.postCommentLike(
          postId: postId,
          commentId: commentId,
        );
        return Result.Success(CommentMapper.toLikeState(dto));
      } else {
        final dto = await _client.deleteCommentLike(
          postId: postId,
          commentId: commentId,
        );
        return Result.Success(CommentMapper.toLikeState(dto));
      }
    } on DioException catch (error) {
      return Result.Failure(Exception(error.message));
    } catch (error) {
      return Result.Failure(Exception(error.toString()));
    }
  }

  @override
  Future<Result<bool>> postFeedLikeState({
    required int postId,
    required bool isLiked,
  }) async {
    try {
      if (isLiked) {
        final dto = await _client.postFeedLike(postId: postId);
        return Result.Success(CommentMapper.toLikeState(dto));
      } else {
        final dto = await _client.deleteFeedLike(postId: postId);
        return Result.Success(CommentMapper.toLikeState(dto));
      }
    } on DioException catch (error) {
      return Result.Failure(Exception(error.message));
    } catch (error) {
      return Result.Failure(Exception(error.toString()));
    }
  }

  @override
  Future<Result<bool>> postFeed({
    required String body,
    required List<XFile> images,
  }) async {
    try {
      final files = await Future.wait(
        images.map(
          (img) => MultipartFile.fromFile(img.path, filename: img.name),
        ),
      );

      await _client.postFeed(body: body, images: files);

      return Result.Success(true);
    } on DioException catch (error) {
      return Result.Failure(Exception(error.message));
    } catch (error) {
      return Result.Failure(Exception(error.toString()));
    }
  }
}
