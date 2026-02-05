import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_state.gen.freezed.dart';

@freezed
sealed class SearchState with _$SearchState {
  factory SearchState({
    @Default('') String searchText, // 검색어
    @Default(0) int selectedTab, // 현재 탭 위치
    @Default(20) int limit,
    String? postCursor,
    String? userCursor,
  }) = _SearchState;
}
