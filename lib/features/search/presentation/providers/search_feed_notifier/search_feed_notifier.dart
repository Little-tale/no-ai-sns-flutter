import 'package:no_ai_sns/core/providers/comment_count_bus_provider.dart';
import 'package:no_ai_sns/core/utils/number_format.dart';
import 'package:no_ai_sns/core/utils/result.dart';
import 'package:no_ai_sns/features/home/domain/entities/feed_item/feed_item_entity.gen.dart';
import 'package:no_ai_sns/features/home/presentation/providers/feed_repository/feed_repository_provider.dart';
import 'package:no_ai_sns/features/search/presentation/state/search_feed_state.gen.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'search_feed_notifier.g.dart';

@riverpod
class SearchFeedNotifier extends _$SearchFeedNotifier {
  @override
  SearchFeedState build(FeedItemEntity entity) {
    ref.listen<CommentCountEvent?>(commentCountBusProvider, (prev, next) {
      if (next == null || next.postId != state.entity.id) {
        return;
      }
      final current = state.entity.commentCountText.toCompact() ?? 0;
      final nextCount = (current + next.delta).clamp(0, 1 << 26);
      state = state.copyWith(
        entity: state.entity.copyWith(commentCountText: nextCount.toCompact()),
      );
    });
    return SearchFeedState(entity: entity);
  }

  void likeTapped() async {
    final reversedLikeState = !state.entity.likeStatus;
    _uiUpdateForLikeState(likeState: reversedLikeState);

    final repo = ref.read(feedRepositoryProvider);
    final result = await repo.postFeedLikeState(
      postId: state.entity.id,
      isLiked: reversedLikeState,
    );

    switch (result) {
      case Success<bool>():
        return;
      case Failure<bool>():
        _uiUpdateForLikeState(likeState: !reversedLikeState);
    }
  }

  void _uiUpdateForLikeState({bool? likeState}) {
    final inverseLikeState = likeState ?? !state.entity.likeStatus;
    final currentLikeCount = state.entity.likeCountText.toCompact() ?? 0;
    final nextCount = inverseLikeState
        ? currentLikeCount + 1
        : (currentLikeCount - 1).clamp(0, 1 << 30);
    final text = nextCount.toCompact();

    state = state.copyWith(
      entity: state.entity.copyWith(
        likeStatus: inverseLikeState,
        likeCountText: text,
      ),
    );
  }
}
