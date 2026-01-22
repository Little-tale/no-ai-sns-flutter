import 'package:flutter/material.dart';
import 'package:no_ai_sns/design_system/tokens/spacing.dart';
import 'package:no_ai_sns/features/home/presentation/sub_widgets/feed_item/w_profile_circle_border.dart';
import 'package:velocity_x/velocity_x.dart';

class FeedTopSectionWidget extends StatelessWidget {
  const FeedTopSectionWidget({
    super.key,
    required this.userName,
    required this.regDate,
    this.imageURLString,
  });

  final String userName;
  final String regDate;
  final String? imageURLString;

  @override
  Widget build(BuildContext context) {
    return HStack(spacing: 8, [
      ProfileCircleBorderWidget(size: 36, imageURLString: imageURLString),
      VStack(spacing: AppSpacing.xs, [
        userName.text.medium.size(14).make().fittedBox(),
        regDate.text.light.make(),
      ]),
      Spacer(),
    ]);
  }
}
