import 'package:flutter/material.dart';
import 'package:no_ai_sns/design_system/tokens/spacing.dart';
import 'package:no_ai_sns/features/profile/presentation/sub_widgets/w_profile_follow_info_section.dart';
import 'package:no_ai_sns/features/profile/presentation/sub_widgets/w_profile_top_section.dart';
import 'package:velocity_x/velocity_x.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  static const routeName = '/profile';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              centerTitle: false,
              title: 'My Profile'.text.size(20).make(),
              backgroundColor: context.theme.scaffoldBackgroundColor,
              elevation: 0,
              shadowColor: Colors.transparent,
              surfaceTintColor: Colors.transparent,
              scrolledUnderElevation: 0,
            ),

            SliverToBoxAdapter(
              child: ProfileTopSectionWidget(
                profileUrlString:
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTx2Z4LcJOPwaTwwqZ-qIxXxKicRR6sa-Ge6A&s",
                userName: 'Alex Rivera',
                userEmail: 'alex.rivera@example.com',
              ),
            ),

            SliverToBoxAdapter(
              child: ProfileFollowInfoSectionWidget(
                followers: '12.3k',
                following: '456',
                postCount: '789',
              ).pSymmetric(v: AppSpacing.xl).pSymmetric(h: AppSpacing.lg),
            ),
          ],
        ),
      ),
    );
  }
}
