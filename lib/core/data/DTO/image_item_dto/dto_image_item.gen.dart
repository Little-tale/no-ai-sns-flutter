// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'dto_image_item.gen.freezed.dart';
part 'dto_image_item.gen.g.dart';

@freezed
sealed class ImageItemDTO with _$ImageItemDTO {
  factory ImageItemDTO({
    required int id,
    @JsonKey(name: 'image_path') required String imagePath,
    @JsonKey(name: 'ai_label') String? aiLabel,
    @JsonKey(name: 'ai_score') double? aiScore,
    @JsonKey(name: 'created_at') required String createdAt,
  }) = _ImageItemDTO;

  factory ImageItemDTO.fromJson(Map<String, dynamic> json) =>
      _$ImageItemDTOFromJson(json);
}
