import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:storage/src/secure_storage/default_secure_storage.dart';

import '../../mock/nice_mock_generator.mocks.dart';

void main() {
  late DefaultSecureStorage subject;
  late MockFlutterSecureStorage mockSecureStorage;

  setUpAll(() {
    mockSecureStorage = MockFlutterSecureStorage();
    subject = DefaultSecureStorage(mockSecureStorage);
  });

  group('DefaultSecureStorage unit tests', () {
    test('setString and getString work correctly', () async {
      const key = 'test_key';
      const value = 'test_value';

      when(mockSecureStorage.read(key: key)).thenAnswer((_) async => null);
      expect(await subject.getString(key), null);

      when(
        mockSecureStorage.write(key: key, value: value),
      ).thenAnswer((_) async => {});
      await subject.setString(key, value);

      when(mockSecureStorage.read(key: key)).thenAnswer((_) async => value);
      expect(await subject.getString(key), value);

      verify(mockSecureStorage.write(key: key, value: value)).called(1);
      verify(mockSecureStorage.read(key: key)).called(2);
    });

    test('containsKey returns correct value', () async {
      const key = 'test_key';

      when(
        mockSecureStorage.containsKey(key: key),
      ).thenAnswer((_) async => false);
      expect(await subject.containsKey(key), false);

      when(
        mockSecureStorage.containsKey(key: key),
      ).thenAnswer((_) async => true);
      expect(await subject.containsKey(key), true);

      verify(mockSecureStorage.containsKey(key: key)).called(2);
    });

    test('remove works correctly', () async {
      const key = 'test_key';

      when(mockSecureStorage.delete(key: key)).thenAnswer((_) async => {});
      await subject.remove(key);

      verify(mockSecureStorage.delete(key: key)).called(1);
    });

    test('clear removes all values', () async {
      when(mockSecureStorage.deleteAll()).thenAnswer((_) async => {});
      await subject.clear();

      verify(mockSecureStorage.deleteAll()).called(1);
    });

    test('getKeys returns all keys', () async {
      final mockData = {'key1': 'value1', 'key2': 'value2'};

      when(mockSecureStorage.readAll()).thenAnswer((_) async => mockData);

      final keys = await subject.getKeys();
      expect(keys, containsAll(['key1', 'key2']));
      expect(keys.length, 2);

      verify(mockSecureStorage.readAll()).called(1);
    });
  });
}
