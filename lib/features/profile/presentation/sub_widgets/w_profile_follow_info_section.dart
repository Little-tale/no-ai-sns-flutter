import 'package:flutter/material.dart';
import 'package:no_ai_sns/design_system/tokens/colors.dart';
import 'package:velocity_x/velocity_x.dart';

enum _WidgetType {
  followers,
  following,
  postCount;

  String get text => {
    _WidgetType.followers: "Followers",
    _WidgetType.following: "Following",
    _WidgetType.postCount: "Posts",
  }[this]!;
}

class ProfileFollowInfoSectionWidget extends StatelessWidget {
  const ProfileFollowInfoSectionWidget({
    super.key,
    required this.followers,
    required this.following,
    required this.postCount,
  });

  final String followers;
  final String following;
  final String postCount;

  @override
  Widget build(BuildContext context) {
    return HStack(spacing: 8, [
      _boxInfoWidget(followers, _WidgetType.followers).expand(),
      _boxInfoWidget(following, _WidgetType.following).expand(),
      _boxInfoWidget(postCount, _WidgetType.postCount).expand(),
    ]);
  }

  Widget _boxInfoWidget(String info, _WidgetType type) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: AppColors.brand),
      ),
      child: VStack(crossAlignment: CrossAxisAlignment.center, [
        info.text.size(18).bold.make(),
        type.text.text.size(12).make(),
      ]),
    );
  }
}
