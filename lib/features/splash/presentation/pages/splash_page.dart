import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:no_ai_sns/features/auth/presentation/providers/token_storage_provider.dart';
import 'package:no_ai_sns/features/home/presentation/pages/home_page.dart';

import '../../../auth/presentation/pages/login_page.dart';

class SplashPage extends ConsumerWidget {
  const SplashPage({super.key});

  static const routeName = '/splash';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
            ElevatedButton(
              onPressed: () {
                context.go(HomePage.routeName);
              },
              child: const Text('Go to Home'),
            ),
            ElevatedButton(
              onPressed: () {
                final storage = ref.read(tokenStorageProvider.notifier);
                storage.clearTokens();
                context.go(HomePage.routeName);
              },
              child: const Text('AccessToken Remove Go to Home'),
            ),
          ],
        ),
      ),
    );
  }
}
