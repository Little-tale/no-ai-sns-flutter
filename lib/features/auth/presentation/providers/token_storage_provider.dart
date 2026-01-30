import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'token_storage_provider.g.dart';

/// 토큰 저장 키
const String _accessTokenKey = 'access_token';
const String _refreshTokenKey = 'refresh_token';

/// 토큰 저장소 관리 Provider
/// FlutterSecureStorage 써서 토큰 저장, 읽기, 삭제
@riverpod
class TokenStorage extends _$TokenStorage {
  late final FlutterSecureStorage _storage;

  @override
  void build() {
    _storage = ref.watch(secureStorageProvider);
  }

  /// accessToken, refreshToken 저장
  Future<void> saveTokens({
    required String accessToken,
    required String refreshToken,
  }) async {
    try {
      await Future.wait([
        _storage.write(key: _accessTokenKey, value: accessToken),
        _storage.write(key: _refreshTokenKey, value: refreshToken),
      ]);
    } catch (e) {
      throw Exception('토큰 저장 실패 : $e');
    }
  }

  Future<String?> getAccessToken() async {
    try {
      return await _storage.read(key: _accessTokenKey);
    } catch (e) {
      return null;
    }
  }

  Future<String?> getRefreshToken() async {
    try {
      return await _storage.read(key: _refreshTokenKey);
    } catch (e) {
      return null;
    }
  }

  Future<void> clearTokens() async {
    try {
      await Future.wait([
        _storage.delete(key: _accessTokenKey),
        _storage.delete(key: _refreshTokenKey),
      ]);
    } catch (e) {
      throw Exception('토큰 삭제 실패 : $e');
    }
  }
}

/// FlutterSecureStorage Provider
@riverpod
FlutterSecureStorage secureStorage(Ref ref) => const FlutterSecureStorage();
