import 'package:no_ai_sns/core/utils/number_format.dart';
import 'package:no_ai_sns/core/utils/result.dart';
import 'package:no_ai_sns/core/utils/throttle.dart';
import 'package:no_ai_sns/features/auth/presentation/providers/auth_notifier.dart';
import 'package:no_ai_sns/core/providers/login_popup_provider.dart';
import 'package:no_ai_sns/core/providers/comment_count_bus_provider.dart';
import 'package:no_ai_sns/features/home/domain/entities/comment_item/comment._item_entity.gen.dart';
import 'package:no_ai_sns/features/home/presentation/providers/feed_repository/feed_repository_provider.dart';
import 'package:no_ai_sns/features/home/presentation/sub_widgets/comment_bottom_sheet/state/comment_state.gen.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'comment_controller.g.dart';

@riverpod
class CommentController extends _$CommentController {
  final Map<int, Throttler> _likeThrottlers = {};

  @override
  CommentState build({required int postId, String? userProfileURlString}) {
    ref.onDispose(() {
      for (final throttler in _likeThrottlers.values) {
        throttler.cancel();
      }
    });
    return CommentState(postId: postId, isLoading: true);
  }

  Future<void> load({
    String? cursor,
    int? limit,
    bool isLoadMore = false,
  }) async {
    if (isLoadMore) {
      if (state.isLoadingMore) {
        return;
      }
      state = state.copyWith(isLoadingMore: true, errorMessage: null);
    } else {
      state = state.copyWith(isLoading: true, errorMessage: null);
    }

    final result = await _loadGetCommentAPI(
      postId: state.postId,
      cursor: cursor,
      limit: limit ?? state.limit,
    );

    switch (result) {
      case Success<List<CommentItemEntity>>(value: final value):
        if (cursor != null || isLoadMore) {
          state = state.copyWith(
            items: [...state.items, ...value],
            isLoadingMore: false,
          );
        } else {
          state = state.copyWith(isLoading: false, items: value);
        }

      case Failure<List<CommentItemEntity>>():
        state = state.copyWith(
          isLoading: false,
          isLoadingMore: false,
          errorMessage: 'Failed to load comments',
        );
    }
  }

  void loadNext() async {
    if (state.items.isEmpty || state.isLoading || state.isLoadingMore) {
      return;
    }
    final cursor = state.items.last.id;
    await load(cursor: cursor.toString(), isLoadMore: true);
  }

  void changeCommentText(String text) {
    state = state.copyWith(commentText: text);
  }

  // 전송 버튼 클릭시
  void tappedSendButton() async {
    final commentText = state.commentText;
    if (commentText.isEmpty) return;

    // Lgoin Check
    if (await _checkLogin()) {
      final result = await _postCommentAPI(
        postId: state.postId,
        content: commentText,
        parentId: null, // 최상위
      );

      switch (result) {
        case Success<CommentItemEntity>(value: final value):
          var copy = [value] + state.items;
          state = state.copyWith(
            isLoading: false,
            items: copy,
            commentText: '',
          );
          ref
              .read(commentCountBusProvider.notifier)
              .emit(postId: state.postId, delta: 1);
        case Failure<CommentItemEntity>():
          state = state.copyWith(
            isLoading: false,
            errorMessage: 'Failed to load comments',
          );
      }
    }
  }

  void clearLoginPopupState() async {
    state = state.copyWith(showLoginPopup: false);
  }

  void commentLikeTapped(int index) async {
    if (!await _checkLogin()) {
      return;
    }
    final item = state.items[index];
    final id = item.id;
    final desiredLiked = !item.commentLikeState;

    _updateItemById(id, _applyLikeState(item, desiredLiked));

    _throttlerFor(id).call(() async {
      final result = await _changeLikeStateAPI(
        postId: state.postId,
        commentId: id,
        isLiked: desiredLiked,
      );

      final currentIndex = _indexById(id);
      if (currentIndex == -1) {
        return;
      }
      final currentItem = state.items[currentIndex];

      switch (result) {
        // 성공시 반영을 할 필요가 없음.
        case Success<bool>(value: final _):
          return;
        case Failure<bool>():
          if (currentItem.commentLikeState == desiredLiked) {
            _updateItemById(id, _applyLikeState(currentItem, !desiredLiked));
          }
      }
    });
  }

  // MARK: Private

  Future<bool> _checkLogin() async {
    final auth = ref.read(authProvider.notifier);
    final isLogin = await auth.getAccessToken() != null;

    if (!isLogin) {
      ref.read(loginPopupProvider.notifier).show();
    }
    return isLogin;
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

  Future<Result<CommentItemEntity>> _postCommentAPI({
    required int postId,
    required String content,
    int? parentId,
  }) async {
    final repo = ref.read(feedRepositoryProvider);
    final result = await repo.postCommentItem(
      postId: postId,
      content: content,
      parentId: parentId,
    );
    return result;
  }

  Future<Result<bool>> _changeLikeStateAPI({
    required int postId,
    required int commentId,
    required bool isLiked,
  }) async {
    final repo = ref.read(feedRepositoryProvider);
    return await repo.postCommentLikeState(
      postId: postId,
      commentId: commentId,
      isLiked: isLiked,
    );
  }

  Throttler _throttlerFor(int commentId) {
    return _likeThrottlers.putIfAbsent(
      commentId,
      () => Throttler(delay: const Duration(milliseconds: 600)),
    );
  }

  int _indexById(int id) {
    return state.items.indexWhere((item) => item.id == id);
  }

  void _updateItemAt(int index, CommentItemEntity item) {
    // 불변성 깨짐 주의
    final updatedItems = [...state.items];
    updatedItems[index] = item;
    state = state.copyWith(items: updatedItems);
  }

  void _updateItemById(int id, CommentItemEntity item) {
    final index = _indexById(id);
    if (index == -1) {
      return;
    }
    _updateItemAt(index, item);
  }

  CommentItemEntity _applyLikeState(CommentItemEntity item, bool liked) {
    if (item.commentLikeState == liked) {
      return item;
    }
    final count = parseCompactNumberToInt(item.likeCount);
    if (count == null) {
      return item.copyWith(commentLikeState: liked);
    }
    final nextCount = liked ? count + 1 : (count - 1).clamp(0, 1 << 30);
    return item.copyWith(
      commentLikeState: liked,
      likeCount: nextCount.toCompact(),
    );
  }
}
