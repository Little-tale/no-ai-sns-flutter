import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:no_ai_sns/design_system/tokens/colors.dart';
import 'package:no_ai_sns/design_system/tokens/spacing.dart' show AppSpacing;
import 'package:no_ai_sns/design_system/widgets/app_button.dart';
import 'package:no_ai_sns/design_system/widgets/app_text_field.dart';
import 'package:no_ai_sns/design_system/widgets/spacing.dart';
import 'package:no_ai_sns/features/auth/presentation/pages/login_page.dart';
import 'package:no_ai_sns/features/auth/presentation/providers/auth_notifier.dart';
import 'package:velocity_x/velocity_x.dart';

class RegisterPage extends ConsumerStatefulWidget {
  const RegisterPage({super.key});

  static const routeName = '/register';

  @override
  ConsumerState<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends ConsumerState<RegisterPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _nicknameController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _nicknameController.dispose();
    super.dispose();
  }

  Future<void> _handleRegister() async {
    final email = _emailController.text.trim();
    final password = _passwordController.text;
    final nickname = _nicknameController.text.trim();

    final notifier = ref.read(authNotifierProvider.notifier);
    final errorMessage = await notifier.register(email, password, nickname);

    if (!mounted) return;

    if (errorMessage == null) {
      // 회원가입 성공
      _showSuccessDialog('회원가입이 완료되었습니다!', () {
        context.go(LoginPage.routeName);
      });
    } else {
      // 회원가입 실패
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

  void _showSuccessDialog(String message, VoidCallback onConfirm) => showDialog(
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

  @override
  Widget build(BuildContext context) {
    final authState = ref.watch(authNotifierProvider);
    final notifier = ref.read(authNotifierProvider.notifier);

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(AppSpacing.md),
          child: VStack([
            height24,
            const Text("Email"),
            height8,
            AppTextField(
              labelText: "your@email.com",
              keyboardType: TextInputType.emailAddress,
              controller: _emailController,
              enabled: !authState.isLoading,
              errorText: authState.emailError,
              onChanged: notifier.updateEmailError,
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
              errorText: authState.passwordError,
              onChanged: notifier.updatePasswordError,
            ),
            height16,
            const Text("Nickname"),
            height8,
            AppTextField(
              labelText: "Choose a unique name",
              controller: _nicknameController,
              enabled: !authState.isLoading,
              errorText: authState.nicknameError,
              suffixIcon: authState.isCheckingNickname
                  ? const SizedBox(
                      width: 20,
                      height: 20,
                      child: Padding(
                        padding: EdgeInsets.all(12.0),
                        child: CircularProgressIndicator(strokeWidth: 2),
                      ),
                    )
                  : authState.isNicknameAvailable == true
                      ? const Icon(Icons.check_circle, color: Colors.green)
                      : authState.isNicknameAvailable == false
                          ? const Icon(Icons.error, color: Colors.red)
                          : null,
              onChanged: notifier.updateNicknameError,
            ),
            height32,
            AppButton(
              text: "Register",
              width: double.infinity,
              isLoading: authState.isLoading,
              onPressed: authState.isLoading ? null : _handleRegister,
            ),
            height16,
            Center(
              child: HStack([
                const Text("Already have an account?"),
                width8,
                GestureDetector(
                  onTap: authState.isLoading 
                      ? null 
                      : () => context.go(LoginPage.routeName),
                  child: Text(
                    "Login",
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
