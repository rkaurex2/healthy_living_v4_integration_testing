import 'package:flutter_test/flutter_test.dart';
import 'package:healthy_living_product_detail/src/utils/safe_map_int_converter.dart';

void main() {
  group('SafeMapIntConverter', () {
    const converter = SafeMapIntConverter();

    group('fromJson', () {
      test('returns null for null input', () {
        expect(converter.fromJson(null), isNull);
      });

      test('converts valid Map<String, dynamic> with int values', () {
        final input = <String, dynamic>{'a': 1, 'b': 2, 'c': 3};
        final result = converter.fromJson(input);
        expect(result, equals({'a': 1, 'b': 2, 'c': 3}));
      });

      test('result is Map<String, int>', () {
        final input = <String, dynamic>{'key': 42};
        final result = converter.fromJson(input);
        expect(result, isA<Map<String, int>>());
      });

      test('returns null for String input', () {
        expect(converter.fromJson('not a map'), isNull);
      });

      test('returns null for int input', () {
        expect(converter.fromJson(123), isNull);
      });

      test('returns null for List input', () {
        expect(converter.fromJson([1, 2, 3]), isNull);
      });

      test('returns null for bool input', () {
        expect(converter.fromJson(true), isNull);
      });

      test('returns null when map contains non-int values (String)', () {
        final input = <String, dynamic>{'a': 'not an int'};
        expect(converter.fromJson(input), isNull);
      });

      test('returns null when map contains non-int values (double)', () {
        final input = <String, dynamic>{'a': 3.14};
        expect(converter.fromJson(input), isNull);
      });

      test('returns null when map contains null values', () {
        final input = <String, dynamic>{'a': null};
        expect(converter.fromJson(input), isNull);
      });

      test('returns null when map has mixed int and non-int values', () {
        final input = <String, dynamic>{'a': 1, 'b': 'two'};
        expect(converter.fromJson(input), isNull);
      });

      test('handles empty Map<String, dynamic>', () {
        final input = <String, dynamic>{};
        final result = converter.fromJson(input);
        expect(result, equals(<String, int>{}));
      });

      test('handles single entry map', () {
        final input = <String, dynamic>{'only': 99};
        final result = converter.fromJson(input);
        expect(result, equals({'only': 99}));
      });

      test('handles negative int values', () {
        final input = <String, dynamic>{'neg': -5, 'pos': 10};
        final result = converter.fromJson(input);
        expect(result, equals({'neg': -5, 'pos': 10}));
      });

      test('handles zero value', () {
        final input = <String, dynamic>{'zero': 0};
        final result = converter.fromJson(input);
        expect(result, equals({'zero': 0}));
      });

      test('returns null when map contains a List value', () {
        final input = <String, dynamic>{
          'a': [1, 2],
        };
        expect(converter.fromJson(input), isNull);
      });

      test('returns null when map contains a Map value', () {
        final input = <String, dynamic>{
          'a': {'nested': 1},
        };
        expect(converter.fromJson(input), isNull);
      });
    });

    group('toJson', () {
      test('returns the map as-is', () {
        final input = {'a': 1, 'b': 2};
        expect(converter.toJson(input), equals({'a': 1, 'b': 2}));
      });

      test('returns null for null input', () {
        expect(converter.toJson(null), isNull);
      });

      test('returns empty map for empty input', () {
        expect(converter.toJson({}), equals({}));
      });
    });
  });
}
