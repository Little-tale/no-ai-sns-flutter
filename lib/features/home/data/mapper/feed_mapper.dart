import 'package:no_ai_sns/core/network/base_url.dart';
import 'package:no_ai_sns/core/utils/number_format.dart';
import 'package:no_ai_sns/core/utils/time_format.dart';
import 'package:no_ai_sns/features/home/data/DTO/feed_list_item_dto/dto_feed_list_item.gen.dart';
import 'package:no_ai_sns/features/home/domain/entities/feed_item/feed_item_entity.gen.dart';

final class FeedMapper {
  static List<FeedItemEntity> toMapFeedListDTO(List<FeedListItemDTO> dto) {
    return dto.map((e) => toMapFeedDTO(e)).toList();
  }

  static FeedItemEntity toMapFeedDTO(FeedListItemDTO dto) {
    return FeedItemEntity(
      id: dto.id,
      creatorName: dto.author.nickname,
      regDateText: dto.createdAt.toTimeAgoOrDate(),
      contentText: dto.body,
      likeStatus: dto.isLiked,
      likeCountText: dto.likeCount.toCompact(),
      commentCountText: dto.commentCount.toCompact(),
      imageUrls: dto.images.map((e) => _toAbsoluteUrl(e.imagePath)).toList(),
    );
  }

  static String _toAbsoluteUrl(String path) {
    return '$baseURL$path';
  }
}
