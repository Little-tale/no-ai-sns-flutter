import 'package:no_ai_sns/core/utils/result.dart';
import 'package:no_ai_sns/features/home/domain/entities/feed_item/feed_item_entity.gen.dart';
import 'package:no_ai_sns/features/home/presentation/state/home_state.gen.dart';
import 'package:no_ai_sns/features/home/presentation/providers/feed_repository/feed_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_controller.g.dart';

@riverpod
class HomeController extends _$HomeController {
  @override
  HomeState build() {
    return const HomeState();
  }

  Future<void> start({int limit = 20}) async {
    state = state.copyWith(isLoading: true, errorMessage: null, limit: limit);

    final repository = ref.read(feedRepositoryProvider);
    final result = await repository.getFeeds(limit: limit);
    _handleInitialResult(result);
  }

  Future<void> refresh({int limit = 20}) async {
    state = state.copyWith(
      isLoading: true,
      errorMessage: null,
      cursor: null,
      limit: limit,
    );

    final repository = ref.read(feedRepositoryProvider);
    final result = await repository.getFeeds(limit: limit);
    _handleInitialResult(result);
  }

  Future<void> loadMore() async {
    if (state.isLoading ||
        state.isLoadingMore ||
        !state.hasMore ||
        state.items.isEmpty) {
      return;
    }

    state = state.copyWith(isLoadingMore: true, errorMessage: null);

    final repository = ref.read(feedRepositoryProvider);
    final result = await repository.getFeeds(
      limit: state.limit,
      cursor: state.cursor,
    );

    switch (result) {
      case Success<List<FeedItemEntity>>(:final value):
        final merged = [...state.items, ...value];
        state = state.copyWith(
          items: merged,
          isLoadingMore: false,
          hasMore: value.length >= state.limit,
          cursor: _cursorFromItems(merged),
        );
      case Failure<List<FeedItemEntity>>(:final error):
        state = state.copyWith(
          isLoadingMore: false,
          errorMessage: error.toString(),
        );
    }
  }

  void _handleInitialResult(Result<List<FeedItemEntity>> result) {
    switch (result) {
      case Success<List<FeedItemEntity>>(:final value):
        state = state.copyWith(
          items: value,
          isLoading: false,
          hasMore: value.length >= state.limit,
          cursor: _cursorFromItems(value),
        );
      case Failure<List<FeedItemEntity>>(:final error):
        state = state.copyWith(
          isLoading: false,
          errorMessage: error.toString(),
        );
    }
  }

  String? _cursorFromItems(List<FeedItemEntity> items) {
    if (items.isEmpty) {
      return null;
    }
    return items.last.id.toString();
  }
}
