import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:no_ai_sns/features/auth/presentation/providers/token_storage_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_id_storage_provider.g.dart';

/// User ID 저장 키
const String _userIdKey = 'user_id';

/// User ID 저장소 관리 Provider
/// FlutterSecureStorage를 사용하여 User ID를 안전하게 저장/읽기/삭제합니다.
@riverpod
class UserIdStorage extends _$UserIdStorage {
  late final FlutterSecureStorage _storage;

  @override
  void build() {
    _storage = ref.watch(secureStorageProvider);
  }

  /// User ID 저장
  Future<void> saveUserId(int userId) async {
    try {
      await _storage.write(key: _userIdKey, value: userId.toString());
    } catch (e) {
      throw Exception('User ID 저장 실패: $e');
    }
  }

  /// User ID 읽기
  Future<int?> getUserId() async {
    try {
      final userIdString = await _storage.read(key: _userIdKey);
      if (userIdString == null) return null;
      return int.tryParse(userIdString);
    } catch (e) {
      return null;
    }
  }

  /// User ID 삭제
  Future<void> clearUserId() async {
    try {
      await _storage.delete(key: _userIdKey);
    } catch (e) {
      throw Exception('User ID 삭제 실패: $e');
    }
  }
}
