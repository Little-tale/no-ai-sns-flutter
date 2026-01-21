import 'package:flutter/material.dart';

import '../core/constants/app_strings.dart';
import 'app_router.dart';

class NoAiSnsApp extends StatelessWidget {
  const NoAiSnsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: AppStrings.appTitle,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      routerConfig: AppRouter.router,
    );
  }
}
