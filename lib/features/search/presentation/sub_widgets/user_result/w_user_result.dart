import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:no_ai_sns/core/domain/entity/search_author_entity.gen.dart';
import 'package:no_ai_sns/core/presentation/w_ios_button.dart';
import 'package:no_ai_sns/design_system/design_system.dart';
import 'package:no_ai_sns/features/search/presentation/providers/search_notifier/search_notifier.dart';
import 'package:velocity_x/velocity_x.dart';

class UserResultWidget extends HookConsumerWidget {
  const UserResultWidget({super.key});

  final double imageSize = 60;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final scrollController = useScrollController();
    final users = ref.watch(searchProvider.select((p) => p.users));

    useEffect(() {
      void onScroll() {
        if (!scrollController.hasClients) {
          return;
        }
        final position = scrollController.position;
        if (position.pixels >= position.maxScrollExtent - 200) {
          ref.read(searchProvider.notifier).loadMore();
        }
      }

      scrollController.addListener(onScroll);
      return () => scrollController.removeListener(onScroll);
    }, [scrollController, ref]);

    return ListView.builder(
      controller: scrollController,
      itemCount: users.length,
      itemBuilder: (context, index) {
        return _userWidget(
          context: context,
          ref: ref,
          item: users[index],
          index: index,
        ).pSymmetric(v: AppSpacing.lg, h: AppSpacing.md);
      },
    );
  }

  Widget _userWidget({
    required BuildContext context,
    required WidgetRef ref,
    required SearchAuthorEntity item,
    required int index,
  }) {
    final profileUrl = item.profileImageUrl;

    return Container(
      color: Colors.transparent,
      child: HStack([
        ClipOval(child: _profile(context, profileUrl)),
        item.name.text.size(16).semiBold.make().pOnly(left: AppSpacing.md),
        Spacer(),
        item.isMe
            ? 'ME'.text.size(12).make().pOnly(right: AppSpacing.md)
            : _followingButton(item.isFollowing, context).onIOSTap(() {
                final notifier = ref.read(searchProvider.notifier);
                notifier.tappedFollowing(
                  index: index,
                  item: item,
                  changState: !item.isFollowing,
                );
              }),
      ]),
    );
  }

  Widget _profile(BuildContext context, String? url) {
    if (url != null) {
      return CachedNetworkImage(
        imageUrl: url,
        fit: BoxFit.cover,
        width: imageSize,
        height: imageSize,
        errorWidget: (context, url, error) =>
            Icon(Icons.person, size: imageSize),
      );
    }
    return Container(
      color: context.colors.inversePrimary,
      child: Icon(Icons.person, size: imageSize),
    );
  }

  Widget _followingButton(bool isFollowing, BuildContext context) {
    final text = isFollowing ? 'Following' : 'Follow';
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: AppSpacing.lg,
        vertical: AppSpacing.sm,
      ),
      decoration: BoxDecoration(
        color: isFollowing ? AppColors.brandDark : AppColors.brand,
        borderRadius: BorderRadius.circular(4),
      ),
      child: text.text.semiBold.size(12).white.make(),
    );
  }
}
