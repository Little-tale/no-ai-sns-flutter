import 'package:dio/dio.dart';
import 'package:no_ai_sns/core/data/mapper/user_mapper.dart';
import 'package:no_ai_sns/core/network/auth/auth_client.dart';
import 'package:no_ai_sns/core/network/feed/feed_posts_client.dart';
import 'package:no_ai_sns/core/utils/result.dart';
import 'package:no_ai_sns/features/profile/domain/entities/profile_user_entity.gen.dart';
import 'package:no_ai_sns/features/profile/domain/repository/user_repository.dart';

final class UserRepositoryImpl implements UserRepository {
  UserRepositoryImpl({
    required AuthClient authClient,
    required FeedPostsClient feedClient,
  }) : _authClient = authClient,
       _feedClient = feedClient;

  final AuthClient _authClient;
  final FeedPostsClient _feedClient;

  @override
  Future<Result<ProfileUserEntity>> getMe() async {
    try {
      final result = await _authClient.getMe();
      final mapping = UserMapper.toMe(result);
      return Result.Success(mapping);
    } on DioException catch (error) {
      return Result.Failure(Exception(error.message));
    } catch (error) {
      return Result.Failure(Exception(error.toString()));
    }
  }
}
