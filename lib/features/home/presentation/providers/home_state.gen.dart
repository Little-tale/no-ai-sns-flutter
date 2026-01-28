import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:no_ai_sns/features/home/domain/entities/feed_item/feed_item_entity.gen.dart';

part 'home_state.gen.freezed.dart';

@freezed
sealed class HomeState with _$HomeState {
  const factory HomeState({
    @Default([]) List<FeedItemEntity> items,
    @Default(false) bool isLoading,
    @Default(false) bool isLoadingMore,
    String? errorMessage,
    String? cursor,
  }) = _HomeState;
}
