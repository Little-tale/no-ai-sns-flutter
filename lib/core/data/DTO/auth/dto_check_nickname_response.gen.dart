// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'dto_check_nickname_response.gen.freezed.dart';
part 'dto_check_nickname_response.gen.g.dart';

@freezed
sealed class CheckNicknameResponseDTO with _$CheckNicknameResponseDTO {
  factory CheckNicknameResponseDTO({
    required bool available,
  }) = _CheckNicknameResponseDTO;

  factory CheckNicknameResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$CheckNicknameResponseDTOFromJson(json);
}
