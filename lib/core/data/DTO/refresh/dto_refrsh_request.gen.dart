// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'dto_refrsh_request.gen.freezed.dart';
part 'dto_refrsh_request.gen.g.dart';

@freezed
sealed class RefrshRequestDTO with _$RefrshRequestDTO {
  factory RefrshRequestDTO({
    @JsonKey(name: "refresh_token") required String refreshToken,
  }) = _RefrshRequestDTO;

  factory RefrshRequestDTO.fromJson(Map<String, dynamic> json) =>
      _$RefrshRequestDTOFromJson(json);
}
