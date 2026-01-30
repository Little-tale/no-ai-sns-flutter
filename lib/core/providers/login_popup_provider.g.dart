// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_popup_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(LoginPopup)
const loginPopupProvider = LoginPopupProvider._();

final class LoginPopupProvider extends $NotifierProvider<LoginPopup, bool> {
  const LoginPopupProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'loginPopupProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$loginPopupHash();

  @$internal
  @override
  LoginPopup create() => LoginPopup();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$loginPopupHash() => r'8f67392b55b9a7f8bf816424c497bb5caa88fe93';

abstract class _$LoginPopup extends $Notifier<bool> {
  bool build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<bool, bool>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<bool, bool>,
              bool,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
