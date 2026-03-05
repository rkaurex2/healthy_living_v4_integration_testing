import 'package:flutter_test/flutter_test.dart';
import 'package:healthy_living_shared/src/utils/int_extensions.dart';

void main() {
  group('IntFormatting', () {
    group('withThousandSeparator', () {
      test('returns "0" for zero', () {
        expect(0.withThousandSeparator(), equals('0'));
      });

      test('returns "1" for single digit', () {
        expect(1.withThousandSeparator(), equals('1'));
      });

      test('returns "99" for two digits', () {
        expect(99.withThousandSeparator(), equals('99'));
      });

      test('returns "999" for three digits', () {
        expect(999.withThousandSeparator(), equals('999'));
      });

      test('returns "1,000" for 1000', () {
        expect(1000.withThousandSeparator(), equals('1,000'));
      });

      test('returns "10,000" for 10000', () {
        expect(10000.withThousandSeparator(), equals('10,000'));
      });

      test('returns "100,000" for 100000', () {
        expect(100000.withThousandSeparator(), equals('100,000'));
      });

      test('returns "1,000,000" for 1000000', () {
        expect(1000000.withThousandSeparator(), equals('1,000,000'));
      });

      test('returns "1,000,000,000" for 1 billion', () {
        expect(1000000000.withThousandSeparator(), equals('1,000,000,000'));
      });

      test('handles negative single digit', () {
        expect((-5).withThousandSeparator(), equals('-5'));
      });

      test('handles negative number with separator', () {
        expect((-1000).withThousandSeparator(), equals('-1,000'));
      });

      test('handles negative large number', () {
        expect((-1000000).withThousandSeparator(), equals('-1,000,000'));
      });

      test('uses custom separator', () {
        expect(1000000.withThousandSeparator('.'), equals('1.000.000'));
      });

      test('uses space as separator', () {
        expect(1000000.withThousandSeparator(' '), equals('1 000 000'));
      });

      test('handles 1234567 correctly', () {
        expect(1234567.withThousandSeparator(), equals('1,234,567'));
      });

      test('handles negative 999', () {
        expect((-999).withThousandSeparator(), equals('-999'));
      });
    });
  });
}
