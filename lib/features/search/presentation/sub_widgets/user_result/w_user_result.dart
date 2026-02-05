import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:no_ai_sns/core/domain/entity/author_entity.gen.dart';
import 'package:no_ai_sns/design_system/tokens/spacing.dart';
import 'package:no_ai_sns/features/search/presentation/providers/search_notifier/search_notifier.dart';
import 'package:velocity_x/velocity_x.dart';

class UserResultWidget extends ConsumerWidget {
  const UserResultWidget({super.key});

  final double imageSize = 60;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final users = ref.watch(searchProvider.select((p) => p.users));

    return ListView.builder(
      itemCount: users.length,
      itemBuilder: (context, index) {
        return _userWidget(
          context,
          users[index],
        ).pSymmetric(v: AppSpacing.lg, h: AppSpacing.md);
      },
    );
  }

  Widget _userWidget(BuildContext context, AuthorEntity item) {
    final profileUrl = item.profileImageUrl;

    return Container(
      color: Colors.transparent,
      child: HStack([
        ClipOval(child: _profile(context, profileUrl)),
        item.name.text.size(16).semiBold.make().pOnly(left: AppSpacing.md),
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
}
