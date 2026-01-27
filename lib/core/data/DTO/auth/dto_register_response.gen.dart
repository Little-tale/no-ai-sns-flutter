// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'dto_register_response.gen.freezed.dart';
part 'dto_register_response.gen.g.dart';

@freezed
sealed class RegisterResponseDTO with _$RegisterResponseDTO {
  factory RegisterResponseDTO({
    required int id,
    required String email,
    required String nickname,
    @JsonKey(name: 'profile_image_path') String? profileImagePath,
    @JsonKey(name: 'profile_image_pending_path') String? profileImagePendingPath,
    @JsonKey(name: 'profile_ai_status') String? profileAiStatus,
    @JsonKey(name: 'profile_ai_label') String? profileAiLabel,
    @JsonKey(name: 'profile_ai_score') double? profileAiScore,
    @JsonKey(name: 'created_at') required String createdAt,
  }) = _RegisterResponseDTO;

  factory RegisterResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$RegisterResponseDTOFromJson(json);
}
