import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:no_ai_sns/design_system/tokens/spacing.dart';
import 'package:no_ai_sns/features/profile/presentation/providers/profile_notifier/profile_notifier.dart';
import 'package:no_ai_sns/features/profile/presentation/sub_widgets/w_profile_follow_info_section.dart';
import 'package:no_ai_sns/features/profile/presentation/sub_widgets/w_profile_top_section.dart';
import 'package:velocity_x/velocity_x.dart';

class ProfilePage extends ConsumerWidget {
  const ProfilePage({super.key});

  static const routeName = '/profile';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profileState = ref.watch(profileProvider);

    return Scaffold(
      body: SafeArea(
        child: profileState.when(
          data: (state) => CustomScrollView(
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
                  profileUrlString: state.profileImageUrl,
                  userName: state.userName,
                  userEmail: state.userEmail,
                ),
              ),

              SliverToBoxAdapter(
                child: ProfileFollowInfoSectionWidget(
                  followers: state.followers,
                  following: state.following,
                  postCount: state.postCount,
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
                itemCount: state.postImageUrls.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                ),
                itemBuilder: (context, index) {
                  return CachedNetworkImage(
                    imageUrl: state.postImageUrls[index],
                    fit: BoxFit.cover,
                  ).onTap(() {
                    ref
                        .read(profileProvider.notifier)
                        .onPostTapped(index);
                  });
                },
              ),
            ],
          ),
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (error, stack) => Center(
            child: Text('profile_notifier 에러 : $error'),
          ),
        ),
      ),
    );
  }
}
