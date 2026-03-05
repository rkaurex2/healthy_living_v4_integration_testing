// Universal categories repository unit tests.
//
// DefaultUniversalCategoriesRepository uses a static singleton (`_instance ??=`).
// We create the mock data source ONCE at the top level, initialise the
// singleton in setUpAll(), and reset() the mock in setUp() so that stubs
// are clean for every test.

import 'package:flutter_test/flutter_test.dart';
import 'package:healthy_living_shared/src/data/repository/default_universal_categories_repository.dart';
import 'package:healthy_living_shared/src/domain/data_source/universal_categories_remote_data_source.dart';
import 'package:healthy_living_shared/src/domain/models/browse_categories/browse_universal_categories_dto.dart';
import 'package:healthy_living_shared/src/domain/repository/universal_categories_repository.dart';
import 'package:healthy_living_shared/src/ui/models/browse_categories/browse_universal_categories_model.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:network/network.dart';

@GenerateMocks([UniversalCategoriesRemoteDataSource])
import 'universal_categories_repository_test.mocks.dart';

// ---------------------------------------------------------------------------
// Shared mock - created once, reused across all tests so the singleton
// always references this exact instance.
// ---------------------------------------------------------------------------

final MockUniversalCategoriesRemoteDataSource _mockDataSource =
    MockUniversalCategoriesRemoteDataSource();

// ---------------------------------------------------------------------------
// Tests
// ---------------------------------------------------------------------------

void main() {
  late UniversalCategoriesRepository repository;

  // Initialise the singleton once with the shared mock.
  setUpAll(() {
    repository =
        DefaultUniversalCategoriesRepository(dataSource: _mockDataSource);
  });

  // Reset the mock before each test so stubs don't leak between tests.
  setUp(() {
    reset(_mockDataSource);
  });

  // -------------------------------------------------------------------------
  // universalCategories
  // -------------------------------------------------------------------------
  group('universalCategories', () {
    test('returns 200 on success with mapped domain model', () async {
      when(_mockDataSource.universalCategories(
        isEwgVerified: anyNamed('isEwgVerified'),
      )).thenAnswer(
        (_) async => const NetworkResponse<BrowseUniversalCategoriesDTO?>(
          data: BrowseUniversalCategoriesDTO(),
          statusCode: 200,
          responseHeaders: {},
        ),
      );

      final result =
          await repository.universalCategories(isEWGVerified: true);

      expect(result.statusCode, 200);
      expect(result.isSuccess, isTrue);
    });

    test('returns null data when DTO is null', () async {
      when(_mockDataSource.universalCategories(
        isEwgVerified: anyNamed('isEwgVerified'),
      )).thenAnswer(
        (_) async => const NetworkResponse<BrowseUniversalCategoriesDTO?>(
          data: null,
          statusCode: 404,
          responseHeaders: {},
        ),
      );

      final result =
          await repository.universalCategories(isEWGVerified: false);

      expect(result.data, isNull);
      expect(result.statusCode, 404);
    });

    test('delegates to data source with correct isEwgVerified value', () async {
      when(_mockDataSource.universalCategories(
        isEwgVerified: anyNamed('isEwgVerified'),
      )).thenAnswer(
        (_) async => const NetworkResponse<BrowseUniversalCategoriesDTO?>(
          data: null,
          statusCode: 200,
          responseHeaders: {},
        ),
      );

      await repository.universalCategories(isEWGVerified: true);

      verify(_mockDataSource.universalCategories(isEwgVerified: true))
          .called(1);
    });

    test('propagates exception from data source', () async {
      when(_mockDataSource.universalCategories(
        isEwgVerified: anyNamed('isEwgVerified'),
      )).thenThrow(Exception('network error'));

      expect(
        () => repository.universalCategories(isEWGVerified: true),
        throwsA(isA<Exception>()),
      );
    });
  });
}
