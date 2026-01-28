// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'dto_login_response.gen.freezed.dart';
part 'dto_login_response.gen.g.dart';

@freezed
sealed class LoginResponseDTO with _$LoginResponseDTO {
  factory LoginResponseDTO({
    @JsonKey(name: 'access_token') required String accessToken,
    @JsonKey(name: 'refresh_token') required String refreshToken,
    @JsonKey(name: 'token_type') required String tokenType,
  }) = _LoginResponseDTO;

  factory LoginResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseDTOFromJson(json);
}
