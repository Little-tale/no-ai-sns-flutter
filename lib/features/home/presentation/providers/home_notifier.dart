import 'package:no_ai_sns/core/providers/feed_repository_provider.dart';
import 'package:no_ai_sns/core/utils/number_format.dart';
import 'package:no_ai_sns/core/utils/result.dart';
import 'package:no_ai_sns/features/home/domain/repositories/feed_repository.dart';
import 'package:no_ai_sns/features/home/presentation/providers/home_state.gen.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_notifier.g.dart';

@riverpod
class HomeNotifier extends _$HomeNotifier {
  late final FeedRepository _repository;
  static const int _limit = 20;

  @override
  HomeState build() {
    _repository = ref.watch(feedRepositoryProvider);

    // build() 완료 후 초기 피드를 불러와야 state 접근 가능
    Future.microtask(() => loadInitialFeed());

    return const HomeState();
  }

  // 초기 피드 로드
  Future<void> loadInitialFeed() async {
    state = state.copyWith(isLoading: true, errorMessage: null);

    final result = await _repository.getFeeds(limit: _limit);

    switch (result) {
      case Success(value: final items):
        state = state.copyWith(
          items: items,
          isLoading: false,
          cursor: items.isNotEmpty ? items.last.id.toString() : null,
        );
      case Failure(error: final error):
        state = state.copyWith(
          isLoading: false,
          errorMessage: error.toString(),
        );
    }
  }

  // 더 많은 피드 로드 (무한 스크롤)
  Future<void> loadMoreFeed() async {
    if (state.isLoadingMore || state.cursor == null) return;

    state = state.copyWith(isLoadingMore: true, errorMessage: null);

    final result = await _repository.getFeeds(
      limit: _limit,
      cursor: state.cursor,
    );

    switch (result) {
      case Success(value: final newItems):
        final updatedItems = [...state.items, ...newItems];
        state = state.copyWith(
          items: updatedItems,
          isLoadingMore: false,
          cursor: newItems.isNotEmpty ? newItems.last.id.toString() : null,
        );
      case Failure(error: final error):
        state = state.copyWith(
          isLoadingMore: false,
          errorMessage: error.toString(),
        );
    }
  }

  // 피드 새로고침
  Future<void> refreshFeed() async {
    state = const HomeState();
    await loadInitialFeed();
  }

  void incrementCommentCount(int postId) {
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

    state = state.copyWith(items: updatedItems);
  }
}
