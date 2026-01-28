// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'dto_error_response.gen.freezed.dart';
part 'dto_error_response.gen.g.dart';

@freezed
sealed class ErrorResponseDTO with _$ErrorResponseDTO {
  factory ErrorResponseDTO({
    required String message,
    List<ErrorDetailDTO>? detail,
  }) = _ErrorResponseDTO;

  factory ErrorResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$ErrorResponseDTOFromJson(json);
}

@freezed
sealed class ErrorDetailDTO with _$ErrorDetailDTO {
  factory ErrorDetailDTO({
    required List<dynamic> loc,
    required String msg,
    required String type,
  }) = _ErrorDetailDTO;

  factory ErrorDetailDTO.fromJson(Map<String, dynamic> json) =>
      _$ErrorDetailDTOFromJson(json);
}
