import 'package:no_ai_sns/core/utils/result.dart';
import 'package:no_ai_sns/features/home/domain/entities/comment_item/comment._item_entity.gen.dart';
import 'package:no_ai_sns/features/home/presentation/providers/feed_repository/feed_repository_provider.dart';
import 'package:no_ai_sns/features/home/presentation/sub_widgets/comment_bottom_sheet/state/comment_state.gen.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'comment_controller.g.dart';

@riverpod
class CommentController extends _$CommentController {
  @override
  CommentState build({required int postId, String? userProfileURlString}) {
    return CommentState(postId: postId, isLoading: true);
  }

  Future<void> load({String? cursor, int? limit}) async {
    state = state.copyWith(isLoading: true, errorMessage: null);

    final result = await _loadGetCommentAPI(
      postId: state.postId,
      cursor: cursor,
      limit: limit ?? state.limit,
    );

    switch (result) {
      case Success<List<CommentItemEntity>>(value: final value):
        state = state.copyWith(isLoading: false, items: value);
      case Failure<List<CommentItemEntity>>():
        state = state.copyWith(
          isLoading: false,
          errorMessage: 'Failed to load comments',
        );
    }
  }

  // API
  Future<Result<List<CommentItemEntity>>> _loadGetCommentAPI({
    required int postId,
    String? cursor,
    required int limit,
  }) async {
    final repo = ref.read(feedRepositoryProvider);
    return await repo.getCommentItems(
      postId: postId,
      cursor: cursor,
      limit: limit,
    );
  }
}
