import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:no_ai_sns/features/home/domain/entities/feed_item/feed_item_entity.gen.dart';

part 'search_feed_state.gen.freezed.dart';

@freezed
sealed class SearchFeedState with _$SearchFeedState {
  factory SearchFeedState({required FeedItemEntity entity}) = _SearchFeedState;
}
