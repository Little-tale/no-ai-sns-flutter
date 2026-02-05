import 'package:freezed_annotation/freezed_annotation.dart';

part 'rdto_search_feed.gen.freezed.dart';
part 'rdto_search_feed.gen.g.dart';

@freezed
sealed class SearchFeedRequestDTO with _$SearchFeedRequestDTO {
  factory SearchFeedRequestDTO({
    /// 제목 Title, 본문 Body
    required String query,
    required int limit,
    String? cursor,
  }) = _SearchFeedRequestDTO;

  factory SearchFeedRequestDTO.fromJson(Map<String, dynamic> json) =>
      _$SearchFeedRequestDTOFromJson(json);
}
