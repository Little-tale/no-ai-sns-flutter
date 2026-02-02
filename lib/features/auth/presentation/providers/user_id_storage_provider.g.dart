// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_id_storage_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// User ID 저장소 관리 Provider
/// FlutterSecureStorage를 사용하여 User ID를 안전하게 저장/읽기/삭제합니다.

@ProviderFor(UserIdStorage)
const userIdStorageProvider = UserIdStorageProvider._();

/// User ID 저장소 관리 Provider
/// FlutterSecureStorage를 사용하여 User ID를 안전하게 저장/읽기/삭제합니다.
final class UserIdStorageProvider
    extends $NotifierProvider<UserIdStorage, void> {
  /// User ID 저장소 관리 Provider
  /// FlutterSecureStorage를 사용하여 User ID를 안전하게 저장/읽기/삭제합니다.
  const UserIdStorageProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'userIdStorageProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$userIdStorageHash();

  @$internal
  @override
  UserIdStorage create() => UserIdStorage();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(void value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<void>(value),
    );
  }
}

String _$userIdStorageHash() => r'2cbe8cc3feec1be1c8bb8767384ed6a74d5ff232';

/// User ID 저장소 관리 Provider
/// FlutterSecureStorage를 사용하여 User ID를 안전하게 저장/읽기/삭제합니다.

abstract class _$UserIdStorage extends $Notifier<void> {
  void build();
  @$mustCallSuper
  @override
  void runBuild() {
    build();
    final ref = this.ref as $Ref<void, void>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<void, void>,
              void,
              Object?,
              Object?
            >;
    element.handleValue(ref, null);
  }
}
