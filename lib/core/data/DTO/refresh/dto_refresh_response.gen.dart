// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'dto_refresh_response.gen.freezed.dart';
part 'dto_refresh_response.gen.g.dart';

@freezed
sealed class RefreshResponseDTO with _$RefreshResponseDTO {
  factory RefreshResponseDTO({
    @JsonKey(name: 'access_token') required String accessToken,
    @JsonKey(name: 'refresh_token') required String refreshToken,
    @JsonKey(name: 'token_type') required String tokenType,
  }) = _RefreshResponseDTO;

  factory RefreshResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$RefreshResponseDTOFromJson(json);
}
