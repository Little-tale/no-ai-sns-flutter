// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:no_ai_sns/core/data/DTO/auth/dto_user.gen.dart';

part 'dto_login_response.gen.freezed.dart';
part 'dto_login_response.gen.g.dart';

@freezed
sealed class LoginResponseDTO with _$LoginResponseDTO {
  factory LoginResponseDTO({
    @JsonKey(name: 'access_token') required String accessToken,
    @JsonKey(name: 'refresh_token') required String refreshToken,
    @JsonKey(name: 'token_type') required String tokenType,
    required UserDTO user,
  }) = _LoginResponseDTO;

  factory LoginResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseDTOFromJson(json);
}
