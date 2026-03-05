import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:storage/src/key_value_storage/key_value_storage.dart';

/// SharedPreferences based implementation of KeyValueStorage.
@LazySingleton(as: KeyValueStorage)
class DefaultKeyValueStorage implements KeyValueStorage {
  static DefaultKeyValueStorage? _instance;

  final SharedPreferences _sharedPreferences;

  DefaultKeyValueStorage._(this._sharedPreferences);

  @factoryMethod
  factory DefaultKeyValueStorage(SharedPreferences sharedPreferences) {
    return _instance ??= DefaultKeyValueStorage._(sharedPreferences);
  }

  @override
  Future<bool> setString(String key, String value) async {
    return await _sharedPreferences.setString(key, value);
  }

  @override
  Future<String?> getString(String key) async {
    return _sharedPreferences.getString(key);
  }

  @override
  Future<bool> setInt(String key, int value) async {
    return await _sharedPreferences.setInt(key, value);
  }

  @override
  Future<int?> getInt(String key) async {
    return _sharedPreferences.getInt(key);
  }

  @override
  Future<bool> setDouble(String key, double value) async {
    return await _sharedPreferences.setDouble(key, value);
  }

  @override
  Future<double?> getDouble(String key) async {
    return _sharedPreferences.getDouble(key);
  }

  @override
  Future<bool> setBool(String key, bool value) async {
    return await _sharedPreferences.setBool(key, value);
  }

  @override
  Future<bool?> getBool(String key) async {
    return _sharedPreferences.getBool(key);
  }

  @override
  Future<bool> setStringList(String key, List<String> value) async {
    return await _sharedPreferences.setStringList(key, value);
  }

  @override
  Future<List<String>?> getStringList(String key) async {
    return _sharedPreferences.getStringList(key);
  }

  @override
  Future<bool> containsKey(String key) async {
    return _sharedPreferences.containsKey(key);
  }

  @override
  Future<bool> remove(String key) async {
    return await _sharedPreferences.remove(key);
  }

  @override
  Future<bool> clear() async {
    return await _sharedPreferences.clear();
  }

  @override
  Future<Set<String>> getKeys() async {
    return _sharedPreferences.getKeys();
  }

  @override
  Future<void> reload() async {
    await _sharedPreferences.reload();
  }
}
