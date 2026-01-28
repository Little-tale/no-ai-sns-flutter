// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dto_login_response.gen.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LoginResponseDTO _$LoginResponseDTOFromJson(Map<String, dynamic> json) =>
    _LoginResponseDTO(
      accessToken: json['access_token'] as String,
      refreshToken: json['refresh_token'] as String,
      tokenType: json['token_type'] as String,
    );

Map<String, dynamic> _$LoginResponseDTOToJson(_LoginResponseDTO instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'refresh_token': instance.refreshToken,
      'token_type': instance.tokenType,
    };
