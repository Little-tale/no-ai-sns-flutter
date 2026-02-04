import 'package:flutter/material.dart';
import 'package:no_ai_sns/core/providers/feed_repository_provider.dart';
import 'package:no_ai_sns/core/providers/login_popup_provider.dart';
import 'package:no_ai_sns/core/utils/number_format.dart';
import 'package:no_ai_sns/core/utils/result.dart';
import 'package:no_ai_sns/features/auth/presentation/providers/token_storage_provider.dart';
import 'package:no_ai_sns/features/home/presentation/state/home_state.gen.dart';
import 'package:no_ai_sns/features/notification/presentation/providers/repository/notification_repository/notification_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_notifier.g.dart';

@riverpod
class HomeNotifier extends _$HomeNotifier {
  static const int _limit = 20;

  @override
  Future<HomeState> build() async {
    ref.watch(feedRepositoryProvider);
    final initial = await loadInitialFeed();
    Future.microtask(() async {
      final count = await _fetchAlertCount();
      final current = state.value;

      if (count == null || current == null) {
        return;
      }
      state = AsyncData(current.copyWith(alertCount: count));
    });
    // Test Error SnackBar
    // Future.delayed(3.seconds, () {
    //   state = AsyncData(initial.copyWith(errorMessage: "Failed to load feed"));
    // });
    return initial;
  }

  // 초기 피드 로드
  Future<HomeState> loadInitialFeed() async {
    // state = state.copyWith(isLoading: true, errorMessage: null);

    final result = await ref
        .read(feedRepositoryProvider)
        .getFeeds(limit: _limit);

    switch (result) {
      case Success(value: final items):
        return HomeState(
          items: items,
          isLoading: false,
          cursor: items.isNotEmpty ? items.last.id.toString() : null,
        );
      case Failure(error: final error):
        return HomeState(isLoading: false, errorMessage: error.toString());
    }
  }

  // 더 많은 피드 로드 (무한 스크롤)
  Future<void> loadMoreFeed() async {
    final state = this.state.value;
    if (state == null) return;
    if (state.isLoadingMore || state.cursor == null) return;

    this.state = AsyncData(
      state.copyWith(isLoadingMore: true, errorMessage: null),
    );

    final result = await ref
        .read(feedRepositoryProvider)
        .getFeeds(limit: _limit, cursor: state.cursor);

    switch (result) {
      case Success(value: final newItems):
        final updatedItems = [...state.items, ...newItems];
        this.state = AsyncData(
          state.copyWith(
            items: updatedItems,
            isLoadingMore: false,
            cursor: newItems.isNotEmpty ? newItems.last.id.toString() : null,
          ),
        );
      case Failure(error: final error):
        this.state = AsyncData(
          state.copyWith(isLoadingMore: false, errorMessage: error.toString()),
        );
    }
  }

  // 피드 새로고침
  Future<void> refreshFeed() async {
    state = const AsyncLoading();
    final next = await loadInitialFeed();
    state = AsyncData(next);
  }

  // 좋아요 버튼 클릭시
  void likeButtonTapped(int index) async {
    final state = this.state.value;
    if (state == null) return;

    final item = state.items[index];
    final inverseLikeState = !item.likeStatus;

    _uiUpdateForLikeState(index: index, likeState: inverseLikeState);

    final repo = ref.read(feedRepositoryProvider);
    final result = await repo.postFeedLikeState(
      postId: item.id,
      isLiked: inverseLikeState,
    );

    switch (result) {
      case Success<bool>():
        return;
      case Failure<bool>():
        _uiUpdateForLikeState(index: index, likeState: !inverseLikeState);
    }
  }

  // 상단 알림 버튼 클릭시
  Future<bool> tappedAlertButtonTapped() async {
    final token = await ref
        .read(tokenStorageProvider.notifier)
        .getAccessToken();
    if (token == null) {
      ref.read(loginPopupProvider.notifier).show();
      return false;
    } else {
      return true;
    }
  }

  void incrementCommentCount(int postId) {
    final state = this.state.value;
    if (state == null) return;

    final updatedItems = state.items.map((item) {
      if (item.id != postId) {
        return item;
      }
      final current = parseCompactNumberToInt(item.commentCountText);
      if (current == null) {
        return item;
      }
      final nextText = (current + 1).toCompact();
      return item.copyWith(commentCountText: nextText);
    }).toList();

    this.state = AsyncData(state.copyWith(items: updatedItems));
  }

  void reLoadAlertCount() async {
    final result = await _fetchAlertCount();
    if (result != null) {
      final state = this.state.value;
      if (state != null) {
        this.state = AsyncData(state.copyWith(alertCount: result));
      }
    }
  }

  // MARK: Private

  Future<int?> _fetchAlertCount() async {
    final repo = ref.read(notificationRepositoryProvider);
    final result = await repo.getAlertCount();
    switch (result) {
      case Success<int>(value: final count):
        return count;
      case Failure<int>(error: final error):
        debugPrint(error.toString());
        return null;
    }
  }

  void _uiUpdateForLikeState({required int index, bool? likeState}) {
    final state = this.state.value;
    if (state == null) return;

    final item = state.items[index];

    final inverseLikeState = likeState ?? !item.likeStatus;
    final currentLikeCount = item.likeCountText.toCompact() ?? 0;
    final updatedItems = [...state.items];

    updatedItems[index] = updatedItems[index].copyWith(
      likeStatus: inverseLikeState,
      likeCountText: inverseLikeState
          ? (currentLikeCount + 1).toCompact()
          : (currentLikeCount - 1).toCompact(),
    );

    this.state = AsyncData(state.copyWith(items: updatedItems));
  }
}
