// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'dto_author.gen.freezed.dart';
part 'dto_author.gen.g.dart';

@freezed
sealed class AuthorDTO with _$AuthorDTO {
  factory AuthorDTO({
    required int id,
    required String nickname,
    @JsonKey(name: 'profile_image_path') String? profileImagePath,
  }) = _AuthorDTO;

  factory AuthorDTO.fromJson(Map<String, dynamic> json) =>
      _$AuthorDTOFromJson(json);
}
