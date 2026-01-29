// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dto_comment_item_request.gen.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CommentItemRequestDTO _$CommentItemRequestDTOFromJson(
  Map<String, dynamic> json,
) => _CommentItemRequestDTO(
  content: json['body'] as String,
  parentId: (json['parent_id'] as num?)?.toInt(),
);

Map<String, dynamic> _$CommentItemRequestDTOToJson(
  _CommentItemRequestDTO instance,
) => <String, dynamic>{
  'body': instance.content,
  'parent_id': instance.parentId,
};
