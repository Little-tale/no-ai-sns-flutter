// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'dto_user.gen.freezed.dart';
part 'dto_user.gen.g.dart';

@freezed
sealed class UserDTO with _$UserDTO {
  factory UserDTO({
    required int id,
    required String nickname,
    @JsonKey(name: 'profile_image_path') String? profileImagePath,
  }) = _UserDTO;

  factory UserDTO.fromJson(Map<String, dynamic> json) =>
      _$UserDTOFromJson(json);
}
