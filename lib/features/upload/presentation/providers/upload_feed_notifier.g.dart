// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upload_feed_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(UploadFeedNotifier)
const uploadFeedProvider = UploadFeedNotifierProvider._();

final class UploadFeedNotifierProvider
    extends $NotifierProvider<UploadFeedNotifier, UploadFeedState> {
  const UploadFeedNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'uploadFeedProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$uploadFeedNotifierHash();

  @$internal
  @override
  UploadFeedNotifier create() => UploadFeedNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(UploadFeedState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<UploadFeedState>(value),
    );
  }
}

String _$uploadFeedNotifierHash() =>
    r'4f46ab7be0bdaa3848ad1cb2a53b473b4bf5da68';

abstract class _$UploadFeedNotifier extends $Notifier<UploadFeedState> {
  UploadFeedState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<UploadFeedState, UploadFeedState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<UploadFeedState, UploadFeedState>,
              UploadFeedState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
