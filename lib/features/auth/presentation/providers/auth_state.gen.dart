import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.gen.freezed.dart';

@freezed
sealed class AuthState with _$AuthState {
  const factory AuthState({
    @Default(false) bool isLoading,
    @Default(false) bool isCheckingNickname,
    @Default(false) bool showLoginPopup,
    bool? isNicknameAvailable,
    String? emailError,
    String? passwordError,
    String? nicknameError,
    String? errorMessage,
  }) = _AuthState;
}
