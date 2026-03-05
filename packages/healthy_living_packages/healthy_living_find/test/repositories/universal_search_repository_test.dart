import 'package:flutter_test/flutter_test.dart';
import 'package:healthy_living_find/src/data/models/search_response_dto.dart';
import 'package:healthy_living_find/src/data/repository/default_universal_search_repository.dart';
import 'package:healthy_living_find/src/domain/data_source/universal_search_remote_data_source.dart';
import 'package:healthy_living_find/src/domain/models/search_request_model.dart';
import 'package:healthy_living_find/src/domain/models/search_response_model.dart';
import 'package:healthy_living_find/src/domain/repository/universal_search_repository.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:network/network.dart';

@GenerateMocks([UniversalSearchRemoteDataSource])
import 'universal_search_repository_test.mocks.dart';

// ---------------------------------------------------------------------------
// Helpers
// ---------------------------------------------------------------------------

UniversalSearchRepository _makeRepo(
  MockUniversalSearchRemoteDataSource dataSource,
) =>
    DefaultUniversalSearchRepository(dataSource: dataSource);

// ---------------------------------------------------------------------------
// Tests
// ---------------------------------------------------------------------------

void main() {
  late MockUniversalSearchRemoteDataSource mockDataSource;
  late UniversalSearchRepository repository;

  setUp(() {
    mockDataSource = MockUniversalSearchRemoteDataSource();
    repository = _makeRepo(mockDataSource);
  });

  // -------------------------------------------------------------------------
  // universalSearch
  // -------------------------------------------------------------------------
  group('universalSearch', () {
    test('returns 200 on success with mapped domain model', () async {
      when(mockDataSource.universalSearch(
        request: anyNamed('request'),
      )).thenAnswer(
        (_) async => const NetworkResponse<SearchResponseDTO?>(
          data: SearchResponseDTO(),
          statusCode: 200,
          responseHeaders: {},
        ),
      );

      final result = await repository.universalSearch(
        request: const SearchRequestModel(),
      );

      expect(result.statusCode, 200);
      expect(result.isSuccess, isTrue);
    });

    test('returns null data when DTO is null', () async {
      when(mockDataSource.universalSearch(
        request: anyNamed('request'),
      )).thenAnswer(
        (_) async => const NetworkResponse<SearchResponseDTO?>(
          data: null,
          statusCode: 404,
          responseHeaders: {},
        ),
      );

      final result = await repository.universalSearch(
        request: const SearchRequestModel(),
      );

      expect(result.data, isNull);
      expect(result.statusCode, 404);
    });

    test('delegates to data source with correct request', () async {
      const request = SearchRequestModel();

      when(mockDataSource.universalSearch(
        request: anyNamed('request'),
      )).thenAnswer(
        (_) async => const NetworkResponse<SearchResponseDTO?>(
          data: null,
          statusCode: 200,
          responseHeaders: {},
        ),
      );

      await repository.universalSearch(request: request);

      verify(mockDataSource.universalSearch(request: request)).called(1);
    });

    test('propagates exception from data source', () async {
      when(mockDataSource.universalSearch(
        request: anyNamed('request'),
      )).thenThrow(Exception('network error'));

      expect(
        () => repository.universalSearch(
          request: const SearchRequestModel(),
        ),
        throwsA(isA<Exception>()),
      );
    });
  });
}
