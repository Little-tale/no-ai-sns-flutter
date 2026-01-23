import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:no_ai_sns/core/network/base_url.dart';
import 'package:no_ai_sns/features/home/data/client/feed_posts_client.dart';
import 'package:no_ai_sns/features/home/data/repositories/feed_repository_impl.dart';
import 'package:no_ai_sns/features/home/presentation/bloc/home/home_state.gen.dart';
import 'package:no_ai_sns/features/home/presentation/sub_widgets/feed_item/w_feed_item.dart';
import 'package:no_ai_sns/features/home/presentation/sub_widgets/top_navigation_bar/w_top_navigation_bar.dart';
import 'package:no_ai_sns/features/home/presentation/bloc/home/home_bloc.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) {
        final dio = Dio(BaseOptions(baseUrl: baseURL));
        final client = FeedPostsClient(dio);
        final repository = FeedRepositoryImpl(client);
        return HomeBloc(repository: repository)..add(const HomeFeedStarted());
      },
      child: const _HomeView(),
    );
  }
}

class _HomeView extends StatefulWidget {
  const _HomeView();

  @override
  State<_HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<_HomeView> {
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
    if (!_scrollController.hasClients) {
      return;
    }
    final position = _scrollController.position;
    if (position.pixels >= position.maxScrollExtent - 200) {
      context.read<HomeBloc>().add(const HomeFeedLoadMore());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          return RefreshIndicator(
            onRefresh: () async {
              context.read<HomeBloc>().add(const HomeFeedRefreshed());
            },
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
                    itemBuilder: (context, index) {
                      return FeedItemWidget(
                        entity: state.items[index],
                      ).pOnly(bottom: 16).pOnly(top: 8);
                    },
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
          );
        },
      ),
    );
  }
}
