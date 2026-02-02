// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_id_storage_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// userId 저장소 관리 Provider
/// FlutterSecureStorage 써서 userId 저장, 읽기, 삭제

@ProviderFor(UserIdStorage)
const userIdStorageProvider = UserIdStorageProvider._();

/// userId 저장소 관리 Provider
/// FlutterSecureStorage 써서 userId 저장, 읽기, 삭제
final class UserIdStorageProvider
    extends $NotifierProvider<UserIdStorage, void> {
  /// userId 저장소 관리 Provider
  /// FlutterSecureStorage 써서 userId 저장, 읽기, 삭제
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

String _$userIdStorageHash() => r'fe9f71dddc65c53e37188d991d6ecef33c468ed2';

/// userId 저장소 관리 Provider
/// FlutterSecureStorage 써서 userId 저장, 읽기, 삭제

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
