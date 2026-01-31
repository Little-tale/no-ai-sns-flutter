// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(NotificationNotifier)
const notificationProvider = NotificationNotifierProvider._();

final class NotificationNotifierProvider
    extends $AsyncNotifierProvider<NotificationNotifier, NotificationState> {
  const NotificationNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'notificationProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$notificationNotifierHash();

  @$internal
  @override
  NotificationNotifier create() => NotificationNotifier();
}

String _$notificationNotifierHash() =>
    r'333172a13db95d9be26378ad0d4f36d8313ccb0b';

abstract class _$NotificationNotifier
    extends $AsyncNotifier<NotificationState> {
  FutureOr<NotificationState> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref as $Ref<AsyncValue<NotificationState>, NotificationState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<NotificationState>, NotificationState>,
              AsyncValue<NotificationState>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
