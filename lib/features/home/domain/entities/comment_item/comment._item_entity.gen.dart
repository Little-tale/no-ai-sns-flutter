import 'package:freezed_annotation/freezed_annotation.dart';

part 'comment._item_entity.gen.freezed.dart';

@freezed
sealed class CommentItemEntity with _$CommentItemEntity {
  factory CommentItemEntity({
    required int id,
    required String content,
    required int authorId,
    String? profileImageUrlString,
    required String authorName,
    required String createdAt,
    required bool commentLikeState,
    required String likeCount,
  }) = _CommentItemEntity;

  static CommentItemEntity dummy() {
    return CommentItemEntity(
      id: 0,
      content:
          "This is a dummy comment., This is a dummy comment.\nThis is a dummy comment.",
      authorId: 0,
      profileImageUrlString:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTx2Z4LcJOPwaTwwqZ-qIxXxKicRR6sa-Ge6A&s",
      authorName: "Dummy User asdasdsa",
      createdAt: "2 min",
      commentLikeState: true,
      likeCount: "21",
    );
  }
}
