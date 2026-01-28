import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:no_ai_sns/features/home/presentation/providers/home_notifier.dart';
import 'package:no_ai_sns/features/home/presentation/sub_widgets/feed_item/w_feed_item.dart';
import 'package:no_ai_sns/features/home/presentation/sub_widgets/top_navigation_bar/w_top_navigation_bar.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  static const routeName = '/home';

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (!_scrollController.hasClients) return;

    final position = _scrollController.position;
    if (position.pixels >= position.maxScrollExtent - 200) {
      ref.read(homeProvider.notifier).loadMoreFeed();
    }
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(homeProvider);

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
                    // TODO: 댓글 기능 구현
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
}
