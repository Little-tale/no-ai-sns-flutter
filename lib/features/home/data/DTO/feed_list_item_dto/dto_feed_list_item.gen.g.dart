// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dto_feed_list_item.gen.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FeedListItemDTO _$FeedListItemDTOFromJson(Map<String, dynamic> json) =>
    _FeedListItemDTO(
      id: (json['id'] as num).toInt(),
      userId: (json['user_id'] as num).toInt(),
      title: json['title'] as String?,
      body: json['body'] as String,
      author: AuthorDTO.fromJson(json['author'] as Map<String, dynamic>),
      isLiked: json['is_liked'] as bool,
      likeCount: (json['like_count'] as num).toInt(),
      commentCount: (json['comment_count'] as num).toInt(),
      createdAt: json['created_at'] as String,
      images: (json['images'] as List<dynamic>)
          .map((e) => ImageItemDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FeedListItemDTOToJson(_FeedListItemDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'title': instance.title,
      'body': instance.body,
      'author': instance.author,
      'is_liked': instance.isLiked,
      'like_count': instance.likeCount,
      'comment_count': instance.commentCount,
      'created_at': instance.createdAt,
      'images': instance.images,
    };
