import 'package:flutter_test/flutter_test.dart';
import 'package:healthy_living_shared/src/utils/list_extensions.dart';

void main() {
  group('ListValidate', () {
    group('isValidList', () {
      test('returns false for null list', () {
        const List<dynamic>? nullList = null;
        expect(nullList.isValidList, isFalse);
      });

      test('returns false for empty list', () {
        final List<dynamic> emptyList = [];
        expect(emptyList.isValidList, isFalse);
      });

      test('returns true for list with one element', () {
        final list = [1];
        expect(list.isValidList, isTrue);
      });

      test('returns true for list with multiple elements', () {
        final list = [1, 2, 3];
        expect(list.isValidList, isTrue);
      });

      test('returns true for list with null element', () {
        final list = [null];
        expect(list.isValidList, isTrue);
      });

      test('returns true for list of strings', () {
        final List<dynamic> list = ['hello', 'world'];
        expect(list.isValidList, isTrue);
      });

      test('returns true for list of mixed types', () {
        final List<dynamic> list = [1, 'two', 3.0, null];
        expect(list.isValidList, isTrue);
      });
    });
  });
}
