import 'package:flutter/material.dart';
import 'package:no_ai_sns/design_system/tokens/spacing.dart';
import 'package:velocity_x/velocity_x.dart';

class TopNavigationBarWidget extends StatelessWidget {
  const TopNavigationBarWidget({
    super.key,
    required this.currentAlertCount,
    required this.tappedNotification,
  });

  final int currentAlertCount;

  final VoidCallback tappedNotification;

  @override
  Widget build(BuildContext context) {
    return HStack(spacing: AppSpacing.md, [
      Icon(Icons.ac_unit_outlined),
      "NoA".text.bold.make(),
      Spacer(),

      Stack(
        children: [
          // TODO: App Logo
          Icon(size: 30, Icons.notifications_none),
          if (currentAlertCount > 0)
            Positioned(
              right: 0,
              top: 0,
              child: Container(
                width: 16,
                height: 16,
                decoration: BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                ),
                child: currentAlertCount > 9
                    ? const SizedBox.shrink()
                    : currentAlertCount
                          .toString()
                          .text
                          .size(8)
                          .semiBold
                          .color(Colors.white)
                          .align(TextAlign.center)
                          .make(),
              ),
            ),
        ],
      ).onTap(tappedNotification),
    ]);
  }
}
