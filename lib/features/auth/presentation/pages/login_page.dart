import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:no_ai_sns/design_system/design_system.dart';
import 'package:no_ai_sns/design_system/widgets/app_text_field.dart';
import 'package:no_ai_sns/design_system/widgets/spacing.dart';
import 'package:no_ai_sns/features/onboard/presentation/pages/onboard_page.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  static const routeName = '/login';

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
          padding: const EdgeInsets.all(AppSpacing.sm),
          child: VStack([
            height24,
            Text("Email"),
            height8,
            AppTextField(
              labelText: "Enter your email",
            ),
            height16,
            Text("Password"),
            AppTextField(
              labelText: "Enter your password",
            ),
          ], alignment: MainAxisAlignment.start),
        ),
>>>>>>> 2c1833f ([Project] gitignore 수정 후 추적하지 않던 파일 추가)
      ),
    );
  }
}
