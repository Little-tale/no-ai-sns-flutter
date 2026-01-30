import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:no_ai_sns/app/app_router.dart';
import 'package:no_ai_sns/features/home/presentation/providers/home_notifier/home_notifier.dart';
import 'package:no_ai_sns/features/home/presentation/state/home_state.gen.dart';
import 'package:no_ai_sns/features/home/presentation/sub_widgets/comment_bottom_sheet/w_comment_bottom_sheet.dart';
import 'package:no_ai_sns/features/home/presentation/sub_widgets/feed_item/w_feed_item.dart';
import 'package:no_ai_sns/features/home/presentation/sub_widgets/top_navigation_bar/w_top_navigation_bar.dart';
import 'package:no_ai_sns/features/notification/presentation/pages/notification_page.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePage extends HookConsumerWidget {
  const HomePage({super.key});

  static const routeName = '/home';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(homeProvider);
    final scrollController = useScrollController();

    useEffect(() {
      void onScroll() {
        if (!scrollController.hasClients) {
          return;
        }
        final position = scrollController.position;
        if (position.pixels >= position.maxScrollExtent - 200) {
          ref.read(homeProvider.notifier).loadMoreFeed();
        }
      }

      scrollController.addListener(onScroll);
      return () => scrollController.removeListener(onScroll);
    }, [scrollController, ref]);

    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () => ref.read(homeProvider.notifier).refreshFeed(),
        child: CustomScrollView(
          controller: scrollController,
          slivers: [
            SliverAppBar(
              floating: true,
              title: TopNavigationBarWidget(
                currentAlertCount: 4,
                tappedNotification: () async {
                  final canMove = await ref
                      .read(homeProvider.notifier)
                      .tappedAlertButtonTapped();
                  if (canMove) {
                    AppRouter.router.push(NotificationPage.routeName);
                  }
                },
              ),
              toolbarHeight: 40,
              backgroundColor: context.theme.scaffoldBackgroundColor,
            ),
            if (state.isLoading)
              const SliverFillRemaining(
                child: Center(child: CircularProgressIndicator()),
              )
            else
              SliverList.builder(
                itemCount: state.items.length,
                itemBuilder: (context, index) => FeedItemWidget(
                  entity: state.items[index],
                  commentEvent: () {
                    _bottmSheetComment(context, state, index);
                  },
                  likeEvent: () {
                    ref.read(homeProvider.notifier).likeButtonTapped(index);
                  },
                ).pOnly(bottom: 16).pOnly(top: 8),
              ),
            if (state.isLoadingMore)
              const SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 16),
                  child: Center(child: CircularProgressIndicator()),
                ),
              ),
            if (state.errorMessage != null && state.items.isNotEmpty)
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 12,
                    horizontal: 16,
                  ),
                  child: Text(
                    state.errorMessage!,
                    style: const TextStyle(color: Colors.red),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }

  Future<dynamic> _bottmSheetComment(
    BuildContext context,
    HomeState state,
    int index,
  ) {
    return showModalBottomSheet(
      context: context,
      useRootNavigator: true,
      isScrollControlled: true,
      enableDrag: true,
      showDragHandle: true,
      useSafeArea: true,
      backgroundColor: context.theme.colorScheme.surface,
      builder: (context) {
        final id = state.items[index].id;
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
