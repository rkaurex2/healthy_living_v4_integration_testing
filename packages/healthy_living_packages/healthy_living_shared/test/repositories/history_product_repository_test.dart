import 'package:flutter_test/flutter_test.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:healthy_living_shared/src/data/repository/default_history_product_repository.dart';
import 'package:healthy_living_shared/src/domain/data_source/history_product_remote_data_source.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:network/network.dart';

@GenerateMocks([HistoryProductRemoteDataSource])
import 'history_product_repository_test.mocks.dart';

// ---------------------------------------------------------------------------
// Helpers
// ---------------------------------------------------------------------------

/// Dummy request with all required fields filled in.
const _dummyRecentlyViewedRequest = RecentlyViewedProductRequestModel(
  productId: 42,
  productType: 'food',
);

/// Dummy history request with all required fields filled in.
const _dummyHistoryRequest = GetHistoryRequestModel(
  page: 1,
  perPage: 20,
  historyType: 'recently_viewed',
);

// ---------------------------------------------------------------------------
// Tests
// ---------------------------------------------------------------------------

void main() {
  late MockHistoryProductRemoteDataSource mockDataSource;
  late HistoryProductRepository repository;

  // Use a single shared mock so the singleton DefaultHistoryProductRepository
  // always references the same mock instance.
  final sharedMock = MockHistoryProductRemoteDataSource();

  setUpAll(() {
    DefaultHistoryProductRepository(dataSource: sharedMock);
  });

  setUp(() {
    reset(sharedMock);
    mockDataSource = sharedMock;
    repository = DefaultHistoryProductRepository(dataSource: mockDataSource);
  });

  // -------------------------------------------------------------------------
  // addRecentlyViewedProduct
  // -------------------------------------------------------------------------
  group('addRecentlyViewedProduct', () {
    test('returns 200 on success with mapped domain model', () async {
      when(mockDataSource.addRecentlyViewedProduct(any)).thenAnswer(
        (_) async => const NetworkResponse<GeneralResponseDTO?>(
          data: GeneralResponseDTO(status: 'success', message: 'Added'),
          statusCode: 200,
          responseHeaders: {},
        ),
      );

      final result = await repository.addRecentlyViewedProduct(
        request: _dummyRecentlyViewedRequest,
      );

      expect(result.statusCode, 200);
      expect(result.isSuccess, isTrue);
    });

    test('returns error status code when API fails', () async {
      when(mockDataSource.addRecentlyViewedProduct(any)).thenAnswer(
        (_) async => const NetworkResponse<GeneralResponseDTO?>(
          data: null,
          statusCode: 500,
          responseHeaders: {},
          statusMessage: 'Server Error',
        ),
      );

      final result = await repository.addRecentlyViewedProduct(
        request: _dummyRecentlyViewedRequest,
      );

      expect(result.statusCode, 500);
      expect(result.isServerError, isTrue);
    });

    test('propagates exception from data source', () async {
      when(mockDataSource.addRecentlyViewedProduct(any))
          .thenThrow(Exception('network error'));

      expect(
        () => repository.addRecentlyViewedProduct(
          request: _dummyRecentlyViewedRequest,
        ),
        throwsA(isA<Exception>()),
      );
    });
  });

  // -------------------------------------------------------------------------
  // getRecentlyViewed
  // -------------------------------------------------------------------------
  group('getRecentlyViewed', () {
    test('returns 200 on success', () async {
      when(mockDataSource.getRecentlyViewed(request: anyNamed('request')))
          .thenAnswer(
        (_) async => const NetworkResponse<GetHistoryResponseDTO?>(
          data: GetHistoryResponseDTO(),
          statusCode: 200,
          responseHeaders: {},
        ),
      );

      final result = await repository.getRecentlyViewed(
        request: _dummyHistoryRequest,
      );

      expect(result.statusCode, 200);
      expect(result.isSuccess, isTrue);
    });

    test('returns null data when DTO is null', () async {
      when(mockDataSource.getRecentlyViewed(request: anyNamed('request')))
          .thenAnswer(
        (_) async => const NetworkResponse<GetHistoryResponseDTO?>(
          data: null,
          statusCode: 404,
          responseHeaders: {},
        ),
      );

      final result = await repository.getRecentlyViewed(
        request: _dummyHistoryRequest,
      );

      expect(result.data, isNull);
      expect(result.statusCode, 404);
    });
  });

  // -------------------------------------------------------------------------
  // pollingOCRProvisionalScore
  // -------------------------------------------------------------------------
  group('pollingOCRProvisionalScore', () {
    test('returns 200 on success with DTO data', () async {
      when(mockDataSource.pollingOCRProvisionalScore(
        jobId: anyNamed('jobId'),
      )).thenAnswer(
        (_) async => const NetworkResponse<OcrProvisionalScoreResponseDTO?>(
          data: OcrProvisionalScoreResponseDTO(),
          statusCode: 200,
          responseHeaders: {},
        ),
      );

      final result =
          await repository.pollingOCRProvisionalScore(jobId: 'job-123');

      expect(result.statusCode, 200);
      expect(result.isSuccess, isTrue);
    });

    test('delegates to data source with correct jobId', () async {
      when(mockDataSource.pollingOCRProvisionalScore(
        jobId: anyNamed('jobId'),
      )).thenAnswer(
        (_) async => const NetworkResponse<OcrProvisionalScoreResponseDTO?>(
          data: null,
          statusCode: 200,
          responseHeaders: {},
        ),
      );

      await repository.pollingOCRProvisionalScore(jobId: 'my-job-id');

      verify(mockDataSource.pollingOCRProvisionalScore(jobId: 'my-job-id'))
          .called(1);
    });
  });
}
