import 'package:no_ai_sns/core/network/base_url.dart';

String toAbsoluteUrl(String path) {
  return '$baseURL$path';
}

extension ExtMakeImageUrl on String? {
  String? get toImage {
    if (this == null) return null;
    return toAbsoluteUrl(this!);
  }
}
