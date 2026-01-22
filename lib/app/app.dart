import 'package:flutter/material.dart';
import 'package:no_ai_sns/design_system/theme/app_theme.dart';

import '../core/constants/app_strings.dart';
import 'app_router.dart';

class NoAiSnsApp extends StatelessWidget {
  const NoAiSnsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: AppStrings.appTitle,
      theme: AppTheme.light(),
      darkTheme: AppTheme.dark(),
      themeMode: ThemeMode.system,
      routerConfig: AppRouter.router,
    );
  }
}
