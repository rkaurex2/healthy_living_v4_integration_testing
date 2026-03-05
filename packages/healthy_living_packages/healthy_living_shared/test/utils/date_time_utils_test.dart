// DateTimeUtils unit tests.
//
// Tests the formatDateTimeString method which parses date strings and
// formats them using intl DateFormat patterns.  Pure logic, no framework deps.
//
// Uses flutter_test (not dart:test) because the package depends on Flutter.

import 'package:flutter_test/flutter_test.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

void main() {
  late DateTimeUtils utils;

  setUp(() {
    utils = DateTimeUtils();
  });

  // =========================================================================
  // formatDateTimeString
  // =========================================================================

  group('formatDateTimeString', () {
    // -----------------------------------------------------------------------
    // Happy path – valid date strings
    // -----------------------------------------------------------------------
    group('valid date strings', () {
      test('formats ISO 8601 date with yyyy-MM-dd pattern', () {
        final result = utils.formatDateTimeString(
          dateTimeFormat: 'yyyy-MM-dd',
          dateTimeString: '2024-06-15T10:30:00.000Z',
        );
        expect(result, '2024-06-15');
      });

      test('formats ISO 8601 date with MM/dd/yyyy pattern', () {
        final result = utils.formatDateTimeString(
          dateTimeFormat: 'MM/dd/yyyy',
          dateTimeString: '2024-06-15T10:30:00.000Z',
        );
        expect(result, '06/15/2024');
      });

      test('formats date with MMMM d, yyyy pattern', () {
        final result = utils.formatDateTimeString(
          dateTimeFormat: 'MMMM d, yyyy',
          dateTimeString: '2024-01-01T00:00:00.000Z',
        );
        expect(result, 'January 1, 2024');
      });

      test('formats date-only string (no time component)', () {
        final result = utils.formatDateTimeString(
          dateTimeFormat: 'yyyy-MM-dd',
          dateTimeString: '2024-12-25',
        );
        expect(result, '2024-12-25');
      });

      test('formats with time component returns non-null result', () {
        final result = utils.formatDateTimeString(
          dateTimeFormat: 'HH:mm',
          dateTimeString: '2024-06-15T14:30:00.000Z',
        );
        // Exact time depends on local timezone; just verify non-null.
        expect(result, isNotNull);
        expect(result, isNotEmpty);
      });

      test('formats year-only correctly', () {
        final result = utils.formatDateTimeString(
          dateTimeFormat: 'yyyy',
          dateTimeString: '2024-06-15',
        );
        expect(result, '2024');
      });

      test('formats month abbreviation correctly', () {
        final result = utils.formatDateTimeString(
          dateTimeFormat: 'MMM yyyy',
          dateTimeString: '2024-03-20',
        );
        expect(result, 'Mar 2024');
      });
    });

    // -----------------------------------------------------------------------
    // Null / empty inputs
    // -----------------------------------------------------------------------
    group('null and empty inputs', () {
      test('returns null when dateTimeString is null', () {
        final result = utils.formatDateTimeString(
          dateTimeFormat: 'yyyy-MM-dd',
          dateTimeString: null,
        );
        expect(result, isNull);
      });

      test('returns null when dateTimeString is empty', () {
        final result = utils.formatDateTimeString(
          dateTimeFormat: 'yyyy-MM-dd',
          dateTimeString: '',
        );
        expect(result, isNull);
      });
    });

    // -----------------------------------------------------------------------
    // Invalid / unparseable date strings
    // -----------------------------------------------------------------------
    group('invalid date strings', () {
      test('returns null for non-parseable string', () {
        final result = utils.formatDateTimeString(
          dateTimeFormat: 'yyyy-MM-dd',
          dateTimeString: 'not-a-date',
        );
        expect(result, isNull);
      });

      test('returns null for random text', () {
        final result = utils.formatDateTimeString(
          dateTimeFormat: 'yyyy-MM-dd',
          dateTimeString: 'hello world',
        );
        expect(result, isNull);
      });

      test('returns null for numeric-only string that is not a date', () {
        final result = utils.formatDateTimeString(
          dateTimeFormat: 'yyyy-MM-dd',
          dateTimeString: '99999',
        );
        expect(result, isNull);
      });
    });
  });
}
