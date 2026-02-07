import 'package:no_ai_sns/core/data/DTO/author/dto_author.gen.dart';
import 'package:no_ai_sns/core/domain/entity/search_author_entity.gen.dart';
import 'package:no_ai_sns/core/utils/image_url_path_helper.dart';
import 'package:no_ai_sns/features/search/data/dto/dto_search_user.gen.dart';

final class UserMapper {
  static List<SearchAuthorEntity> toMapList(List<SearchUserDTO> dtos) {
    return dtos.map((dto) => toMap(dto)).toList();
  }

  static SearchAuthorEntity toMap(SearchUserDTO dto) {
    final imgPath = dto.profileImagePath;

    return SearchAuthorEntity(
      id: dto.id,
      name: dto.nickname,
      profileImageUrl: (imgPath != null) ? toAbsoluteUrl(imgPath) : null,
      isMe: dto.isMe,
      isFollowing: dto.isFollowing,
    );
  }
}
