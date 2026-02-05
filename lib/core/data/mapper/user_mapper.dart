import 'package:no_ai_sns/core/data/DTO/author/dto_author.gen.dart';
import 'package:no_ai_sns/core/domain/entity/author_entity.gen.dart';
import 'package:no_ai_sns/core/utils/image_url_path_helper.dart';

final class UserMapper {
  static List<AuthorEntity> toMapList(List<AuthorDTO> dtos) {
    return dtos.map((dto) => toMap(dto)).toList();
  }

  static AuthorEntity toMap(AuthorDTO dto) {
    final imgPath = dto.profileImagePath;

    return AuthorEntity(
      id: dto.id,
      name: dto.nickname,
      profileImageUrl: (imgPath != null) ? toAbsoluteUrl(imgPath) : null,
    );
  }
}
