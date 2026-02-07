import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_user_entity.gen.freezed.dart';

@freezed
sealed class ProfileUserEntity with _$ProfileUserEntity {
  factory ProfileUserEntity({
    required int id,
    required String nickname,
    required String email,
    required String followCount,
    required String followingCount,
    String? profileImageUrl,
  }) = _ProfileUserEntity;
}
