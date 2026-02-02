import 'package:flutter/material.dart';
import 'package:no_ai_sns/core/constants/app_images.dart';
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
    return Stack(
      alignment: Alignment.center,
      children: [
        _appIcon(context),
        Align(
          alignment: Alignment.centerRight,
          child: _alertIcon()
              .pOnly(right: AppSpacing.md)
              .onTap(tappedNotification),
        ),
      ],
    ).pOnly(bottom: 4);
  }

  Widget _alertIcon() {
    return Stack(
      children: [
        Icon(size: 30, Icons.notifications_none),
        if (currentAlertCount > 0) _alertCount(),
      ],
    );
  }

  Widget _alertCount() {
    return Positioned(
      right: 0,
      top: 0,
      child: Container(
        width: 16,
        height: 16,
        decoration: BoxDecoration(color: Colors.red, shape: BoxShape.circle),
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
    );
  }

  Widget _appIcon(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadiusGeometry.circular(12),
      child: Image.asset(
        AppImages.appLogoText,
        width: 60,
        height: 60,
        color: context.theme.colorScheme.onSurface,
      ),
    );
  }
}
