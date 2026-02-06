import 'package:no_ai_sns/core/domain/entity/search_author_entity.gen.dart';
import 'package:no_ai_sns/core/utils/result.dart';
import 'package:no_ai_sns/features/home/domain/entities/feed_item/feed_item_entity.gen.dart';
import 'package:no_ai_sns/features/search/data/request_dto/search_feed/rdto_search_feed.gen.dart';
import 'package:no_ai_sns/features/search/data/request_dto/search_user/rdto_search_user.gen.dart';
import 'package:no_ai_sns/features/search/presentation/providers/search_repo/search_repository_provider.dart';
import 'package:no_ai_sns/features/search/presentation/state/search_state.gen.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:dio/dio.dart';

part 'search_notifier.g.dart';

enum SearchTabCase { posts, users }

@riverpod
final class SearchNotifier extends _$SearchNotifier {
  CancelToken? _cancelToken;

  @override
  SearchState build() {
    ref.onDispose(() {
      _cancelToken?.cancel('dispose');
      _cancelToken = null;
    });
    return SearchState();
  }

  void selectTab(int index) {
    if (state.selectedTab == index) {
      return;
    }
    _cancelPending();
    state = state.copyWith(
      selectedTab: index,
      isSearching: true,
      errorText: null,
    );
    _requestInfo(currentTabCase: SearchTabCase.values[index]);
  }

  void reset() {
    state = SearchState();
  }

  void textChange(String text) {
    state = state.copyWith(searchText: text);
  }

  void tapEnter() async {
    if (!ref.mounted) {
      return;
    }
    if (state.isSearching) return;
    state = state.copyWith(isSearching: true, errorText: null);
    _requestInfo(currentTabCase: SearchTabCase.values[state.selectedTab]);
  }

  void loadMore() {
    if (state.isSearching) {
      return;
    }
    final currentTab = SearchTabCase.values[state.selectedTab];
    switch (currentTab) {
      case SearchTabCase.posts:
        if (state.feeds.isEmpty) {
          return;
        }
        final cursor = state.feeds.last.id.toString();
        state = state.copyWith(isSearching: true, errorText: null);
        _requestInfo(currentTabCase: currentTab, cursor: cursor, append: true);
      case SearchTabCase.users:
        if (state.users.isEmpty) {
          return;
        }
        final cursor = state.users.last.id.toString();
        state = state.copyWith(isSearching: true, errorText: null);
        _requestInfo(currentTabCase: currentTab, cursor: cursor, append: true);
    }
  }

  // Following
  void tappedFollowing({
    required int index,
    required SearchAuthorEntity item,
    required bool changState,
  }) {
    // TODO: Profile Feature 작업후 Flow작업
  }

  // MARK: API
  void _requestInfo({
    required SearchTabCase currentTabCase,
    String? searchText,
    String? cursor,
    bool append = false,
  }) async {
    if (!ref.mounted) {
      return;
    }
    if (!state.isSearching) {
      state = state.copyWith(isSearching: true, errorText: null);
    }
    _cancelPending();
    final token = CancelToken();
    _cancelToken = token;
    final text = searchText ?? state.searchText;
    final limit = state.limit;
    final currentTab = currentTabCase;
    final repo = ref.read(searchRepositoryProvider);
    switch (currentTab) {
      case SearchTabCase.posts:
        final result = await repo.searchFeed(
          rdto: SearchFeedRequestDTO(query: text, limit: limit, cursor: cursor),
          cancelToken: token,
        );
        if (!ref.mounted || token.isCancelled) {
          return;
        }
        switch (result) {
          case Success<List<FeedItemEntity>>():
            final merged = append
                ? [...state.feeds, ...result.value]
                : result.value;

            state = state.copyWith(feeds: merged, isSearching: false);
          case Failure<List<FeedItemEntity>>(error: final error):
            state = state.copyWith(
              errorText: error.toString(),
              isSearching: false,
            );
        }
      case SearchTabCase.users:
        final result = await repo.searchUser(
          rdto: SearchUserRequestDTO(query: text, limit: limit, cursor: cursor),
          cancelToken: token,
        );
        if (!ref.mounted || token.isCancelled) {
          return;
        }
        switch (result) {
          case Success<List<SearchAuthorEntity>>():
            final merged = append
                ? [...state.users, ...result.value]
                : result.value;

            state = state.copyWith(users: merged, isSearching: false);
          case Failure<List<SearchAuthorEntity>>(error: final error):
            state = state.copyWith(
              errorText: error.toString(),
              isSearching: false,
            );
        }
    }
  }

  void _cancelPending() {
    _cancelToken?.cancel('new request');
    _cancelToken = null;
  }
}
