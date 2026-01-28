// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'dto_register_request.gen.freezed.dart';
part 'dto_register_request.gen.g.dart';

@freezed
sealed class RegisterRequestDTO with _$RegisterRequestDTO {
  factory RegisterRequestDTO({
    required String email,
    required String nickname,
    required String password,
  }) = _RegisterRequestDTO;

  factory RegisterRequestDTO.fromJson(Map<String, dynamic> json) =>
      _$RegisterRequestDTOFromJson(json);
}
