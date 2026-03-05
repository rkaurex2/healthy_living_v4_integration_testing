import 'package:flutter_test/flutter_test.dart';
import 'package:network/src/util/network_error_parser.dart';

void main() {
  group('NetworkErrorParser', () {
    group('safeGetMessage', () {
      test('returns message value when data has "message" key', () {
        final data = {'message': 'Something went wrong'};
        expect(
          NetworkErrorParser.safeGetMessage(data),
          equals('Something went wrong'),
        );
      });

      test('returns error value when data has "error" key but no "message"',
          () {
        final data = {'error': 'Unauthorized'};
        expect(
          NetworkErrorParser.safeGetMessage(data),
          equals('Unauthorized'),
        );
      });

      test('prefers "message" over "error" when both present', () {
        final data = {
          'message': 'Message value',
          'error': 'Error value',
        };
        expect(
          NetworkErrorParser.safeGetMessage(data),
          equals('Message value'),
        );
      });

      test('returns null when data is null', () {
        expect(NetworkErrorParser.safeGetMessage(null), isNull);
      });

      test('returns null when data is a String (not a Map)', () {
        expect(NetworkErrorParser.safeGetMessage('error text'), isNull);
      });

      test('returns null when data is a List', () {
        expect(NetworkErrorParser.safeGetMessage(['error']), isNull);
      });

      test('returns null when data is an int', () {
        expect(NetworkErrorParser.safeGetMessage(404), isNull);
      });

      test('returns null when Map has neither "message" nor "error"', () {
        final data = {'status': 'failed', 'code': 500};
        expect(NetworkErrorParser.safeGetMessage(data), isNull);
      });

      test('returns null when "message" value is null', () {
        final data = {'message': null};
        expect(NetworkErrorParser.safeGetMessage(data), isNull);
      });

      test('returns error when "message" is null but "error" is present', () {
        final data = {'message': null, 'error': 'Fallback error'};
        expect(
          NetworkErrorParser.safeGetMessage(data),
          equals('Fallback error'),
        );
      });

      test('returns empty string when data is empty Map', () {
        expect(NetworkErrorParser.safeGetMessage({}), isNull);
      });
    });

    group('extract', () {
      test('returns null when messageData is null', () {
        expect(NetworkErrorParser.extract(null), isNull);
      });

      test('returns the string when messageData is a String', () {
        expect(
          NetworkErrorParser.extract('An error occurred'),
          equals('An error occurred'),
        );
      });

      test('returns empty string when messageData is an empty String', () {
        expect(NetworkErrorParser.extract(''), equals(''));
      });

      test('returns first element when messageData is a non-empty List', () {
        expect(
          NetworkErrorParser.extract(['First error', 'Second error']),
          equals('First error'),
        );
      });

      test('returns toString of first element for List of non-strings', () {
        expect(
          NetworkErrorParser.extract([123, 456]),
          equals('123'),
        );
      });

      test('returns toString for other types (int)', () {
        expect(NetworkErrorParser.extract(404), equals('404'));
      });

      test('returns toString for other types (Map)', () {
        final data = {'key': 'value'};
        expect(NetworkErrorParser.extract(data), equals(data.toString()));
      });

      test('returns toString for other types (bool)', () {
        expect(NetworkErrorParser.extract(true), equals('true'));
      });

      test('returns first element toString for single-element List', () {
        expect(
          NetworkErrorParser.extract(['only one']),
          equals('only one'),
        );
      });
    });
  });
}
