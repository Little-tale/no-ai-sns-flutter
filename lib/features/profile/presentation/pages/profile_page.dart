import 'package:cached_network_image/cached_network_image.dart';
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
              ).p(AppSpacing.lg),
            ),

            PinnedHeaderSliver(
              child: Container(
                color: context.theme.scaffoldBackgroundColor,
                child: HStack([
                  'My Posts'.text.semiBold
                      .size(20)
                      .make()
                      .pSymmetric(v: AppSpacing.sm)
                      .pOnly(left: AppSpacing.lg),

                  const Spacer(),

                  Icon(
                    Icons.grid_on_rounded,
                    color: context.theme.primaryColor,
                  ).pOnly(right: AppSpacing.lg),
                ]),
              ),
            ),

            SliverGrid.builder(
              itemCount: 20,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              ),
              itemBuilder: (context, index) {
                return CachedNetworkImage(
                  imageUrl:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTx2Z4LcJOPwaTwwqZ-qIxXxKicRR6sa-Ge6A&s",
                  fit: BoxFit.cover,
                ).onTap(() {});
              },
            ),
          ],
        ),
      ),
    );
  }
}
