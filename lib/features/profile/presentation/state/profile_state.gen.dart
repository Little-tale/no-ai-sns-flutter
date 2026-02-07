import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:no_ai_sns/features/profile/domain/entities/profile_user_entity.gen.dart';

part 'profile_state.gen.freezed.dart';

@freezed
sealed class ProfileState with _$ProfileState {
  const factory ProfileState({
    required ProfileUserEntity profile,
    @Default('0') String postCount,
    @Default([]) List<String> postImageUrls,
    @Default(false) bool isLoading,
    String? errorMessage,
  }) = _ProfileState;
}
