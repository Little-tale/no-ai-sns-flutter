import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../auth/presentation/pages/login_page.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  static const routeName = '/splash';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Splash'),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                context.go(LoginPage.routeName);
              },
              child: const Text('Go to Login'),
            ),
          ],
        ),
      ),
    );
  }
}
