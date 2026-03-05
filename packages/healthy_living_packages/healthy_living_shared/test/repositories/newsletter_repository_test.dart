// Newsletter repository unit tests.
//
// DefaultNewsletterRepository uses a static singleton (`_instance ??=`).
// We create the mock data source ONCE at the top level, initialise the
// singleton in setUpAll(), and reset() the mock in setUp() so that stubs
// are clean for every test.

import 'package:flutter_test/flutter_test.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:healthy_living_shared/src/data/models/newsletter_subscription_response_dto.dart';
import 'package:healthy_living_shared/src/data/repository/default_newsletter_repository.dart';
import 'package:healthy_living_shared/src/domain/data_source/newsletter_remote_data_source.dart';
import 'package:healthy_living_shared/src/domain/models/newsletter/newsletter_subscription_request_model.dart';
import 'package:healthy_living_shared/src/domain/models/newsletter/newsletter_subscription_response_model.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:network/network.dart';

// Generate a mock specifically for NewsletterRemoteDataSource, because it is
// not listed in the shared mock_helpers.dart file (only the repository
// interface is there).  We generate it locally for this file.
@GenerateMocks([NewsletterRemoteDataSource])
import 'newsletter_repository_test.mocks.dart';

// ---------------------------------------------------------------------------
// Shared mock – created once, reused across all tests so the singleton
// always references this exact instance.
// ---------------------------------------------------------------------------

final MockNewsletterRemoteDataSource _dataSource =
    MockNewsletterRemoteDataSource();

// ---------------------------------------------------------------------------
// Helpers
// ---------------------------------------------------------------------------

const _request = NewsletterSubscriptionRequestModel(
  email: 'user@example.com',
  country: 'US',
  zip: '10001',
);

NetworkResponse<NewsletterSubscriptionResponseDTO?> _dtoSuccess() {
  return const NetworkResponse(
    data: NewsletterSubscriptionResponseDTO(message: 'Subscribed!'),
    statusCode: 200,
    responseHeaders: {},
  );
}

NetworkResponse<NewsletterSubscriptionResponseDTO?> _dtoFailure({
  int statusCode = 500,
  String? message,
}) {
  return NetworkResponse(
    data: null,
    statusCode: statusCode,
    responseHeaders: const {},
    statusMessage: message ?? 'Internal Server Error',
  );
}

// ---------------------------------------------------------------------------
// Tests
// ---------------------------------------------------------------------------

