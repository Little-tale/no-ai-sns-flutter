// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:no_ai_sns/core/data/DTO/author/dto_author.gen.dart';

part 'dto_feed_comment_item.gen.freezed.dart';
part 'dto_feed_comment_item.gen.g.dart';

@freezed
sealed class FeedCommentItemDTO with _$FeedCommentItemDTO {
  factory FeedCommentItemDTO({
    @JsonKey(name: 'post_id') required int postID,
    @JsonKey(name: 'user_id') required int userID,
    required AuthorDTO author,
    @JsonKey(name: 'parent_id') required int parentID,
    required String body,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'like_count') required int likeCount,
    @JsonKey(name: 'is_liked') required bool isLiked,
  }) = _FeedCommentItemDTO;

  factory FeedCommentItemDTO.fromJson(Map<String, dynamic> json) =>
      _$FeedCommentItemDTOFromJson(json);
}
