import 'package:no_ai_sns/core/utils/result.dart';
import 'package:no_ai_sns/features/profile/domain/entities/profile_user_entity.gen.dart';

abstract class UserRepository {
  Future<Result<ProfileUserEntity>> getMe();
}
