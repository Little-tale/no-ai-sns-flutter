import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'login_popup_provider.g.dart';

@riverpod
class LoginPopup extends _$LoginPopup {
  @override
  bool build() => false;

  void show() => state = true;
  void hide() => state = false;
}
