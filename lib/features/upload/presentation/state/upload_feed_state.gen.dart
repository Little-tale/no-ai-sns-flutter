import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';

part 'upload_feed_state.gen.freezed.dart';

@freezed
sealed class UploadFeedState with _$UploadFeedState {
  factory UploadFeedState({
    @Default([]) List<XFile> images,
    @Default("") String body,
  }) = _UploadFeedState;
}
