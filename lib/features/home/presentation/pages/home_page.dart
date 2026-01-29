import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:no_ai_sns/features/home/presentation/providers/home_notifier.dart';
import 'package:no_ai_sns/features/home/presentation/providers/home_state.gen.dart';
import 'package:no_ai_sns/features/home/presentation/sub_widgets/comment_bottom_sheet/w_comment_bottom_sheet.dart';
import 'package:no_ai_sns/features/home/presentation/sub_widgets/feed_item/w_feed_item.dart';
import 'package:no_ai_sns/features/home/presentation/sub_widgets/top_navigation_bar/w_top_navigation_bar.dart';
import 'package:velocity_x/velocity_x.dart';

final homeScrollControllerProvider = Provider.autoDispose<ScrollController>((
  ref,
) {
  final controller = ScrollController();
  ref.onDispose(controller.dispose);
  return controller;
});

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  static const routeName = '/home';

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  late final ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ref.read(homeScrollControllerProvider);
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    super.dispose();
  }

  void _onScroll() {
    if (!_scrollController.hasClients) {
      return;
    }
    final position = _scrollController.position;
    if (position.pixels >= position.maxScrollExtent - 200) {
      ref.read(homeProvider.notifier).loadMoreFeed();
    }
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(homeProvider);
    ref.watch(homeScrollControllerProvider);

    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () => ref.read(homeProvider.notifier).refreshFeed(),
        child: CustomScrollView(
          controller: _scrollController,
          slivers: [
            SliverAppBar(
              floating: true,
              title: const TopNavigationBarWidget(currentAlertCount: 4),
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
