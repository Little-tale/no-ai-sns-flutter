// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:no_ai_sns/core/data/DTO/author/dto_author.gen.dart';
import 'package:no_ai_sns/core/data/DTO/image_item_dto/dto_image_item.gen.dart';

part 'dto_feed_list_item.gen.freezed.dart';
part 'dto_feed_list_item.gen.g.dart';

@freezed
sealed class FeedListItemDTO with _$FeedListItemDTO {
  factory FeedListItemDTO({
    required int id,
    @JsonKey(name: 'user_id') required int userId,
    String? title,
    required String body,
    required AuthorDTO author,
    @JsonKey(name: 'is_liked') required bool isLiked,
    @JsonKey(name: 'like_count') required int likeCount,
    @JsonKey(name: 'comment_count') required int commentCount,
    @JsonKey(name: 'created_at') required String createdAt,
    required List<ImageItemDTO> images,
  }) = _FeedListItemDTO;

  factory FeedListItemDTO.fromJson(Map<String, dynamic> json) =>
      _$FeedListItemDTOFromJson(json);
}
