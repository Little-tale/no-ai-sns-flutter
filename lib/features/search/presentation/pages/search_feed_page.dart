import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:no_ai_sns/design_system/tokens/spacing.dart';
import 'package:no_ai_sns/features/home/domain/entities/feed_item/feed_item_entity.gen.dart';
import 'package:no_ai_sns/features/home/presentation/sub_widgets/comment_bottom_sheet/w_comment_bottom_sheet.dart';
import 'package:no_ai_sns/features/home/presentation/sub_widgets/feed_item/w_feed_item.dart';
import 'package:no_ai_sns/features/search/presentation/providers/search_feed_notifier/search_feed_notifier.dart';
import 'package:velocity_x/velocity_x.dart';

class SearchFeedPage extends ConsumerStatefulWidget {
  const SearchFeedPage({super.key, required this.entity});

  static const routeName = '/search/feed';

  final FeedItemEntity entity;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SearchFeedPageState();
}

class _SearchFeedPageState extends ConsumerState<SearchFeedPage> {
  @override
  Widget build(BuildContext context) {
    final provider = searchFeedProvider(widget.entity);
    final state = ref.watch(provider);

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: FeedItemWidget(
          entity: state.entity,
          commentEvent: () {
            _bottomSheetComment(context, state.entity.id);
          },
          likeEvent: () {
            ref.read(provider.notifier).likeTapped();
          },
        ).pSymmetric(v: AppSpacing.lg),
      ),
    );
  }

  Future<dynamic> _bottomSheetComment(BuildContext context, int id) {
    return showModalBottomSheet(
      context: context,
      useRootNavigator: true,
      isScrollControlled: true,
      enableDrag: true,
      showDragHandle: true,
      useSafeArea: true,
      backgroundColor: context.theme.colorScheme.surface,
      builder: (context) {
        return DraggableScrollableSheet(
          maxChildSize: 0.9,
          minChildSize: 0.7,
          initialChildSize: 0.7,
          expand: false,
          snap: true,
          snapSizes: const [0.7, 0.9],
          builder: (context, controller) {
            return SafeArea(
              child: CommentBottomSheetWidget(
                null,
                postID: id,
                controller: controller,
              ),
            );
          },
        );
      },
    );
  }
}
