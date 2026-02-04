import 'package:flutter/material.dart';
import 'package:no_ai_sns/core/constants/app_icons.dart';
import 'package:no_ai_sns/core/constants/app_images.dart';
import 'package:no_ai_sns/core/presentation/w_ios_button.dart';
import 'package:no_ai_sns/design_system/tokens/colors.dart';
import 'package:no_ai_sns/features/notification/domain/entities/alert_/alert_entity.gen.dart';
import 'package:no_ai_sns/features/notification/domain/entities/alert_type/alert_type_entity.dart';
import 'package:velocity_x/velocity_x.dart';

class NotificationItemWidget extends StatelessWidget {
  const NotificationItemWidget({
    super.key,
    required this.item,
    required this.tappedItem,
  });

  final AlertEntity item;

  final VoidCallback tappedItem;

  @override
  Widget build(BuildContext context) {
    debugPrint(item.toString());
    return Stack(
      children: [
        _body(context)
            .pSymmetric(v: 8, h: 12)
            .color(_getBackgroundColor(item.type, context)),
        if (item.isRead)
          Positioned.fill(
            child: Container(color: Colors.black.withValues(alpha: 0.5)),
          ),
      ],
    ).onIOSTap(tappedItem);
  }

  Widget _body(BuildContext context) {
    return HStack(spacing: 12, [
      _getLeadingWidget(item.type, context),

      _titleBodyWidget(),

      Spacer(),

      if (item.type == AlertType.profileImage)
        ClipRRect(
          borderRadius: BorderRadiusGeometry.circular(12),
          child: Container(
            color: AppColors.aiRejected,
            child: "Fix".text.semiBold
                .size(16)
                .color(AppColors.backgroundLight)
                .make()
                .pSymmetric(h: 16, v: 6),
          ),
        ),
    ]);
  }

  Widget _titleBodyWidget() {
    return VStack(spacing: 4, [
      item.title.text.bold.size(20).make(),
      if (item.content != null) item.content!.text.medium.size(15).make(),
    ]);
  }

  Color _getBackgroundColor(AlertType item, BuildContext context) {
    switch (item) {
      case AlertType.profileImage:
        return AppColors.aiRejected.withValues(alpha: 0.2);
      case AlertType.postLike:
        return context.backgroundColor;
      case AlertType.postComment:
        return context.backgroundColor;
      case AlertType.dm:
        return context.cardColor;
      case AlertType.unknown:
        return context.backgroundColor;
      case AlertType.postUpload:
        return context.backgroundColor;
      case AlertType.postUploadFail:
        if (context.isDarkMode) {
          return AppColors.aiRejectedDark.withAlpha(180);
        }
        return AppColors.aiRejected;
    }
  }

  Widget _getLeadingWidget(AlertType item, BuildContext context) {
    switch (item) {
      case AlertType.dm:
        return Icon(Icons.ac_unit_rounded, size: 24);
      case AlertType.profileImage:
        return Icon(Icons.ac_unit_rounded, size: 24);
      case AlertType.postLike:
        return Image.asset(AppIcons.likePerspective, width: 30, height: 30);
      case AlertType.postComment:
        return Image.asset(AppIcons.commentPerspective, width: 30, height: 30);
      case AlertType.postUpload:
        return Image.asset(AppImages.alert3D, width: 30, height: 30);
      case AlertType.postUploadFail:
        return Image.asset(AppImages.error3D, width: 30, height: 30);

      case AlertType.unknown:
        return Icon(Icons.ac_unit_rounded, size: 24);
    }
  }
}
