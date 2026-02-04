// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dto_image_item.gen.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ImageItemDTO _$ImageItemDTOFromJson(Map<String, dynamic> json) =>
    _ImageItemDTO(
      id: (json['id'] as num).toInt(),
      imagePath: json['image_path'] as String,
      aiLabel: json['ai_label'] as String?,
      aiScore: (json['ai_score'] as num?)?.toDouble(),
      createdAt: json['created_at'] as String,
    );

Map<String, dynamic> _$ImageItemDTOToJson(_ImageItemDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image_path': instance.imagePath,
      'ai_label': instance.aiLabel,
      'ai_score': instance.aiScore,
      'created_at': instance.createdAt,
    };
