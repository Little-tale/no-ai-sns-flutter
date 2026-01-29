// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dto_feed_comment_item.gen.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FeedCommentItemDTO _$FeedCommentItemDTOFromJson(Map<String, dynamic> json) =>
    _FeedCommentItemDTO(
      id: (json['id'] as num).toInt(),
      postID: (json['post_id'] as num).toInt(),
      userID: (json['user_id'] as num).toInt(),
      author: AuthorDTO.fromJson(json['author'] as Map<String, dynamic>),
      parentID: (json['parent_id'] as num?)?.toInt(),
      body: json['body'] as String,
      createdAt: json['created_at'] as String,
      likeCount: (json['like_count'] as num).toInt(),
      isLiked: json['is_liked'] as bool,
    );

Map<String, dynamic> _$FeedCommentItemDTOToJson(_FeedCommentItemDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'post_id': instance.postID,
      'user_id': instance.userID,
      'author': instance.author,
      'parent_id': instance.parentID,
      'body': instance.body,
      'created_at': instance.createdAt,
      'like_count': instance.likeCount,
      'is_liked': instance.isLiked,
    };
