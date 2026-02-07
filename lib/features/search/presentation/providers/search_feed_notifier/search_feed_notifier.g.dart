// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_feed_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(SearchFeedNotifier)
const searchFeedProvider = SearchFeedNotifierFamily._();

final class SearchFeedNotifierProvider
    extends $NotifierProvider<SearchFeedNotifier, SearchFeedState> {
  const SearchFeedNotifierProvider._({
    required SearchFeedNotifierFamily super.from,
    required FeedItemEntity super.argument,
  }) : super(
         retry: null,
         name: r'searchFeedProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$searchFeedNotifierHash();

  @override
  String toString() {
    return r'searchFeedProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  SearchFeedNotifier create() => SearchFeedNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SearchFeedState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SearchFeedState>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is SearchFeedNotifierProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$searchFeedNotifierHash() =>
    r'ec01e2264b75e91e83ce142323c6e0ef7f6c5125';

final class SearchFeedNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          SearchFeedNotifier,
          SearchFeedState,
          SearchFeedState,
          SearchFeedState,
          FeedItemEntity
        > {
  const SearchFeedNotifierFamily._()
    : super(
        retry: null,
        name: r'searchFeedProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  SearchFeedNotifierProvider call(FeedItemEntity entity) =>
      SearchFeedNotifierProvider._(argument: entity, from: this);

  @override
  String toString() => r'searchFeedProvider';
}

abstract class _$SearchFeedNotifier extends $Notifier<SearchFeedState> {
  late final _$args = ref.$arg as FeedItemEntity;
  FeedItemEntity get entity => _$args;

  SearchFeedState build(FeedItemEntity entity);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref = this.ref as $Ref<SearchFeedState, SearchFeedState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<SearchFeedState, SearchFeedState>,
              SearchFeedState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
