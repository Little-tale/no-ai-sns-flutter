// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_storage_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// 토큰 저장소 관리 Provider
/// FlutterSecureStorage 써서 토큰 저장, 읽기, 삭제

@ProviderFor(TokenStorage)
const tokenStorageProvider = TokenStorageProvider._();

/// 토큰 저장소 관리 Provider
/// FlutterSecureStorage 써서 토큰 저장, 읽기, 삭제
final class TokenStorageProvider extends $NotifierProvider<TokenStorage, void> {
  /// 토큰 저장소 관리 Provider
  /// FlutterSecureStorage 써서 토큰 저장, 읽기, 삭제
  const TokenStorageProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'tokenStorageProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$tokenStorageHash();

  @$internal
  @override
  TokenStorage create() => TokenStorage();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(void value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<void>(value),
    );
  }
}

String _$tokenStorageHash() => r'6905200b5328cfcea4c5807dada0e1d17acdb8d5';

/// 토큰 저장소 관리 Provider
/// FlutterSecureStorage 써서 토큰 저장, 읽기, 삭제

abstract class _$TokenStorage extends $Notifier<void> {
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

/// FlutterSecureStorage Provider

@ProviderFor(secureStorage)
const secureStorageProvider = SecureStorageProvider._();

/// FlutterSecureStorage Provider

final class SecureStorageProvider
    extends
        $FunctionalProvider<
          FlutterSecureStorage,
          FlutterSecureStorage,
          FlutterSecureStorage
        >
    with $Provider<FlutterSecureStorage> {
  /// FlutterSecureStorage Provider
  const SecureStorageProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'secureStorageProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$secureStorageHash();

  @$internal
  @override
  $ProviderElement<FlutterSecureStorage> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  FlutterSecureStorage create(Ref ref) {
    return secureStorage(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(FlutterSecureStorage value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<FlutterSecureStorage>(value),
    );
  }
}

String _$secureStorageHash() => r'5f0f1e7075cbfc89c9f88bceffd63f21bf812b87';
