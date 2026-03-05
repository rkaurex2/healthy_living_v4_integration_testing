import 'package:flutter_test/flutter_test.dart';
import 'package:network/src/types/models/network_exception.dart';

void main() {
  group('NetworkConnectionException', () {
    test('stores all fields correctly', () {
      final exception = NetworkConnectionException(
        isTimeout: true,
        message: 'Connection timed out',
        statusCode: null,
        originalError: 'timeout error',
        errorMessage: 'Timeout',
        responseBody: null,
      );

      expect(exception.isTimeout, isTrue);
      expect(exception.message, equals('Connection timed out'));
      expect(exception.statusCode, isNull);
      expect(exception.originalError, equals('timeout error'));
      expect(exception.errorMessage, equals('Timeout'));
      expect(exception.responseBody, isNull);
    });

    test('isTimeout is false when not a timeout', () {
      final exception = NetworkConnectionException(
        isTimeout: false,
        message: 'No internet',
        statusCode: null,
        originalError: 'network error',
      );

      expect(exception.isTimeout, isFalse);
    });

    test('toString includes isTimeout', () {
      final exception = NetworkConnectionException(
        isTimeout: true,
        message: 'Connection timed out',
        statusCode: null,
        originalError: null,
      );

      final result = exception.toString();
      expect(result, contains('isTimeout: true'));
      expect(result, contains('Connection timed out'));
    });

    test('toString includes all base fields', () {
      final exception = NetworkConnectionException(
        isTimeout: false,
        message: 'No connection',
        statusCode: 408,
        originalError: 'original',
        responseBody: 'body',
      );

      final result = exception.toString();
      expect(result, contains('Network::'));
      expect(result, contains('message: No connection'));
      expect(result, contains('statusCode: 408'));
      expect(result, contains('originalError: original'));
      expect(result, contains('responseBody: body'));
      expect(result, contains('isTimeout: false'));
    });

    test('is a NetworkException', () {
      final exception = NetworkConnectionException(
        isTimeout: false,
        message: 'test',
        statusCode: null,
        originalError: null,
      );

      expect(exception, isA<NetworkException>());
    });

    test('implements Exception', () {
      final exception = NetworkConnectionException(
        isTimeout: false,
        message: 'test',
        statusCode: null,
        originalError: null,
      );

      expect(exception, isA<Exception>());
    });
  });

  group('NetworkClientSideException', () {
    test('stores all fields correctly', () {
      final exception = NetworkClientSideException(
        message: 'Bad request',
        statusCode: 400,
        originalError: 'validation failed',
        errorMessage: 'Invalid input',
        responseBody: '{"error": "bad request"}',
      );

      expect(exception.message, equals('Bad request'));
      expect(exception.statusCode, equals(400));
      expect(exception.originalError, equals('validation failed'));
      expect(exception.errorMessage, equals('Invalid input'));
      expect(exception.responseBody, equals('{"error": "bad request"}'));
    });

    test('is a NetworkException', () {
      final exception = NetworkClientSideException(
        message: 'Not found',
        statusCode: 404,
        originalError: null,
      );

      expect(exception, isA<NetworkException>());
    });

    test('toString contains class name info', () {
      final exception = NetworkClientSideException(
        message: 'Unauthorized',
        statusCode: 401,
        originalError: null,
      );

      final result = exception.toString();
      expect(result, contains('Network::'));
      expect(result, contains('message: Unauthorized'));
      expect(result, contains('statusCode: 401'));
    });

    test('handles null optional fields', () {
      final exception = NetworkClientSideException(
        message: 'Error',
        statusCode: 422,
        originalError: null,
      );

      expect(exception.errorMessage, isNull);
      expect(exception.responseBody, isNull);
    });
  });

  group('NetworkServerSideException', () {
    test('stores all fields correctly', () {
      final exception = NetworkServerSideException(
        message: 'Internal server error',
        statusCode: 500,
        originalError: 'server crash',
        errorMessage: 'Server error',
        responseBody: 'Internal Error',
      );

      expect(exception.message, equals('Internal server error'));
      expect(exception.statusCode, equals(500));
      expect(exception.originalError, equals('server crash'));
      expect(exception.errorMessage, equals('Server error'));
      expect(exception.responseBody, equals('Internal Error'));
    });

    test('is a NetworkException', () {
      final exception = NetworkServerSideException(
        message: 'Server error',
        statusCode: 500,
        originalError: null,
      );

      expect(exception, isA<NetworkException>());
    });

    test('toString contains relevant info', () {
      final exception = NetworkServerSideException(
        message: 'Gateway timeout',
        statusCode: 504,
        originalError: null,
      );

      final result = exception.toString();
      expect(result, contains('message: Gateway timeout'));
      expect(result, contains('statusCode: 504'));
    });
  });

  group('NetworkRequestCancelException', () {
    test('stores all fields correctly', () {
      final exception = NetworkRequestCancelException(
        message: 'Request cancelled',
        statusCode: null,
        originalError: 'user cancelled',
        errorMessage: 'Cancelled',
      );

      expect(exception.message, equals('Request cancelled'));
      expect(exception.statusCode, isNull);
      expect(exception.originalError, equals('user cancelled'));
      expect(exception.errorMessage, equals('Cancelled'));
    });

    test('is a NetworkException', () {
      final exception = NetworkRequestCancelException(
        message: 'Cancelled',
        statusCode: null,
        originalError: null,
      );

      expect(exception, isA<NetworkException>());
    });

    test('toString contains relevant info', () {
      final exception = NetworkRequestCancelException(
        message: 'Request was cancelled',
        statusCode: null,
        originalError: null,
      );

      final result = exception.toString();
      expect(result, contains('message: Request was cancelled'));
    });
  });

  group('UnknownNetworkException', () {
    test('stores all fields correctly', () {
      final exception = UnknownNetworkException(
        message: 'Unknown error',
        statusCode: null,
        originalError: Exception('something weird'),
        errorMessage: 'Unknown',
        responseBody: null,
      );

      expect(exception.message, equals('Unknown error'));
      expect(exception.statusCode, isNull);
      expect(exception.originalError, isA<Exception>());
      expect(exception.errorMessage, equals('Unknown'));
      expect(exception.responseBody, isNull);
    });

    test('is a NetworkException', () {
      final exception = UnknownNetworkException(
        message: 'Unknown',
        statusCode: null,
        originalError: null,
      );

      expect(exception, isA<NetworkException>());
    });

    test('toString contains relevant info', () {
      final exception = UnknownNetworkException(
        message: 'Something unexpected',
        statusCode: 0,
        originalError: 'weird error',
        responseBody: 'unexpected body',
      );

      final result = exception.toString();
      expect(result, contains('message: Something unexpected'));
      expect(result, contains('statusCode: 0'));
      expect(result, contains('responseBody: unexpected body'));
    });
  });

  group('NetworkException sealed class behavior', () {
    test('can be used in switch expressions via subtypes', () {
      final NetworkException exception = NetworkConnectionException(
        isTimeout: true,
        message: 'timeout',
        statusCode: null,
        originalError: null,
      );

      final result = switch (exception) {
        NetworkConnectionException() => 'connection',
        NetworkClientSideException() => 'client',
        NetworkServerSideException() => 'server',
        NetworkRequestCancelException() => 'cancel',
        UnknownNetworkException() => 'unknown',
      };

      expect(result, equals('connection'));
    });
  });
}
