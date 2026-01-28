import 'package:flutter/material.dart';
import 'package:no_ai_sns/features/home/domain/entities/feed_item/feed_item_entity.gen.dart';
import 'package:no_ai_sns/features/home/presentation/sub_widgets/feed_item/w_feed_bottom_section.dart';
import 'package:no_ai_sns/features/home/presentation/sub_widgets/feed_item/w_feed_image_scroll.dart';
import 'package:no_ai_sns/features/home/presentation/sub_widgets/feed_item/w_feed_top_section.dart';
import 'package:velocity_x/velocity_x.dart';

class FeedItemWidget extends StatelessWidget {
  const FeedItemWidget({
    super.key,
    required this.entity,
    required this.commentEvent,
  });

  final FeedItemEntity entity;

  final VoidCallback commentEvent;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 8,
      children: [
        FeedTopSectionWidget(
          userName: entity.creatorName,
          regDate: entity.regDateText,
        ).pSymmetric(h: 12),

        if (entity.imageUrls.isNotEmpty)
          FeedImageScrollWidget(imageURLString: entity.imageUrls),

        FeedBottomSectionWidget(
          currentLike: entity.likeStatus,
          likesCountText: entity.likeCountText,
          commentCountText: entity.commentCountText,
          creatorName: entity.creatorName,
          comment: entity.contentText,
          commentEvent: commentEvent,
        ).pSymmetric(h: 16),
      ],
    );
  }
}
