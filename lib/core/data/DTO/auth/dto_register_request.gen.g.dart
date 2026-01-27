// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dto_register_request.gen.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RegisterRequestDTO _$RegisterRequestDTOFromJson(Map<String, dynamic> json) =>
    _RegisterRequestDTO(
      email: json['email'] as String,
      nickname: json['nickname'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$RegisterRequestDTOToJson(_RegisterRequestDTO instance) =>
    <String, dynamic>{
      'email': instance.email,
      'nickname': instance.nickname,
      'password': instance.password,
    };
