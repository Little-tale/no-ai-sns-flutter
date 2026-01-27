import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:no_ai_sns/core/data/DTO/auth/dto_register_request.gen.dart';
import 'package:no_ai_sns/core/network/auth/auth_client.dart';
import 'package:no_ai_sns/core/network/base_url.dart';
import 'package:no_ai_sns/design_system/tokens/colors.dart';
import 'package:no_ai_sns/design_system/tokens/spacing.dart' show AppSpacing;
import 'package:no_ai_sns/design_system/widgets/app_button.dart';
import 'package:no_ai_sns/design_system/widgets/app_text_field.dart';
import 'package:no_ai_sns/design_system/widgets/spacing.dart';
import 'package:no_ai_sns/features/auth/presentation/pages/login_page.dart';
import 'package:velocity_x/velocity_x.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  static const routeName = '/register';

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _nicknameController = TextEditingController();
  bool _isLoading = false;

  // 에러 메시지 상태
  String? _emailError;
  String? _passwordError;
  String? _nicknameError;

  // 닉네임 중복 체크
  Timer? _nicknameDebounce;
  bool _isCheckingNickname = false;
  bool? _isNicknameAvailable;

  late final AuthClient _authClient;

  @override
  void initState() {
    super.initState();
    final dio = Dio(
      BaseOptions(
        baseUrl: baseURL,
        contentType: 'application/json',
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
      ),
    );
    _authClient = AuthClient(dio, baseUrl: baseURL);
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _nicknameController.dispose();
    _nicknameDebounce?.cancel();
    super.dispose();
  }

  // 닉네임 : 2~20자, 한글, 영문, 숫자, 밑줄 포함
  String? _validateNickname(String value) {
    if (value.isEmpty) {
      return '닉네임을 입력해주세요.';
    }
    if (value.length < 2 || value.length > 20) {
      return '닉네임은 2~20자 사이여야 합니다.';
    }
    // 한글, 영문, 숫자, 밑줄만 허용
    final nicknameRegex = RegExp(r'^[가-힣a-zA-Z0-9_]+$');
    if (!nicknameRegex.hasMatch(value)) {
      return '닉네임은 한글, 영문, 숫자, 밑줄만 사용할 수 있습니다.';
    }
    return null;
  }

  // 닉네임 중복 체크
  Future<void> _checkNicknameAvailability(String nickname) async {
    _nicknameDebounce?.cancel();

    final formatError = _validateNickname(nickname);
    if (formatError != null) {
      setState(() {
        _isNicknameAvailable = null;
      });
      return;
    }

    _nicknameDebounce = Timer(const Duration(milliseconds: 500), () async {
      setState(() {
        _isCheckingNickname = true;
      });

      try {
        final response = await _authClient.checkNickname(nickname);
        
        if (!mounted) return;

        setState(() {
          _isNicknameAvailable = response.available;
          _isCheckingNickname = false;
          
          if (!response.available) {
            _nicknameError = '이미 사용 중인 닉네임입니다.';
          } else {
            _nicknameError = null;
          }
        });
      } catch (e) {
        if (!mounted) return;
        
        setState(() {
          _isCheckingNickname = false;
          _isNicknameAvailable = null;
        });
      }
    });
  }

  // 비밀번호 : 8~72자, 영어+숫자
  String? _validatePassword(String value) {
    if (value.isEmpty) {
      return '비밀번호를 입력해주세요.';
    }
    if (value.length < 8 || value.length > 72) {
      return '비밀번호는 8~72자 사이여야 합니다.';
    }
    // 영문과 숫자만 허용
    final passwordRegex = RegExp(r'^[a-zA-Z0-9]+$');
    if (!passwordRegex.hasMatch(value)) {
      return '비밀번호는 영문과 숫자만 사용할 수 있습니다.';
    }
    // 영문과 숫자 모두 포함 확인
    final hasLetter = RegExp(r'[a-zA-Z]').hasMatch(value);
    final hasDigit = RegExp(r'[0-9]').hasMatch(value);
    if (!hasLetter || !hasDigit) {
      return '비밀번호는 영문과 숫자를 모두 포함해야 합니다.';
    }
    return null;
  }

  // 이메일 검증
  String? _validateEmail(String value) {
    if (value.isEmpty) {
      return '이메일을 입력해주세요.';
    }
    final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if (!emailRegex.hasMatch(value)) {
      return '올바른 이메일 형식이 아닙니다.';
    }
    return null;
  }

  Future<void> _handleRegister() async {
    // 입력값 검증
    final email = _emailController.text.trim();
    final password = _passwordController.text;
    final nickname = _nicknameController.text.trim();

    // 이메일 검증
    final emailError = _validateEmail(email);
    if (emailError != null) {
      _showErrorDialog(emailError);
      return;
    }

    // 비밀번호 검증
    final passwordError = _validatePassword(password);
    if (passwordError != null) {
      _showErrorDialog(passwordError);
      return;
    }

    // 닉네임 검증
    final nicknameError = _validateNickname(nickname);
    if (nicknameError != null) {
      _showErrorDialog(nicknameError);
      return;
    }

    // 닉네임 중복 체크 확인
    if (_isNicknameAvailable == false) {
      _showErrorDialog('이미 사용 중인 닉네임입니다.');
      return;
    }

    if (_isNicknameAvailable == null) {
      _showErrorDialog('닉네임 중복 체크를 진행 중입니다. 잠시만 기다려주세요.');
      return;
    }

    setState(() {
      _isLoading = true;
    });

    try {
      final request = RegisterRequestDTO(
        email: email,
        nickname: nickname,
        password: password,
      );

      await _authClient.register(request);

      if (!mounted) return;

      // 성공 시 로그인 페이지로 이동
      _showSuccessDialog('회원가입이 완료되었습니다!', () {
        context.go(LoginPage.routeName);
      });
    } on DioException catch (e) {
      if (!mounted) return;

      String errorMessage = '회원가입에 실패했습니다.';

      if (e.response != null) {
        final data = e.response?.data;
        if (data is Map<String, dynamic> && data.containsKey('message')) {
          errorMessage = data['message'];
        }
      }

      _showErrorDialog(errorMessage);
    } catch (e) {
      if (!mounted) return;
      _showErrorDialog('예상 못한 오류가 발생했습니다.');
    } finally {
      if (mounted) {
        setState(() {
          _isLoading = false;
        });
      }
    }
  }

  void _showErrorDialog(String message) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('오류'),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('확인'),
          ),
        ],
      ),
    );
  }

  void _showSuccessDialog(String message, VoidCallback onConfirm) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('성공'),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
              onConfirm();
            },
            child: const Text('확인'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(AppSpacing.md),
          child: VStack([
            height24,
            Text("Email"),
            height8,
            AppTextField(
              labelText: "your@email.com",
              keyboardType: TextInputType.emailAddress,
              controller: _emailController,
              enabled: !_isLoading,
              errorText: _emailError,
              onChanged: (value) {
                setState(() {
                  _emailError = _validateEmail(value);
                });
              },
            ),
            height16,
            Text("Password"),
            height8,
            AppTextField(
              labelText: "Enter your password",
              obscureText: true,
              isPasswordField: true,
              keyboardType: TextInputType.visiblePassword,
              controller: _passwordController,
              enabled: !_isLoading,
              errorText: _passwordError,
              onChanged: (value) {
                setState(() {
                  _passwordError = _validatePassword(value);
                });
              },
            ),
            height16,
            Text("Nickname"),
            height8,
            AppTextField(
              labelText: "Choose a unique name",
              controller: _nicknameController,
              enabled: !_isLoading,
              errorText: _nicknameError,
              suffixIcon: _isCheckingNickname
                  ? const SizedBox(
                      width: 20,
                      height: 20,
                      child: Padding(
                        padding: EdgeInsets.all(12.0),
                        child: CircularProgressIndicator(strokeWidth: 2),
                      ),
                    )
                  : _isNicknameAvailable == true
                      ? const Icon(Icons.check_circle, color: Colors.green)
                      : _isNicknameAvailable == false
                          ? const Icon(Icons.error, color: Colors.red)
                          : null,
              onChanged: (value) {
                setState(() {
                  _nicknameError = _validateNickname(value);
                });
                // 닉네임 중복 체크 API 호출 (debounce 적용)
                _checkNicknameAvailability(value);
              },
            ),
            height32,
            AppButton(
              text: "Register",
              width: double.infinity,
              isLoading: _isLoading,
              onPressed: _isLoading ? null : _handleRegister,
            ),
            height16,
            Center(
              child: HStack([
                Text("Already have an account?"),
                width8,
                GestureDetector(
                  onTap: _isLoading ? null : () => context.go(LoginPage.routeName),
                  child: Text(
                    "Login",
                    style: TextStyle(
                        color: _isLoading ? AppColors.dividerLight : AppColors.brand,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ]),
            ),
          ]),
        )
      ),
    );
  }
}
