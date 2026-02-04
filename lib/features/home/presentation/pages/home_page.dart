import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:no_ai_sns/app/app_router.dart';
import 'package:no_ai_sns/core/network/SSE/provider/notification_sse_provider.dart';
import 'package:no_ai_sns/core/utils/toast_utils.dart';
import 'package:no_ai_sns/design_system/tokens/colors.dart';
import 'package:no_ai_sns/features/home/presentation/providers/home_notifier/home_notifier.dart';
import 'package:no_ai_sns/features/home/presentation/state/home_state.gen.dart';
import 'package:no_ai_sns/features/home/presentation/sub_widgets/comment_bottom_sheet/w_comment_bottom_sheet.dart';
import 'package:no_ai_sns/features/home/presentation/sub_widgets/feed_item/w_feed_item.dart';
import 'package:no_ai_sns/features/home/presentation/sub_widgets/top_navigation_bar/w_top_navigation_bar.dart';
import 'package:no_ai_sns/features/notification/presentation/pages/notification_page.dart';
import 'package:no_ai_sns/features/notification/presentation/sub_widgets/top_toasts/w_alert_top_toast.dart';
import 'package:velocity_x/velocity_x.dart';

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
    final controller = ScrollController();
    _scrollController = controller;
    controller.addListener(_onScrollListener);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScrollListener);
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(homeProvider);

    // 에러 메시지 스낵바
    ref.listen(homeProvider, (p, n) {
      final msg = n.value?.errorMessage;
      if (msg != null) {
        showErrorSnackBar(context, msg);
      }
    });

    // 알림 갯수 SSE
    ref.listen(notificationSseProvider, (prev, next) {
      next.whenData((dto) {
        showTopToast(context, AlertTopToastWidget(message: dto.body));
        ref.read(homeProvider.notifier).reLoadAlertCount();
      });
    });

    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () => ref.read(homeProvider.notifier).refreshFeed(),
        child: CustomScrollView(
          controller: _scrollController,
          slivers: _buildSlivers(ref, context, state),
        ),
      ),
    );
  }

  void _onScrollListener() {
    _onScroll(_scrollController, ref);
  }

  List<Widget> _buildSlivers(
    WidgetRef ref,
    BuildContext context,
    AsyncValue<HomeState> state,
  ) {
    return [
      _appBarWidget(ref, context, state.value),
      ...state.when(
        loading: () => const [
          SliverFillRemaining(
            child: Center(child: CircularProgressIndicator()),
          ),
        ],
        error: (error, stackTrace) => const [
          SliverFillRemaining(
            child: Center(child: Text('Failed to load feed')),
          ),
        ],
        data: (data) => _buildContentSlivers(ref, context, data),
      ),
    ];
  }

  List<Widget> _buildContentSlivers(
    WidgetRef ref,
    BuildContext context,
    HomeState state,
  ) {
    return [
      SliverList.builder(
        itemCount: state.items.length,
        itemBuilder: (context, index) => FeedItemWidget(
          entity: state.items[index],
          commentEvent: () {
            _bottomSheetComment(context, state, index);
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
    ];
  }

  Widget _appBarWidget(WidgetRef ref, BuildContext context, HomeState? state) {
    final count = state?.alertCount ?? 0;
    return SliverAppBar(
      floating: true,
      title: TopNavigationBarWidget(
        currentAlertCount: count,
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
    );
  }

  Future<dynamic> _bottomSheetComment(
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

  static void _onScroll(ScrollController scrollController, WidgetRef ref) {
    if (!scrollController.hasClients) {
      return;
    }
    final position = scrollController.position;
    if (position.pixels >= position.maxScrollExtent - 200) {
      ref.read(homeProvider.notifier).loadMoreFeed();
    }
  }

  static void showErrorSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: message.text.size(20).color(Colors.white).make(),
        duration: const Duration(seconds: 2),
        backgroundColor: AppColors.aiRejected,
      ),
    );
  }
}
