// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'dto_refresh_request.gen.freezed.dart';
part 'dto_refresh_request.gen.g.dart';

@freezed
sealed class RefreshRequestDTO with _$RefreshRequestDTO {
  factory RefreshRequestDTO({
    @JsonKey(name: "refresh_token") required String refreshToken,
  }) = _RefreshRequestDTO;

  factory RefreshRequestDTO.fromJson(Map<String, dynamic> json) =>
      _$RefreshRequestDTOFromJson(json);
}
