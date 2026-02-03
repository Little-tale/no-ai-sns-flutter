import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_state.gen.freezed.dart';

@freezed
sealed class ProfileState with _$ProfileState {
  const factory ProfileState({
    @Default('') String profileImageUrl,
    @Default('') String userName,
    @Default('') String userEmail,
    @Default('0') String followers,
    @Default('0') String following,
    @Default('0') String postCount,
    @Default([]) List<String> postImageUrls,
    @Default(false) bool isLoading,
    String? errorMessage,
  }) = _ProfileState;
}
