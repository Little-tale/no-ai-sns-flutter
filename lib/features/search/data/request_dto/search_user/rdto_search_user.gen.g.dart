// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rdto_search_user.gen.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SearchUserRequestDTO _$SearchUserRequestDTOFromJson(
  Map<String, dynamic> json,
) => _SearchUserRequestDTO(
  query: json['query'] as String,
  limit: (json['limit'] as num).toInt(),
  cursor: json['cursor'] as String?,
);

Map<String, dynamic> _$SearchUserRequestDTOToJson(
  _SearchUserRequestDTO instance,
) => <String, dynamic>{
  'query': instance.query,
  'limit': instance.limit,
  'cursor': instance.cursor,
};
