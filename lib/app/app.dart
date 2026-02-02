import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:no_ai_sns/core/presentation/w_login_required.dart';
import 'package:no_ai_sns/design_system/theme/app_theme.dart';
import 'package:no_ai_sns/features/auth/presentation/pages/login_page.dart';
import 'package:no_ai_sns/features/auth/presentation/pages/register_page.dart';
import 'package:no_ai_sns/core/providers/login_popup_provider.dart';

import '../core/constants/app_strings.dart';
import 'app_router.dart';

class NoAiSnsApp extends ConsumerWidget {
  const NoAiSnsApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      title: AppStrings.appTitle,
      theme: AppTheme.light(),
      darkTheme: AppTheme.dark(),
      themeMode: ThemeMode.system,
      routerConfig: AppRouter.router,
      builder: (context, child) {
        return _AuthPopupListener(child: child ?? const SizedBox.shrink());
      },
    );
  }
}

class _AuthPopupListener extends ConsumerWidget {
  const _AuthPopupListener({required this.child});

  final Widget child;

  static bool _isLoginSheetOpen = false;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<bool>(loginPopupProvider, (prev, next) {
      if (!next) {
        return;
      }
      ref.read(loginPopupProvider.notifier).hide();
      if (_isLoginSheetOpen) {
        return;
      }
      _isLoginSheetOpen = true;
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (!context.mounted) {
          return;
        }
        final rootContext = AppRouter.rootNavigatorKey.currentContext;
        if (rootContext == null) {
          return;
        }
        showModalBottomSheet(
          context: rootContext,
          useRootNavigator: true,
          showDragHandle: true,
          builder: (_) {
            return LoginRequiredWidget(
              tappedLogin: () {
                AppRouter.router.go(LoginPage.routeName);
              },
              tappedSignUp: () {
                AppRouter.router.go(RegisterPage.routeName);
              },
              tappedMaybeLater: () {
                AppRouter.router.pop();
              },
            );
          },
        ).whenComplete(() {
          _isLoginSheetOpen = false;
        });
      });
    });

    return child;
  }
}
