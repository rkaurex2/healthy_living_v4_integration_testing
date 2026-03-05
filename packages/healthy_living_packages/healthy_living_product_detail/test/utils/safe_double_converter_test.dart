import 'package:flutter_test/flutter_test.dart';
import 'package:healthy_living_product_detail/src/utils/safe_double_converter.dart';

void main() {
  group('SafeDoubleConverter', () {
    const converter = SafeDoubleConverter();

    group('fromJson', () {
      test('returns null for null input', () {
        expect(converter.fromJson(null), isNull);
      });

      test('returns null for empty string', () {
        expect(converter.fromJson(''), isNull);
      });

      test('returns double for int input', () {
        expect(converter.fromJson(5), equals(5.0));
      });

      test('returns double for double input', () {
        expect(converter.fromJson(5.5), equals(5.5));
      });

      test('returns double for numeric string', () {
        expect(converter.fromJson('5.5'), equals(5.5));
      });

      test('returns double for integer string', () {
        expect(converter.fromJson('42'), equals(42.0));
      });

      test('returns null for non-numeric string', () {
        expect(converter.fromJson('invalid'), isNull);
      });

      test('returns null for boolean input', () {
        expect(converter.fromJson(true), isNull);
      });

      test('returns null for List input', () {
        expect(converter.fromJson([1, 2, 3]), isNull);
      });

      test('returns null for Map input', () {
        expect(converter.fromJson({'key': 'value'}), isNull);
      });

      test('returns double for zero int', () {
        expect(converter.fromJson(0), equals(0.0));
      });

      test('returns double for negative int', () {
        expect(converter.fromJson(-3), equals(-3.0));
      });

      test('returns double for negative double', () {
        expect(converter.fromJson(-3.14), equals(-3.14));
      });

      test('returns double for negative string', () {
        expect(converter.fromJson('-2.5'), equals(-2.5));
      });

      test('returns double for string with leading zeros', () {
        expect(converter.fromJson('007'), equals(7.0));
      });

      test('returns null for string with letters and numbers', () {
        expect(converter.fromJson('12abc'), isNull);
      });

      test('returns double for very large number', () {
        expect(converter.fromJson(999999999.99), equals(999999999.99));
      });

      test('returns double for num type (int subtype)', () {
        num value = 10;
        expect(converter.fromJson(value), equals(10.0));
      });
    });

    group('toJson', () {
      test('returns the double value as-is', () {
        expect(converter.toJson(5.5), equals(5.5));
      });

      test('returns null for null input', () {
        expect(converter.toJson(null), isNull);
      });

      test('returns 0.0 for zero', () {
        expect(converter.toJson(0.0), equals(0.0));
      });

      test('returns negative value', () {
        expect(converter.toJson(-3.14), equals(-3.14));
      });

      test('returns integer-valued double', () {
        expect(converter.toJson(42.0), equals(42.0));
      });
    });
  });
}
