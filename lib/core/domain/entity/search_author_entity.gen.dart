import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_author_entity.gen.freezed.dart';
part 'search_author_entity.gen.g.dart';

@freezed
sealed class SearchAuthorEntity with _$SearchAuthorEntity {
  factory SearchAuthorEntity({
    required int id,
    required String name,
    String? profileImageUrl,
    required bool isMe,
    required bool isFollowing,
  }) = _SearchAuthorEntity;

  factory SearchAuthorEntity.fromJson(Map<String, dynamic> json) =>
      _$SearchAuthorEntityFromJson(json);
}
