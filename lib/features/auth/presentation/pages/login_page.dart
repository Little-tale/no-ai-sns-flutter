import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:no_ai_sns/core/network/auth/auth_client.dart';
import 'package:no_ai_sns/core/network/base_url.dart';
import 'package:no_ai_sns/design_system/design_system.dart';
import 'package:no_ai_sns/features/auth/presentation/pages/register_page.dart';
import 'package:no_ai_sns/features/home/presentation/pages/home_page.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  static const routeName = '/login';

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
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
    super.dispose();
  }

  Future<void> _handleLogin() async {
    final email = _emailController.text.trim();
    final password = _passwordController.text;

    if (email.isEmpty || password.isEmpty) {
      _showErrorDialog('이메일과 비밀번호를 입력해주세요.');
      return;
    }

    setState(() {
      _isLoading = true;
    });

    try {
      final response = await _authClient.login(email, password);

      if (!mounted) return;

      // 토큰 저장
      debugPrint('accessToken : ${response.accessToken}');
      debugPrint('refreshToken : ${response.refreshToken}');

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('로그인 성공'),
          duration: Duration(seconds: 2),
          backgroundColor: Colors.green,
        ),
      );

      // 메인 화면 이동
      context.go(HomePage.routeName);
    } on DioException catch (e) {
      if (!mounted) return;

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
<<<<<<< HEAD
      body: Center(
<<<<<<< HEAD
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () {
                context.go(OnboardPage.routeName);
              },
              child: const Text('Enter App'),
            ),
            const SizedBox(height: 12),
            // OutlinedButton(
            //   onPressed: () {
            //     context.go(BlocExamPage.routeName);
            //   },
            //   child: const Text('Open Bloc Calculator'),
            // ),
          ],
        ),
=======
        child: VStack([
          ElevatedButton(
            onPressed: () {
              context.go(OnboardPage.routeName);
            },
            child: const Text('온보딩 화면 이동'),
          ),
        ], alignment: MainAxisAlignment.center),
>>>>>>> 48818a8 ([Ui] 위젯 간격 헬퍼 함수 추가, 로그인 화면에 VStack 추가)
=======
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(AppSpacing.md),
          child: VStack([
            height24,
            Text("Email"),
            height8,
            AppTextField(
              labelText: "Enter your email",
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
            height32,
            AppButton(
              text: "Login",
              width: double.infinity,
              isLoading: _isLoading,
              onPressed: _isLoading ? null : _handleLogin,
            ),
            height16,
            Center(
              child: HStack([
                Text("Don't have an account?"),
                width8,
                GestureDetector(
                  onTap: _isLoading ? null : () => context.go(RegisterPage.routeName),
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                      color: _isLoading ? AppColors.dividerLight : AppColors.brand,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ]),
            ),
          ]),
        ),
>>>>>>> 2c1833f ([Project] gitignore 수정 후 추적하지 않던 파일 추가)
      ),
    );
  }
}
