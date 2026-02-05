import 'package:freezed_annotation/freezed_annotation.dart';

part 'rdto_search_user.gen.freezed.dart';
part 'rdto_search_user.gen.g.dart';

@freezed
sealed class SearchUserRequestDTO with _$SearchUserRequestDTO {
  factory SearchUserRequestDTO({
    required String query,
    required int limit,
    String? cursor,
  }) = _SearchUserRequestDTO;

  factory SearchUserRequestDTO.fromJson(Map<String, dynamic> json) =>
      _$SearchUserRequestDTOFromJson(json);
}
