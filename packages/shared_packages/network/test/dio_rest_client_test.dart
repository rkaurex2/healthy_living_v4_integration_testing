import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:network/src/dio_rest_client.dart';

import 'mock/mock_generator.mocks.dart';

void main() {
  group('DioRestClient', () {
    late MockDio mockDio;
    late DioRestClient client;
    late Dio realDio;
    late DioRestClient realClient;

    setUp(() {
      mockDio = MockDio();
      client = DioRestClient(dio: mockDio);
      realDio = Dio(BaseOptions());
      realClient = DioRestClient(dio: realDio);
    });

    test('get returns NetworkResult on success', () async {
      final mockResponse = MockResponse();
      // Set up headers to always return a non-null value
      when(mockResponse.headers).thenReturn(
        Headers.fromMap({
          'content-type': ['application/json'],
        }),
      );
      when(mockResponse.data).thenReturn({'foo': 'bar'});
      when(mockResponse.statusCode).thenReturn(200);
      when(mockResponse.statusMessage).thenReturn('OK');
      when(
        mockDio.get(
          '/test', // Match the exact path
          queryParameters: anyNamed('queryParameters'),
          options: anyNamed('options'),
        ),
      ).thenAnswer((_) async => mockResponse);

      final result = await client.get('/test', queryParams: null);
      expect(result.isSuccess, isTrue);
      expect(result.statusCode, 200);
      expect(result.data, {'foo': 'bar'});
      expect(result.getHeaderValue('content-type'), 'application/json');
    });

    test('addHeaders adds headers to Dio', () {
      realClient.addHeaders({'X-Test': 'value'});
      expect(realClient.dio.options.headers['X-Test'], 'value');
    });

    test('removeHeaders removes headers from Dio', () {
      realClient.addHeaders({'X-Remove': 'gone'});
      realClient.removeHeaders(['X-Remove']);
      expect(realClient.dio.options.headers.containsKey('X-Remove'), isFalse);
    });

    test('setConnectTimeout sets connect timeout', () {
      realClient.setConnectTimeout(const Duration(seconds: 5));
      expect(realClient.dio.options.connectTimeout, const Duration(seconds: 5));
    });
  });
}
