import 'package:flutter/rendering.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:storage/src/key_value_storage/default_key_value_storage.dart';

void main() {
  late DefaultKeyValueStorage subject;
  late SharedPreferences sharedPreferences;

  setUpAll(() async {
    SharedPreferences.setMockInitialValues({});
    sharedPreferences = await SharedPreferences.getInstance();
    subject = DefaultKeyValueStorage(sharedPreferences);
  });

  tearDown(() async {
    // Clear the SharedPreferences after each test to ensure isolation
    await sharedPreferences.clear();
  });

  group('DefaultKeyValueStorage unit tests', () {
    test('setString and getString work correctly', () async {
      const key = 'test_key';
      const value = 'test_value';

      expect(await subject.getString(key), null);

      final success = await subject.setString(key, value);
      expect(success, true);
      expect(await subject.getString(key), value);
    });

    test('setInt and getInt work correctly', () async {
      const key = 'test_int_key';
      const value = 42;

      expect(await subject.getInt(key), null);

      final success = await subject.setInt(key, value);
      expect(success, true);
      expect(await subject.getInt(key), value);
    });

    test('setDouble and getDouble work correctly', () async {
      const key = 'test_double_key';
      const value = 3.14;

      expect(await subject.getDouble(key), null);

      final success = await subject.setDouble(key, value);
      expect(success, true);
      expect(await subject.getDouble(key), value);
    });

    test('setBool and getBool work correctly', () async {
      const key = 'test_bool_key';
      const value = true;

      expect(await subject.getBool(key), null);

      final success = await subject.setBool(key, value);
      expect(success, true);
      expect(await subject.getBool(key), value);
    });

    test('setStringList and getStringList work correctly', () async {
      const key = 'test_list_key';
      const value = ['item1', 'item2', 'item3'];

      expect(await subject.getStringList(key), null);

      final success = await subject.setStringList(key, value);
      expect(success, true);
      expect(await subject.getStringList(key), value);
    });

    test('containsKey returns correct value', () async {
      const key = 'test_key';
      const value = 'test_value';

      debugPrint("allKeys::${await subject.getKeys()}");
      debugPrint("value::${await subject.getString(key)}");

      expect(await subject.containsKey(key), false);

      await subject.setString(key, value);

      expect(await subject.containsKey(key), true);
    });

    test('remove works correctly', () async {
      const key = 'test_key';
      const value = 'test_value';

      await subject.setString(key, value);
      expect(await subject.getString(key), value);

      final success = await subject.remove(key);
      expect(success, true);
      expect(await subject.getString(key), null);
      expect(await subject.containsKey(key), false);
    });

    test('clear removes all values', () async {
      await subject.setString('key1', 'value1');
      await subject.setInt('key2', 2);
      await subject.setBool('key3', true);

      expect(await subject.containsKey('key1'), true);
      expect(await subject.containsKey('key2'), true);
      expect(await subject.containsKey('key3'), true);

      final success = await subject.clear();
      expect(success, true);

      expect(await subject.containsKey('key1'), false);
      expect(await subject.containsKey('key2'), false);
      expect(await subject.containsKey('key3'), false);
    });

    test('getKeys returns all keys', () async {
      await subject.setString('key1', 'value1');
      await subject.setInt('key2', 2);
      await subject.setBool('key3', true);

      final keys = await subject.getKeys();
      expect(keys, containsAll(['key1', 'key2', 'key3']));
      expect(keys.length, 3);
    });

    test('reload works without throwing', () async {
      await expectLater(subject.reload(), completes);
    });
  });
}
