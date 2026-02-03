import 'package:image_picker/image_picker.dart';
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
}
