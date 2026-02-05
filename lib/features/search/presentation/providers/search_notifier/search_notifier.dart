import 'package:no_ai_sns/core/domain/entity/author_entity.gen.dart';
import 'package:no_ai_sns/core/utils/result.dart';
import 'package:no_ai_sns/features/home/domain/entities/feed_item/feed_item_entity.gen.dart';
import 'package:no_ai_sns/features/search/data/request_dto/search_feed/rdto_search_feed.gen.dart';
import 'package:no_ai_sns/features/search/data/request_dto/search_user/rdto_search_user.gen.dart';
import 'package:no_ai_sns/features/search/presentation/providers/search_repo/search_repository_provider.dart';
import 'package:no_ai_sns/features/search/presentation/state/search_state.gen.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'search_notifier.g.dart';

enum SearchTabCase { posts, users }

@riverpod
final class SearchNotifier extends _$SearchNotifier {
  @override
  SearchState build() {
    Future.microtask(() {
      tapEnter();
    });
    return SearchState();
  }

  void selectTab(int index) {
    if (state.selectedTab == index) {
      return;
    }
    state = state.copyWith(selectedTab: index);
  }

  void reset() {
    state = SearchState();
  }

  void textChange(String text) {
    state = state.copyWith(searchText: text);
  }

  void tapEnter() async {
    if (state.isSearching) return;
    _requestInfo(currentTabCase: SearchTabCase.values[state.selectedTab]);
  }

  // MARK: API
  void _requestInfo({
    required SearchTabCase currentTabCase,
    String? searchText,
    String? cursor,
  }) async {
    final text = searchText ?? state.searchText;
    final limit = state.limit;
    final currentTab = currentTabCase;
    final repo = ref.read(searchRepositoryProvider);
    switch (currentTab) {
      case SearchTabCase.posts:
        final result = await repo.searchFeed(
          rdto: SearchFeedRequestDTO(query: text, limit: limit, cursor: cursor),
        );
        switch (result) {
          case Success<List<FeedItemEntity>>():
            state = state.copyWith(feeds: result.value, isSearching: false);
          case Failure<List<FeedItemEntity>>(error: final error):
            state = state.copyWith(
              errorText: error.toString(),
              isSearching: false,
            );
        }
      case SearchTabCase.users:
        final result = await repo.searchUser(
          rdto: SearchUserRequestDTO(query: text, limit: limit, cursor: cursor),
        );
        switch (result) {
          case Success<List<AuthorEntity>>():
            state = state.copyWith(users: result.value, isSearching: false);
          case Failure<List<AuthorEntity>>(error: final error):
            state = state.copyWith(
              errorText: error.toString(),
              isSearching: false,
            );
        }
    }
  }
}
