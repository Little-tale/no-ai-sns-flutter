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
    super.dispose();
  }

  Future<void> _handleRegister() async {
    if (_emailController.text.isEmpty ||
        _passwordController.text.isEmpty ||
        _nicknameController.text.isEmpty) {
      _showErrorDialog('모든 필드를 입력해주세요.');
      return;
    }

    setState(() {
      _isLoading = true;
    });

    try {
      final request = RegisterRequestDTO(
        email: _emailController.text.trim(),
        nickname: _nicknameController.text.trim(),
        password: _passwordController.text,
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
            ),
            height16,
            Text("Nickname"),
            height8,
            AppTextField(
              labelText: "Choose a unique name",
              controller: _nicknameController,
              enabled: !_isLoading,
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
