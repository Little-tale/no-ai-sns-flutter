// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'dto_search_user.gen.freezed.dart';
part 'dto_search_user.gen.g.dart';

@freezed
sealed class SearchUserDTO with _$SearchUserDTO {
  factory SearchUserDTO({
    required int id,
    required String nickname,
    @JsonKey(name: 'profile_image_path') String? profileImagePath,
    @JsonKey(name: 'is_me') required bool isMe,
    @JsonKey(name: 'is_following') required bool isFollowing,
  }) = _SearchUserDTO;

  factory SearchUserDTO.fromJson(Map<String, dynamic> json) =>
      _$SearchUserDTOFromJson(json);
}
