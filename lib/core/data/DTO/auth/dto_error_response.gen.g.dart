// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dto_error_response.gen.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ErrorResponseDTO _$ErrorResponseDTOFromJson(Map<String, dynamic> json) =>
    _ErrorResponseDTO(
      message: json['message'] as String,
      detail: (json['detail'] as List<dynamic>?)
          ?.map((e) => ErrorDetailDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ErrorResponseDTOToJson(_ErrorResponseDTO instance) =>
    <String, dynamic>{'message': instance.message, 'detail': instance.detail};

_ErrorDetailDTO _$ErrorDetailDTOFromJson(Map<String, dynamic> json) =>
    _ErrorDetailDTO(
      loc: json['loc'] as List<dynamic>,
      msg: json['msg'] as String,
      type: json['type'] as String,
    );

Map<String, dynamic> _$ErrorDetailDTOToJson(_ErrorDetailDTO instance) =>
    <String, dynamic>{
      'loc': instance.loc,
      'msg': instance.msg,
      'type': instance.type,
    };
