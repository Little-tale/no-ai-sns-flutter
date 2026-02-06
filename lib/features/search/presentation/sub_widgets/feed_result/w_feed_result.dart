import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:no_ai_sns/design_system/tokens/spacing.dart';
import 'package:no_ai_sns/features/home/domain/entities/feed_item/feed_item_entity.gen.dart';
import 'package:no_ai_sns/features/search/presentation/pages/search_feed_page.dart';
import 'package:no_ai_sns/features/search/presentation/providers/search_notifier/search_notifier.dart';
import 'package:velocity_x/velocity_x.dart';

class FeedResultWidget extends HookConsumerWidget {
  const FeedResultWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final scrollController = useScrollController();

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

    final items = ref.watch(searchProvider.select((p) => p.feeds));
    return CustomScrollView(
      controller: scrollController,
      slivers: [
        SliverPadding(
          padding: EdgeInsets.all(AppSpacing.md),
          sliver: SliverGrid.builder(
            itemCount: items.length,
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 250,
              mainAxisSpacing: AppSpacing.md,
              crossAxisSpacing: AppSpacing.md,
            ),
            itemBuilder: (context, index) {
              final item = items[index];
              return ClipRRect(
                borderRadius: BorderRadiusGeometry.circular(12),
                child: _item(item, context),
              ).onTap(() {
                context.push(SearchFeedPage.routeName, extra: item);
              });
            },
          ),
        ),
      ],
    );
  }

  Widget _item(FeedItemEntity item, BuildContext context) {
    if (item.imageUrls.isEmpty) {
      return Container(
        color: context.colors.primary,
        child: Center(
          child: item.contentText.text.size(16).medium.make().fittedBox(),
        ),
      );
    } else {
      return ClipRRect(
        child: Stack(
          fit: StackFit.expand,
          children: [
            CachedNetworkImage(
              imageUrl: item.imageUrls.first,
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
            Align(alignment: Alignment.bottomLeft, child: _textSection(item)),
          ],
        ),
      );
    }
  }

  Widget _textSection(FeedItemEntity item) {
    return ClipRRect(
      child: Container(
        height: 44,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: AlignmentGeometry.topCenter,
            end: AlignmentGeometry.bottomCenter,
            colors: [
              Colors.transparent,
              Colors.black.withAlpha(110),
              Colors.black.withAlpha(180),
            ],
          ),
        ),
        child: Row(
          children: [
            item.contentText.text
                .align(TextAlign.left)
                .size(16)
                .white
                .make()
                .fittedBox(),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
