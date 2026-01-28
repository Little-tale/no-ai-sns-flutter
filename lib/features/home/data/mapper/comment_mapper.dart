import 'package:no_ai_sns/core/network/base_url.dart';
import 'package:no_ai_sns/core/utils/number_format.dart';
import 'package:no_ai_sns/core/utils/time_format.dart';
import 'package:no_ai_sns/features/home/data/DTO/feed_comment_item_dto/dto_feed_comment_item.gen.dart';
import 'package:no_ai_sns/features/home/domain/entities/comment_item/comment._item_entity.gen.dart';

final class CommentMapper {
  static List<CommentItemEntity> toMapCommentListDTO(
    List<FeedCommentItemDTO> dto,
  ) {
    return dto.map((e) => toMapCommentDTO(e)).toList();
  }

  static CommentItemEntity toMapCommentDTO(FeedCommentItemDTO dto) {
    final imgUrl = dto.author.profileImagePath;

    return CommentItemEntity(
      id: dto.postID,
      content: dto.body,
      createdAt: dto.createdAt.toTimeAgoOrDate(),
      authorName: dto.author.nickname,
      authorId: dto.author.id,
      commentLikeState: dto.isLiked,
      likeCount: dto.likeCount.toCompact(),
      profileImageUrlString: imgUrl != null ? _toAbsoluteUrl(imgUrl) : null,
    );
  }

  static String _toAbsoluteUrl(String path) {
    return '$baseURL$path';
  }
}
