import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:no_ai_sns/core/domain/entity/author_entity.gen.dart';
import 'package:no_ai_sns/features/home/domain/entities/feed_item/feed_item_entity.gen.dart';

part 'search_state.gen.freezed.dart';

@freezed
sealed class SearchState with _$SearchState {
  factory SearchState({
    @Default('') String searchText, // 검색어
    @Default(0) int selectedTab, // 현재 탭 위치
    @Default(20) int limit,
    @Default([]) List<FeedItemEntity> feeds,
    String? postCursor,
    @Default([]) List<AuthorEntity> users,
    String? userCursor,
    @Default(false) bool isSearching,
    String? errorText,
  }) = _SearchState;
}