void main() {
  late NewsletterRepository repo;

  // Initialise the singleton once with the shared mock.
  setUpAll(() {
    repo = DefaultNewsletterRepository(dataSource: _dataSource);
  });

  // Reset the mock before each test so stubs don't leak between tests.
  setUp(() {
    reset(_dataSource);
  });

  // -------------------------------------------------------------------------
  // Happy path - 200 OK
  // -------------------------------------------------------------------------
  group('subscribeToNewsletter - success (200)', () {
    test('returns a NetworkResponse with isSuccess = true', () async {
      when(_dataSource.subscribeToNewsletter(any))
          .thenAnswer((_) async => _dtoSuccess());
      final result = await repo.subscribeToNewsletter(request: _request);
      expect(result.isSuccess, isTrue);
    });

    test('returns statusCode 200', () async {
      when(_dataSource.subscribeToNewsletter(any))
          .thenAnswer((_) async => _dtoSuccess());
      final result = await repo.subscribeToNewsletter(request: _request);
      expect(result.statusCode, 200);
    });

    test('maps DTO data to domain model', () async {
      when(_dataSource.subscribeToNewsletter(any))
          .thenAnswer((_) async => _dtoSuccess());
      final result = await repo.subscribeToNewsletter(request: _request);
      expect(result.data, isA<NewsletterSubscriptionResponseModel>());
    });

    test('domain model contains message from DTO', () async {
      when(_dataSource.subscribeToNewsletter(any))
          .thenAnswer((_) async => _dtoSuccess());
      final result = await repo.subscribeToNewsletter(request: _request);
      expect(result.data?.message, 'Subscribed!');
    });

    test('calls data source exactly once with the supplied request', () async {
      when(_dataSource.subscribeToNewsletter(any))
          .thenAnswer((_) async => _dtoSuccess());
      await repo.subscribeToNewsletter(request: _request);
      verify(_dataSource.subscribeToNewsletter(_request)).called(1);
    });
  });

  // -------------------------------------------------------------------------
  // API failure - 4xx/5xx response
  // -------------------------------------------------------------------------
  group('subscribeToNewsletter - API failure', () {
    test('returns isSuccess = false for 500 status', () async {
      when(_dataSource.subscribeToNewsletter(any))
          .thenAnswer((_) async => _dtoFailure(statusCode: 500));
      final result = await repo.subscribeToNewsletter(request: _request);
      expect(result.isSuccess, isFalse);
    });

    test('returns isServerError = true for 500 status', () async {
      when(_dataSource.subscribeToNewsletter(any))
          .thenAnswer((_) async => _dtoFailure(statusCode: 500));
      final result = await repo.subscribeToNewsletter(request: _request);
      expect(result.isServerError, isTrue);
    });

    test('data is null on server error', () async {
      when(_dataSource.subscribeToNewsletter(any))
          .thenAnswer((_) async => _dtoFailure(statusCode: 500));
      final result = await repo.subscribeToNewsletter(request: _request);
      expect(result.data, isNull);
    });

    test('statusCode is propagated from data source response', () async {
      when(_dataSource.subscribeToNewsletter(any))
          .thenAnswer((_) async => _dtoFailure(statusCode: 500));
      final result = await repo.subscribeToNewsletter(request: _request);
      expect(result.statusCode, 500);
    });
  });

  group('subscribeToNewsletter - client error (422)', () {
    test('returns isClientError = true for 422 status', () async {
      when(_dataSource.subscribeToNewsletter(any)).thenAnswer(
        (_) async => _dtoFailure(statusCode: 422, message: 'Unprocessable'),
      );
      final result = await repo.subscribeToNewsletter(request: _request);
      expect(result.isClientError, isTrue);
    });

    test('statusMessage is propagated correctly', () async {
      when(_dataSource.subscribeToNewsletter(any)).thenAnswer(
        (_) async => _dtoFailure(statusCode: 422, message: 'Unprocessable'),
      );
      final result = await repo.subscribeToNewsletter(request: _request);
      expect(result.statusMessage, 'Unprocessable');
    });
  });

  // -------------------------------------------------------------------------
  // Network exception thrown by data source
  // -------------------------------------------------------------------------
  group('subscribeToNewsletter - data source throws', () {
    test('propagates exception thrown by data source', () async {
      when(_dataSource.subscribeToNewsletter(any))
          .thenThrow(NetworkConnectionException(
        isTimeout: false,
        message: 'No internet',
        statusCode: null,
        originalError: null,
      ));

      expect(
        () => repo.subscribeToNewsletter(request: _request),
        throwsA(isA<NetworkConnectionException>()),
      );
    });

    test('propagates generic Exception thrown by data source', () async {
      when(_dataSource.subscribeToNewsletter(any))
          .thenThrow(Exception('unexpected'));

      expect(
        () => repo.subscribeToNewsletter(request: _request),
        throwsA(isA<Exception>()),
      );
    });
  });

  // -------------------------------------------------------------------------
  // Request correctness - verify the right values reach the data source
  // -------------------------------------------------------------------------
  group('subscribeToNewsletter - request correctness', () {
    test('passes the email from the request to the data source', () async {
      when(_dataSource.subscribeToNewsletter(any))
          .thenAnswer((_) async => _dtoSuccess());
      const customRequest = NewsletterSubscriptionRequestModel(
        email: 'specific@email.com',
        country: 'CA',
        zip: '99999',
      );
      await repo.subscribeToNewsletter(request: customRequest);

      final captured = verify(
        _dataSource.subscribeToNewsletter(captureAny),
      ).captured.single as NewsletterSubscriptionRequestModel;

      expect(captured.email, 'specific@email.com');
    });

    test('passes the country from the request to the data source', () async {
      when(_dataSource.subscribeToNewsletter(any))
          .thenAnswer((_) async => _dtoSuccess());
      const customRequest = NewsletterSubscriptionRequestModel(
        email: 'a@b.com',
        country: 'GB',
        zip: '12345',
      );
      await repo.subscribeToNewsletter(request: customRequest);

      final captured = verify(
        _dataSource.subscribeToNewsletter(captureAny),
      ).captured.single as NewsletterSubscriptionRequestModel;

      expect(captured.country, 'GB');
    });

    test('passes the zip from the request to the data source', () async {
      when(_dataSource.subscribeToNewsletter(any))
          .thenAnswer((_) async => _dtoSuccess());
      const customRequest = NewsletterSubscriptionRequestModel(
        email: 'a@b.com',
        country: 'US',
        zip: '54321',
      );
      await repo.subscribeToNewsletter(request: customRequest);

      final captured = verify(
        _dataSource.subscribeToNewsletter(captureAny),
      ).captured.single as NewsletterSubscriptionRequestModel;

      expect(captured.zip, '54321');
    });

    test('does NOT call data source more than once per call', () async {
      when(_dataSource.subscribeToNewsletter(any))
          .thenAnswer((_) async => _dtoSuccess());
      await repo.subscribeToNewsletter(request: _request);
      await repo.subscribeToNewsletter(request: _request);
      verify(_dataSource.subscribeToNewsletter(any)).called(2);
    });
  });

  // -------------------------------------------------------------------------
  // Response headers are preserved
  // -------------------------------------------------------------------------
  group('subscribeToNewsletter - response headers', () {
    test('propagates responseHeaders from data source', () async {
      when(_dataSource.subscribeToNewsletter(any)).thenAnswer(
        (_) async => NetworkResponse(
          data: const NewsletterSubscriptionResponseDTO(message: 'ok'),
          statusCode: 200,
          responseHeaders: {
            'x-request-id': ['abc-123'],
          },
        ),
      );

      final result = await repo.subscribeToNewsletter(request: _request);
      expect(result.getHeaderValue('x-request-id'), 'abc-123');
    });
  });
}
