// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dto_refresh_response.gen.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RefreshResponseDTO _$RefreshResponseDTOFromJson(Map<String, dynamic> json) =>
    _RefreshResponseDTO(
      accessToken: json['access_token'] as String,
      refreshToken: json['refresh_token'] as String,
      tokenType: json['token_type'] as String,
    );

Map<String, dynamic> _$RefreshResponseDTOToJson(_RefreshResponseDTO instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'refresh_token': instance.refreshToken,
      'token_type': instance.tokenType,
    };
