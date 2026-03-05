import 'package:flutter_test/flutter_test.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:healthy_living_shared/src/data/repository/default_search_repository.dart';
import 'package:healthy_living_shared/src/domain/data_source/search_remote_data_source.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:network/network.dart';

@GenerateMocks([SearchRemoteDataSource])
import 'search_repository_test.mocks.dart';

// ---------------------------------------------------------------------------
// Helpers
// ---------------------------------------------------------------------------

const _request = SearchByBarcodeRequest(upcCode: '012345678901');

// ---------------------------------------------------------------------------
// Tests
// ---------------------------------------------------------------------------

void main() {
  late MockSearchRemoteDataSource mockDataSource;
  late SearchRepository repository;

  // Create mocks once so the singleton DefaultSearchRepository always
  // references the same mock instance.  Use `reset` in setUp to clear stubs.
  final sharedMock = MockSearchRemoteDataSource();

  setUpAll(() {
    // Instantiate the singleton with the shared mock.
    DefaultSearchRepository(dataSource: sharedMock);
  });

  setUp(() {
    reset(sharedMock);
    mockDataSource = sharedMock;
    repository = DefaultSearchRepository(dataSource: mockDataSource);
  });

  // -------------------------------------------------------------------------
  // searchProductByBarcode
  // -------------------------------------------------------------------------
  group('searchProductByBarcode', () {
    test('returns 200 status code on successful search', () async {
      when(mockDataSource.searchProductByBarcode(
        searchByBarcodeRequest: anyNamed('searchByBarcodeRequest'),
      )).thenAnswer(
        (_) async => const NetworkResponse<SearchResponseDTO?>(
          data: SearchResponseDTO(),
          statusCode: 200,
          responseHeaders: {},
        ),
      );

      final result = await repository.searchProductByBarcode(
        searchByBarcodeRequest: _request,
      );

      expect(result.statusCode, 200);
      expect(result.isSuccess, isTrue);
    });

    test('returns null data when DTO has no products', () async {
      when(mockDataSource.searchProductByBarcode(
        searchByBarcodeRequest: anyNamed('searchByBarcodeRequest'),
      )).thenAnswer(
        (_) async => const NetworkResponse<SearchResponseDTO?>(
          data: SearchResponseDTO(),
          statusCode: 200,
          responseHeaders: {},
        ),
      );

      final result = await repository.searchProductByBarcode(
        searchByBarcodeRequest: _request,
      );

      // When there are no products across all categories, the result data
      // should be null since the allProducts list would be empty.
      expect(result.data, isNull);
    });

    test('delegates to data source with correct request', () async {
      when(mockDataSource.searchProductByBarcode(
        searchByBarcodeRequest: anyNamed('searchByBarcodeRequest'),
      )).thenAnswer(
        (_) async => const NetworkResponse<SearchResponseDTO?>(
          data: null,
          statusCode: 200,
          responseHeaders: {},
        ),
      );

      await repository.searchProductByBarcode(
        searchByBarcodeRequest: _request,
      );

      verify(mockDataSource.searchProductByBarcode(
        searchByBarcodeRequest: _request,
      )).called(1);
    });

    test('propagates exception thrown by data source', () async {
      when(mockDataSource.searchProductByBarcode(
        searchByBarcodeRequest: anyNamed('searchByBarcodeRequest'),
      )).thenThrow(Exception('network error'));

      expect(
        () => repository.searchProductByBarcode(
          searchByBarcodeRequest: _request,
        ),
        throwsA(isA<Exception>()),
      );
    });

    test('returns error status code on API failure', () async {
      when(mockDataSource.searchProductByBarcode(
        searchByBarcodeRequest: anyNamed('searchByBarcodeRequest'),
      )).thenAnswer(
        (_) async => const NetworkResponse<SearchResponseDTO?>(
          data: null,
          statusCode: 500,
          responseHeaders: {},
          statusMessage: 'Internal Server Error',
        ),
      );

      final result = await repository.searchProductByBarcode(
        searchByBarcodeRequest: _request,
      );

      expect(result.statusCode, 500);
      expect(result.isServerError, isTrue);
    });
  });
}
