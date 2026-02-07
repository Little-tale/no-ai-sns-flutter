// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rdto_search_feed.gen.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SearchFeedRequestDTO _$SearchFeedRequestDTOFromJson(
  Map<String, dynamic> json,
) => _SearchFeedRequestDTO(
  query: json['query'] as String,
  limit: (json['limit'] as num).toInt(),
  cursor: json['cursor'] as String?,
);

Map<String, dynamic> _$SearchFeedRequestDTOToJson(
  _SearchFeedRequestDTO instance,
) => <String, dynamic>{
  'query': instance.query,
  'limit': instance.limit,
  'cursor': ?instance.cursor,
};
