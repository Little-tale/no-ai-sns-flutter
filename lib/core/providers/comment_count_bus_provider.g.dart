// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_count_bus_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(CommentCountBus)
const commentCountBusProvider = CommentCountBusProvider._();

final class CommentCountBusProvider
    extends $NotifierProvider<CommentCountBus, CommentCountEvent?> {
  const CommentCountBusProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'commentCountBusProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$commentCountBusHash();

  @$internal
  @override
  CommentCountBus create() => CommentCountBus();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CommentCountEvent? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CommentCountEvent?>(value),
    );
  }
}

String _$commentCountBusHash() => r'2eeee6301e762cbe689ab3c2651163438d82815e';

abstract class _$CommentCountBus extends $Notifier<CommentCountEvent?> {
  CommentCountEvent? build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<CommentCountEvent?, CommentCountEvent?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<CommentCountEvent?, CommentCountEvent?>,
              CommentCountEvent?,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
