// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'dto_me.gen.freezed.dart';
part 'dto_me.gen.g.dart';

@freezed
sealed class MeDTO with _$MeDTO {
  factory MeDTO({
    required int id,
    required String email,
    required String nickname,

    @JsonKey(name: 'profile_image_path') String? profileImagePath,

    @JsonKey(name: 'profile_image_pending_path')
    String? profileImagePendingPath,

    @JsonKey(name: 'profile_ai_status') String? profileAiStatus,

    @JsonKey(name: 'profile_ai_label') String? profileAiLabel,

    @JsonKey(name: 'profile_ai_score') int? profileAiScore,

    @JsonKey(name: 'created_at') required String createdAt,

    @JsonKey(name: 'follower_count') required int followerCount,

    @JsonKey(name: 'following_count') required int followingCount,

    @JsonKey(name: 'is_me') required bool isMe,
  }) = _MeDTO;

  factory MeDTO.fromJson(Map<String, dynamic> json) => _$MeDTOFromJson(json);
}
