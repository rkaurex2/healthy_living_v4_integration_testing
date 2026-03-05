import 'package:flutter_test/flutter_test.dart';
import 'package:network/network.dart';

void main() {
  group('NetworkResult', () {
    test('isSuccess returns true for 2xx status codes', () {
      const result = NetworkResponse(
        data: 'data',
        statusCode: 200,
        responseHeaders: {},
      );
      expect(result.isSuccess, isTrue);
    });

    test('isClientError returns true for 4xx status codes', () {
      const result = NetworkResponse(
        data: 'data',
        statusCode: 404,
        responseHeaders: {},
      );
      expect(result.isClientError, isTrue);
    });

    test('isServerError returns true for 5xx status codes', () {
      const result = NetworkResponse(
        data: 'data',
        statusCode: 500,
        responseHeaders: {},
      );
      expect(result.isServerError, isTrue);
    });

    test('isRedirect returns true for 3xx status codes', () {
      const result = NetworkResponse(
        data: 'data',
        statusCode: 302,
        responseHeaders: {},
      );
      expect(result.isRedirect, isTrue);
    });

    test('getHeaderValue returns correct value', () {
      const result = NetworkResponse(
        data: 'data',
        statusCode: 200,
        responseHeaders: {
          'content-type': ['application/json'],
        },
      );
      expect(result.getHeaderValue('content-type'), 'application/json');
    });
  });
}
