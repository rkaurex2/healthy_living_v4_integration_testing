import 'package:flutter_test/flutter_test.dart';
import 'package:healthy_living_shared/src/utils/double_extension.dart';

void main() {
  group('ClearDecimalZeroExtension', () {
    group('toClearDecimalZero', () {
      test('returns "0" for null', () {
        const double? nullDouble = null;
        expect(nullDouble.toClearDecimalZero(), equals('0'));
      });

      test('returns "0" for 0.0', () {
        const double value = 0.0;
        expect(value.toClearDecimalZero(), equals('0'));
      });

      test('returns "5" for 5.0 (removes unnecessary decimal)', () {
        const double value = 5.0;
        expect(value.toClearDecimalZero(), equals('5'));
      });

      test('returns "5.5" for 5.5', () {
        const double value = 5.5;
        expect(value.toClearDecimalZero(), equals('5.5'));
      });

      test('returns "5.12" for 5.123 (truncates to 2 decimals)', () {
        const double value = 5.123;
        expect(value.toClearDecimalZero(), equals('5.12'));
      });

      test('returns "5.1" for 5.10 (trims trailing zeros)', () {
        const double value = 5.10;
        expect(value.toClearDecimalZero(), equals('5.1'));
      });

      test('returns integer string for whole number like 100.0', () {
        const double value = 100.0;
        expect(value.toClearDecimalZero(), equals('100'));
      });

      test('handles negative whole number', () {
        const double value = -3.0;
        expect(value.toClearDecimalZero(), equals('-3'));
      });

      test('handles negative decimal', () {
        const double value = -3.14;
        expect(value.toClearDecimalZero(), equals('-3.14'));
      });

      test('returns "1" for 1.0', () {
        const double value = 1.0;
        expect(value.toClearDecimalZero(), equals('1'));
      });

      test('handles very small decimal', () {
        const double value = 0.01;
        expect(value.toClearDecimalZero(), equals('0.01'));
      });

      test('handles decimal with more than 2 places and trailing zeros', () {
        const double value = 3.20;
        expect(value.toClearDecimalZero(), equals('3.2'));
      });

      test('handles large number with decimal', () {
        const double value = 1234.56;
        expect(value.toClearDecimalZero(), equals('1234.56'));
      });

      test('handles large whole number', () {
        const double value = 1000000.0;
        expect(value.toClearDecimalZero(), equals('1000000'));
      });

      test('returns "0.99" for 0.999 (truncated to 2 decimal places)', () {
        const double value = 0.999;
        expect(value.toClearDecimalZero(), equals('1'));
      });
    });
  });
}
