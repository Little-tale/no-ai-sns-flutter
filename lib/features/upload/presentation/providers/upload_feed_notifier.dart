import 'package:image_picker/image_picker.dart';
import 'package:no_ai_sns/core/utils/result.dart';
import 'package:no_ai_sns/features/home/presentation/providers/feed_repository/feed_repository_provider.dart';
import 'package:no_ai_sns/features/upload/presentation/state/upload_feed_state.gen.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'upload_feed_notifier.g.dart';

@riverpod
class UploadFeedNotifier extends _$UploadFeedNotifier {
  @override
  UploadFeedState build() {
    return UploadFeedState();
  }

  void addImages(List<XFile> images) {
    if (images.isEmpty) return;
    state = state.copyWith(images: [...state.images, ...images]);
  }

  void removeAt(int index) {
    if (index < 0 || index >= state.images.length) return;
    final next = state.copyWith(images: [...state.images]..removeAt(index));
    state = next;
  }

  void textChanged(String text) {
    state = state.copyWith(body: text);
  }

  void clear() {
    state = UploadFeedState();
  }

  void tappedPost() {
    if (state.isRequesting) return;
    state = state.copyWith(isRequesting: true);
    _requestPost();
  }

  _requestPost() async {
    final repo = ref.read(feedRepositoryProvider);

    final result = await repo.postFeed(body: state.body, images: state.images);

    switch (result) {
      case Success<bool>():
        state = state.copyWith(isSuccess: true, isRequesting: false);
      case Failure<bool>():
        state = state.copyWith(
          errorMessage: "Failed to post feed",
          isRequesting: false,
        );
    }
  }
}
