import 'dart:async';

import 'package:dio/dio.dart';
import 'package:no_ai_sns/core/data/DTO/auth/dto_register_request.gen.dart';
import 'package:no_ai_sns/core/network/auth/auth_client.dart';
import 'package:no_ai_sns/core/providers/auth_client_provider.dart';
import 'package:no_ai_sns/features/auth/presentation/providers/auth_state.gen.dart';
import 'package:no_ai_sns/features/auth/presentation/providers/token_storage_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_notifier.g.dart';

@riverpod
class AuthNotifier extends _$AuthNotifier {
  late final AuthClient _authClient;
  Timer? _nicknameDebounce;

  @override
  AuthState build() {
    _authClient = ref.watch(authClientProvider);
    
    // 상태 초기화 시 timer 정리
    ref.onDispose(() {
      _nicknameDebounce?.cancel();
    });
    
    return const AuthState();
  }

  // 이메일 검증
  String? validateEmail(String value) {
    if (value.isEmpty) return '이메일을 입력해주세요.';
    
    final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if (!emailRegex.hasMatch(value)) return '올바른 이메일 형식이 아닙니다.';
    
    return null;
  }

  // 비밀번호 검증 : 8~72자, 영문과 숫자
  String? validatePassword(String value) {
    if (value.isEmpty) return '비밀번호를 입력해주세요.';
    if (value.length < 8 || value.length > 72) return '비밀번호는 8~72자 사이여야 합니다.';
    
    final passwordRegex = RegExp(r'^[a-zA-Z0-9]+$');
    if (!passwordRegex.hasMatch(value)) return '비밀번호는 영문과 숫자만 사용할 수 있습니다.';
    
    final hasLetter = RegExp(r'[a-zA-Z]').hasMatch(value);
    final hasDigit = RegExp(r'[0-9]').hasMatch(value);
    if (!hasLetter || !hasDigit) return '비밀번호는 영문과 숫자를 모두 포함해야 합니다.';
    
    return null;
  }

  // 닉네임 검증 : 2~20자, 한글/영문/숫자/밑줄
  String? validateNickname(String value) {
    if (value.isEmpty) return '닉네임을 입력해주세요.';
    if (value.length < 2 || value.length > 20) return '닉네임은 2~20자 사이여야 합니다.';
    
    final nicknameRegex = RegExp(r'^[가-힣a-zA-Z0-9_]+$');
    if (!nicknameRegex.hasMatch(value)) return '닉네임은 한글, 영문, 숫자, 밑줄만 사용할 수 있습니다.';
    
    return null;
  }

  // 이메일 에러 업데이트
  void updateEmailError(String value) {
    state = state.copyWith(emailError: validateEmail(value));
  }

  // 비밀번호 에러 업데이트
  void updatePasswordError(String value) {
    state = state.copyWith(passwordError: validatePassword(value));
  }

  // 닉네임 에러 업데이트, 중복 체크
  void updateNicknameError(String value) {
    state = state.copyWith(nicknameError: validateNickname(value));
    checkNicknameAvailability(value);
  }

  // 닉네임 중복 체크 (debounce 적용)
  Future<void> checkNicknameAvailability(String nickname) async {
    _nicknameDebounce?.cancel();

    final formatError = validateNickname(nickname);
    if (formatError != null) {
      state = state.copyWith(isNicknameAvailable: null);
      return;
    }

    _nicknameDebounce = Timer(const Duration(milliseconds: 300), () async {
      state = state.copyWith(isCheckingNickname: true);

      try {
        final response = await _authClient.checkNickname(nickname);
        
        state = state.copyWith(
          isNicknameAvailable: response.available,
          isCheckingNickname: false,
          nicknameError: response.available ? null : '이미 사용 중인 닉네임입니다.',
        );
      } catch (e) {
        state = state.copyWith(
          isCheckingNickname: false,
          isNicknameAvailable: null,
        );
      }
    });
  }

  // 로그인
  Future<String?> login(String email, String password) async {
    if (email.isEmpty || password.isEmpty) {
      return '이메일과 비밀번호를 입력해주세요.';
    }

    state = state.copyWith(isLoading: true, errorMessage: null);

    try {
      final response = await _authClient.login({
        'username': email,
        'password': password,
      });
      
      // 토큰 저장 (token_storage_provider 참고)
      await ref.read(tokenStorageProvider.notifier).saveTokens(
        accessToken: response.accessToken,
        refreshToken: response.refreshToken,
      );
      
      state = state.copyWith(isLoading: false);
      return null; // 성공
    } on DioException catch (e) {
      String errorMessage = '로그인에 실패했습니다.';

      if (e.response != null) {
        final statusCode = e.response?.statusCode;
        final data = e.response?.data;

        if (statusCode == 401 || statusCode == 422) {
          errorMessage = '이메일 또는 비밀번호가 올바르지 않습니다.';
        } else if (data is Map<String, dynamic> && data.containsKey('message')) {
          errorMessage = data['message'];
        }
      }

      state = state.copyWith(isLoading: false, errorMessage: errorMessage);
      return errorMessage;
    } catch (e) {
      const errorMessage = '예상치 못한 오류가 발생했습니다.';
      state = state.copyWith(isLoading: false, errorMessage: errorMessage);
      return errorMessage;
    }
  }

  // 회원가입
  Future<String?> register(String email, String password, String nickname) async {
    // 검증
    final emailError = validateEmail(email);
    if (emailError != null) return emailError;

    final passwordError = validatePassword(password);
    if (passwordError != null) return passwordError;

    final nicknameError = validateNickname(nickname);
    if (nicknameError != null) return nicknameError;

    // 닉네임 중복 체크 확인
    if (state.isNicknameAvailable == false) {
      return '이미 사용 중인 닉네임입니다.';
    }

    if (state.isNicknameAvailable == null) {
      return '닉네임 중복 체크를 진행 중입니다. 잠시만 기다려주세요.';
    }

    state = state.copyWith(isLoading: true, errorMessage: null);

    try {
      final request = RegisterRequestDTO(
        email: email,
        nickname: nickname,
        password: password,
      );

      await _authClient.register(request);
      
      state = state.copyWith(isLoading: false);
      return null; // 성공
    } on DioException catch (e) {
      String errorMessage = '회원가입에 실패했습니다.';

      if (e.response != null) {
        final data = e.response?.data;
        if (data is Map<String, dynamic> && data.containsKey('message')) {
          errorMessage = data['message'];
        }
      }

      state = state.copyWith(isLoading: false, errorMessage: errorMessage);
      return errorMessage;
    } catch (e) {
      const errorMessage = '예상치 못한 오류가 발생했습니다.';
      state = state.copyWith(isLoading: false, errorMessage: errorMessage);
      return errorMessage;
    }
  }

  // 토큰 가져오기
  Future<String?> getAccessToken() async {
    return await ref.read(tokenStorageProvider.notifier).getAccessToken();
  }

  Future<String?> getRefreshToken() async {
    return await ref.read(tokenStorageProvider.notifier).getRefreshToken();
  }

  // 로그아웃 (토큰 삭제)
  Future<void> logout() async {
    await ref.read(tokenStorageProvider.notifier).clearTokens();
    state = const AuthState();
  }

  // 상태 초기화
  void reset() => state = const AuthState();

  void requireLoginPopup() {
    state = state.copyWith(showLoginPopup: true);
  }

  void clearLoginPopup() {
    state = state.copyWith(showLoginPopup: false);
  }
}
