import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:no_ai_sns/features/home/domain/entities/comment_item/comment._item_entity.gen.dart';

part 'comment_state.gen.freezed.dart';

@freezed
sealed class CommentState with _$CommentState {
  factory CommentState({
    required int postId,
    @Default(false) bool isLoading,
    @Default([]) List<CommentItemEntity> items,
    String? cursor,
    @Default(20) int limit,
    String? errorMessage,
    String? userProfileUrlString,
    @Default(false) bool showLoginPopup,
    @Default("") String commentText,
  }) = _CommentState;
}
