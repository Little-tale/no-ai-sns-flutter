import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'comment_count_bus_provider.g.dart';

class CommentCountEvent {
  CommentCountEvent({
    required this.postId,
    required this.delta,
    required this.seq,
  });

  final int postId;
  final int delta;
  final int seq;
}

@riverpod
class CommentCountBus extends _$CommentCountBus {
  int _seq = 0;

  @override
  CommentCountEvent? build() {
    return null;
  }

  void emit({required int postId, required int delta}) {
    _seq += 1;
    state = CommentCountEvent(postId: postId, delta: delta, seq: _seq);
  }
}
