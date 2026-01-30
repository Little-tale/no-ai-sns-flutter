import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:no_ai_sns/design_system/design_system.dart';
import 'package:no_ai_sns/features/auth/presentation/pages/register_page.dart';
import 'package:no_ai_sns/features/auth/presentation/providers/auth_notifier.dart';
import 'package:no_ai_sns/features/home/presentation/pages/home_page.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({super.key});

  static const routeName = '/login';

  @override
  ConsumerState<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  Future<void> _handleLogin() async {
    final email = _emailController.text.trim();
    final password = _passwordController.text;

    final notifier = ref.read(authProvider.notifier);
    final errorMessage = await notifier.login(email, password);

    if (!mounted) return;

    if (errorMessage == null) {
      final accessToken = await notifier.getAccessToken();
      final refreshToken = await notifier.getRefreshToken();
      final userId = await notifier.getUserId();
      
      debugPrint('=== 로그인 성공 후 저장된 토큰, userId 확인 ===');
      debugPrint('accessToken : $accessToken');
      debugPrint('refreshToken : $refreshToken');
      debugPrint('userId : $userId');
      debugPrint('======================================');
      
      if (!mounted) return;
      
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('로그인 성공'),
          duration: Duration(seconds: 2),
          backgroundColor: Colors.green,
        ),
      );
      context.go(HomePage.routeName);
    } else {
      // 로그인 실패
      _showErrorDialog(errorMessage);
    }
  }

  void _showErrorDialog(String message) => showDialog(
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

  @override
  Widget build(BuildContext context) {
    final authState = ref.watch(authProvider);

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(AppSpacing.md),
          child: VStack([
            height24,
            const Text("Email"),
            height8,
            AppTextField(
              labelText: "Enter your email",
              keyboardType: TextInputType.emailAddress,
              controller: _emailController,
              enabled: !authState.isLoading,
            ),
            height16,
            const Text("Password"),
            height8,
            AppTextField(
              labelText: "Enter your password",
              obscureText: true,
              isPasswordField: true,
              keyboardType: TextInputType.visiblePassword,
              controller: _passwordController,
              enabled: !authState.isLoading,
            ),
            height32,
            AppButton(
              text: "Login",
              width: double.infinity,
              isLoading: authState.isLoading,
              onPressed: authState.isLoading ? null : _handleLogin,
            ),
            height16,
            Center(
              child: HStack([
                const Text("Don't have an account?"),
                width8,
                GestureDetector(
                  onTap: authState.isLoading 
                      ? null 
                      : () => context.go(RegisterPage.routeName),
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                      color: authState.isLoading 
                          ? AppColors.dividerLight 
                          : AppColors.brand,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ]),
            ),
          ]),
        ),
      ),
    );
  }
}
