import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:no_ai_sns/features/auth/presentation/pages/login_page.dart';
import 'package:no_ai_sns/features/auth/presentation/providers/token_storage_provider.dart';
import 'package:no_ai_sns/features/auth/presentation/providers/user_id_storage_provider.dart';
import 'package:no_ai_sns/features/home/presentation/pages/home_page.dart';

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
              onPressed: () async {
                // accessToken 지울 때 userId도 같이 지움
                await Future.wait([
                  ref.read(tokenStorageProvider.notifier).clearTokens(),
                  ref.read(userIdStorageProvider.notifier).clearUserId(),
                ]);

                if (context.mounted) {
                  context.go(HomePage.routeName);
                }
              },
              child: const Text('AccessToken & UserID Remove Go to Home'),
            ),
          ],
        ),
      ),
    );
  }
}
