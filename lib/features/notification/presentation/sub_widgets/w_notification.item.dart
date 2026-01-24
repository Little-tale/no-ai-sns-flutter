import 'package:flutter/material.dart';
import 'package:no_ai_sns/design_system/tokens/colors.dart';
import 'package:no_ai_sns/features/notification/domain/entities/alert_/alert_entity.gen.dart';
import 'package:no_ai_sns/features/notification/domain/entities/alert_type/alert_type_entity.dart';
import 'package:velocity_x/velocity_x.dart';

class NotificationItemWidget extends StatelessWidget {
  const NotificationItemWidget({super.key, required this.item});

  final AlertEntity item;

  @override
  Widget build(BuildContext context) {
    return HStack(spacing: 12, [
      // 상황별 에셋 필요
      Icon(Icons.ac_unit_rounded, size: 24),

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
    ]).pSymmetric(v: 8, h: 12).color(_getBackgroundColor(item.type, context));
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
    }
  }
}
