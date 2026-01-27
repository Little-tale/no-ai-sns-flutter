import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:no_ai_sns/design_system/tokens/colors.dart';
import 'package:no_ai_sns/design_system/tokens/spacing.dart' show AppSpacing;
import 'package:no_ai_sns/design_system/widgets/app_button.dart';
import 'package:no_ai_sns/design_system/widgets/app_text_field.dart';
import 'package:no_ai_sns/design_system/widgets/spacing.dart';
import 'package:no_ai_sns/features/auth/presentation/pages/login_page.dart';
import 'package:velocity_x/velocity_x.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  static const routeName = '/register';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(AppSpacing.sm),
          child: VStack([
            height24,
            Text("Email"),
            height8,
            AppTextField(
              labelText: "your@email.com",
              keyboardType: TextInputType.emailAddress,
            ),
            height16,
            Text("Password"),
            height8,
            AppTextField(
              labelText: "Enter your password",
              obscureText: true,
              isPasswordField: true,
              keyboardType: TextInputType.visiblePassword,
            ),
            height32,
            AppButton(
              text: "Register",
              width: double.infinity,
              onPressed: () {
                // 회원가입 함수 연동
                // 완료 시 로그인으로 이동
              },
            ),
            height16,
            Center(
              child: HStack([
                Text("Don't have an account?"),
                width8,
                GestureDetector(
                  onTap: () => context.go(LoginPage.routeName),
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                        color: AppColors.brand,
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
