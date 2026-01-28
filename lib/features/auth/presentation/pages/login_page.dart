import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:no_ai_sns/features/onboard/presentation/pages/onboard_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  static const routeName = '/login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Center(
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
      ),
    );
  }
}
