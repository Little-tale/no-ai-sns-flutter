import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:no_ai_sns/design_system/widgets/spacing.dart';
import 'package:no_ai_sns/features/onboard/presentation/pages/onboard_page.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  static const routeName = '/login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      ),
    );
  }
}
