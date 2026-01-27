import 'package:flutter/material.dart';
import 'package:no_ai_sns/design_system/tokens/colors.dart';
import 'package:no_ai_sns/design_system/tokens/spacing.dart';
import 'package:velocity_x/velocity_x.dart';

class ProfileTopSectionWidget extends StatelessWidget {
  const ProfileTopSectionWidget({
    super.key,
    this.profileUrlString,
    required this.userName,
    required this.userEmail,
  });

  final String? profileUrlString;
  final String userName;
  final String userEmail;

  @override
  Widget build(BuildContext context) {
    return VStack([
      HStack(spacing: AppSpacing.lg, [
        _profileCircleWidget(context),
        VStack(
          spacing: 0,
          alignment: MainAxisAlignment.start,
          crossAlignment: CrossAxisAlignment.start,
          [
            userName.text.size(24).bold.make().fittedBox(),
            userEmail.text.light.size(12).make().fittedBox(),
          ],
        ),
      ]).pSymmetric(h: 12).pOnly(bottom: AppSpacing.lg),

      _bottomButton(context).pSymmetric(h: AppSpacing.lg),
    ]);
  }

  Widget _profileCircleWidget(BuildContext context) {
    return ClipOval(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: AlignmentGeometry.bottomLeft,
            end: AlignmentGeometry.topRight,
            colors: [AppColors.brand, AppColors.aiVerified],
          ),
        ),
        child: CircleAvatar(
          radius: 44,
          backgroundColor: context.colors.onPrimary,
          backgroundImage: profileUrlString != null
              ? NetworkImage(profileUrlString!)
              : null,
          child: profileUrlString == null ? Icon(Icons.person, size: 44) : null,
        ).p(3),
      ),
    );
  }

  Widget _bottomButton(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadiusGeometry.circular(8),
      child: Container(
        color: context.colors.primary,
        child: Center(
          child: 'Edit Profile'.text.semiBold.color(Colors.white).make(),
        ).pSymmetric(v: AppSpacing.sm),
      ),
    );
  }
}
