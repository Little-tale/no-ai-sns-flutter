import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:no_ai_sns/design_system/design_system.dart';
import 'package:no_ai_sns/features/home/domain/entities/comment_item/comment._item_entity.gen.dart';
import 'package:velocity_x/velocity_x.dart';

class CommentItemWidget extends StatelessWidget {
  const CommentItemWidget({super.key, required this.item});

  final CommentItemEntity item;

  @override
  Widget build(BuildContext context) {
    return HStack(
      crossAlignment: CrossAxisAlignment.start,
      spacing: AppSpacing.md,
      [
        _profileWidget(context).pOnly(left: AppSpacing.md),
        _commentSection().expand(),
        _likeSection(context),
        AppSpacing.md.widthBox,
      ],
    ).pSymmetric(v: AppSpacing.md);
  }

  VStack _likeSection(BuildContext context) {
    return VStack(crossAlignment: CrossAxisAlignment.center, [
      _likeState(context).pOnly(top: AppSpacing.md),
      item.likeCount.text.make(),
    ]);
  }

  Widget _likeState(BuildContext context) {
    return item.commentLikeState
        ? Icon(Icons.favorite, color: context.colors.primary)
        : Icon(Icons.favorite_border, color: context.colors.primary);
  }

  Widget _commentSection() {
    return VStack(crossAlignment: CrossAxisAlignment.start, [
      HStack(axisSize: MainAxisSize.min, alignment: MainAxisAlignment.start, [
        item.authorName.text.semiBold.size(16).ellipsis.make().flexible(),
        AppSpacing.xs.widthBox,
        item.createdAt.text.size(12).make(),
      ]),
      item.content.replaceAll('\n', ' ').text.normal.size(14).make(),
    ]);
  }

  Widget _profileWidget(BuildContext context) {
    return CircleAvatar(
      radius: 30,
      backgroundColor: context.colors.onPrimary,
      backgroundImage: item.profileImageUrlString != null
          ? CachedNetworkImageProvider(item.profileImageUrlString!)
          : null,
      child: item.profileImageUrlString == null
          ? const Icon(Icons.person, size: 30)
          : null,
    );
  }
}
