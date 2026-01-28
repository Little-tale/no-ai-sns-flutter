// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(CommentController)
const commentControllerProvider = CommentControllerFamily._();

final class CommentControllerProvider
    extends $NotifierProvider<CommentController, CommentState> {
  const CommentControllerProvider._({
    required CommentControllerFamily super.from,
    required ({int postId, String? userProfileURlString}) super.argument,
  }) : super(
         retry: null,
         name: r'commentControllerProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$commentControllerHash();

  @override
  String toString() {
    return r'commentControllerProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  CommentController create() => CommentController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CommentState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CommentState>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is CommentControllerProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$commentControllerHash() => r'c915370739676fcbea8bb7c23f2c9ec7f887c83e';

final class CommentControllerFamily extends $Family
    with
        $ClassFamilyOverride<
          CommentController,
          CommentState,
          CommentState,
          CommentState,
          ({int postId, String? userProfileURlString})
        > {
  const CommentControllerFamily._()
    : super(
        retry: null,
        name: r'commentControllerProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  CommentControllerProvider call({
    required int postId,
    String? userProfileURlString,
  }) => CommentControllerProvider._(
    argument: (postId: postId, userProfileURlString: userProfileURlString),
    from: this,
  );

  @override
  String toString() => r'commentControllerProvider';
}

abstract class _$CommentController extends $Notifier<CommentState> {
  late final _$args = ref.$arg as ({int postId, String? userProfileURlString});
  int get postId => _$args.postId;
  String? get userProfileURlString => _$args.userProfileURlString;

  CommentState build({required int postId, String? userProfileURlString});
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(
      postId: _$args.postId,
      userProfileURlString: _$args.userProfileURlString,
    );
    final ref = this.ref as $Ref<CommentState, CommentState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<CommentState, CommentState>,
              CommentState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
