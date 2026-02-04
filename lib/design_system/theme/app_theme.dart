import 'package:flutter/material.dart';

import '../tokens/colors.dart';
import '../tokens/typography.dart';

class AppTheme {
  const AppTheme._();

  static ThemeData light() {
    final base = ThemeData.light();
    return base.copyWith(
      colorScheme: base.colorScheme.copyWith(
        primary: AppColors.brand,
        onPrimary: Colors.white,
        secondary: AppColors.brand,
        error: AppColors.aiRejected,
        surface: AppColors.surfaceLight,
      ),
      scaffoldBackgroundColor: AppColors.backgroundLight,
      dividerColor: AppColors.dividerLight,
      textTheme: AppTypography.textTheme.apply(
        fontFamily: AppTypography.fontFamily,
        bodyColor: AppColors.textPrimaryLight,
        displayColor: AppColors.textPrimaryLight,
      ),
    );
  }

  static ThemeData dark() {
    final base = ThemeData.dark();
    return base.copyWith(
      colorScheme: base.colorScheme.copyWith(
        primary: AppColors.brandDark,
        onPrimary: AppColors.backgroundDark,
        secondary: AppColors.brandDark,
        error: AppColors.aiRejectedDark,
        surface: AppColors.surfaceDark,
      ),
      scaffoldBackgroundColor: AppColors.backgroundDark,
      dividerColor: AppColors.dividerDark,
      textTheme: AppTypography.textTheme.apply(
        fontFamily: AppTypography.fontFamily,
        bodyColor: AppColors.textPrimaryDark,
        displayColor: AppColors.textPrimaryDark,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(),
    );
  }
}
