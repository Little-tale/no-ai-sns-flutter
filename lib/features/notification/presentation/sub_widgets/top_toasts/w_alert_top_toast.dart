import 'package:flutter/material.dart';
import 'package:no_ai_sns/core/constants/app_images.dart';
import 'package:no_ai_sns/design_system/design_system.dart';
import 'package:velocity_x/velocity_x.dart';

class AlertTopToastWidget extends StatelessWidget {
  const AlertTopToastWidget({super.key, required this.message});

  final String message;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Container(
        constraints: BoxConstraints(maxWidth: context.screenWidth * 0.8),
        color: context.theme.colorScheme.primaryContainer,
        child: HStack(spacing: 8, [
          Image.asset(AppImages.alert3D, width: 32, height: 32),
          VStack([
            'New Alarm'.text.size(14).bold.make(),
            message.text.size(12).semiBold.make(),
          ]),
        ]).p(AppSpacing.md),
      ),
    );
  }
}
