// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'dto_comment_item_request.gen.freezed.dart';
part 'dto_comment_item_request.gen.g.dart';

@freezed
sealed class CommentItemRequestDTO with _$CommentItemRequestDTO {
  factory CommentItemRequestDTO({
    @JsonKey(name: 'body') required String content,
    @JsonKey(name: 'parent_id') int? parentId,
  }) = _CommentItemRequestDTO;

  factory CommentItemRequestDTO.fromJson(Map<String, dynamic> json) =>
      _$CommentItemRequestDTOFromJson(json);
}
