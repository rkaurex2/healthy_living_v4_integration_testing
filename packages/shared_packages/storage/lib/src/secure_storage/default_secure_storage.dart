import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:storage/src/secure_storage/secure_storage.dart';

/// FlutterSecureStorage based implementation of SecureStorage.
@LazySingleton(as: SecureStorage)
class DefaultSecureStorage implements SecureStorage {
  static DefaultSecureStorage? _instance;

  final FlutterSecureStorage _flutterSecureStorage;

  DefaultSecureStorage._(this._flutterSecureStorage);

  @factoryMethod
  factory DefaultSecureStorage(FlutterSecureStorage flutterSecureStorage) {
    return _instance ??= DefaultSecureStorage._(flutterSecureStorage);
  }

  @override
  Future<void> setString(String key, String value) async {
    await _flutterSecureStorage.write(key: key, value: value);
  }

  @override
  Future<String?> getString(String key) async {
    return await _flutterSecureStorage.read(key: key);
  }

  @override
  Future<bool> containsKey(String key) async {
    return await _flutterSecureStorage.containsKey(key: key);
  }

  @override
  Future<Set<String>> getKeys() async {
    final allData = await _flutterSecureStorage.readAll();
    return allData.keys.toSet();
  }

  @override
  Future<void> remove(String key) async {
    await _flutterSecureStorage.delete(key: key);
  }

  @override
  Future<void> clear() async {
    await _flutterSecureStorage.deleteAll();
  }
}
