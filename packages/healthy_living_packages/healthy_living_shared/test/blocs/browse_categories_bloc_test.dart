import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:healthy_living_shared/src/domain/repository/universal_categories_repository.dart';
import 'package:healthy_living_shared/src/ui/bloc/browse_category/browse_categories_bloc.dart';
import 'package:network/network.dart';

// ---------------------------------------------------------------------------
// Manual mock
// ---------------------------------------------------------------------------

class MockUniversalCategoriesRepository extends Mock
    implements UniversalCategoriesRepository {
  @override
  Future<NetworkResponse<BrowseUniversalCategoriesModel?>> universalCategories({
    required bool isEWGVerified,
  }) =>
      super.noSuchMethod(
        Invocation.method(#universalCategories, [], {#isEWGVerified: isEWGVerified}),
        returnValue: Future.value(
          const NetworkResponse<BrowseUniversalCategoriesModel?>(
            data: null,
            statusCode: 0,
            responseHeaders: {},
          ),
        ),
      ) as Future<NetworkResponse<BrowseUniversalCategoriesModel?>>;
}

// ---------------------------------------------------------------------------
// Helpers
// ---------------------------------------------------------------------------

final _successResponse =
    NetworkResponse<BrowseUniversalCategoriesModel?>(
  data: const BrowseUniversalCategoriesModel(
    personalCare: [
      BrowseMainCategoryModel(id: 1, name: 'Shampoo', productCount: 10),
    ],
    cleaners: [
      BrowseMainCategoryModel(id: 2, name: 'All-Purpose', productCount: 5),
    ],
    food: [
      BrowseMainCategoryModel(id: 3, name: 'Snacks', productCount: 20),
    ],
  ),
  statusCode: 200,
  responseHeaders: const {},
);

final _failureResponse =
    NetworkResponse<BrowseUniversalCategoriesModel?>(
  data: null,
  statusCode: 500,
  responseHeaders: const {},
);

// ---------------------------------------------------------------------------
// Tests
// ---------------------------------------------------------------------------

void main() {
  late MockUniversalCategoriesRepository repository;

  setUpAll(() {
    provideDummy<NetworkResponse<BrowseUniversalCategoriesModel?>>(
      const NetworkResponse<BrowseUniversalCategoriesModel?>(
        data: null,
        statusCode: 0,
        responseHeaders: {},
      ),
    );
  });

  setUp(() {
    repository = MockUniversalCategoriesRepository();
  });

  BrowseCategoriesBloc buildBloc() =>
      BrowseCategoriesBloc(findRepository: repository);

  // -------------------------------------------------------------------------
  // Initial state
  // -------------------------------------------------------------------------
  group('BrowseCategoriesBloc - initial state', () {
    test('starts with BrowseCategoriesInitial', () {
      final bloc = buildBloc();
      expect(bloc.state, isA<BrowseCategoriesInitial>());
      bloc.close();
    });
  });

  // -------------------------------------------------------------------------
  // BrowseCategoriesInitialize - success (non-verified)
  // -------------------------------------------------------------------------
  group('BrowseCategoriesInitialize - success', () {
    blocTest<BrowseCategoriesBloc, BrowseCategoriesState>(
      'emits [loading, success] when repository returns success for non-verified',
      build: () {
        when(repository.universalCategories(isEWGVerified: false))
            .thenAnswer((_) async => _successResponse);
        return buildBloc();
      },
      act: (bloc) => bloc.add(
        const BrowseCategoriesEvent.browseCategoriesInitialize(
          isEwgVerified: false,
        ),
      ),
      expect: () => [
        isA<BrowseCategoriesLoading>(),
        isA<BrowseCategoriesSuccess>(),
      ],
      verify: (bloc) {
        expect(bloc.personalCare, isNotNull);
        expect(bloc.cleaners, isNotNull);
        expect(bloc.food, isNotNull);
      },
    );

    blocTest<BrowseCategoriesBloc, BrowseCategoriesState>(
      'emits [loading, success] when repository returns success for verified',
      build: () {
        when(repository.universalCategories(isEWGVerified: true))
            .thenAnswer((_) async => _successResponse);
        return buildBloc();
      },
      act: (bloc) => bloc.add(
        const BrowseCategoriesEvent.browseCategoriesInitialize(
          isEwgVerified: true,
        ),
      ),
      expect: () => [
        isA<BrowseCategoriesLoading>(),
        isA<BrowseCategoriesSuccess>(),
      ],
      verify: (bloc) {
        expect(bloc.verifiedPersonalCare, isNotNull);
        expect(bloc.verifiedCleaners, isNotNull);
        expect(bloc.verifiedFood, isNotNull);
      },
    );
  });

  // -------------------------------------------------------------------------
  // BrowseCategoriesInitialize - failure (non-success response)
  // -------------------------------------------------------------------------
  group('BrowseCategoriesInitialize - failure', () {
    blocTest<BrowseCategoriesBloc, BrowseCategoriesState>(
      'emits [loading, failure] when repository returns non-success response',
      build: () {
        when(repository.universalCategories(isEWGVerified: false))
            .thenAnswer((_) async => _failureResponse);
        return buildBloc();
      },
      act: (bloc) => bloc.add(
        const BrowseCategoriesEvent.browseCategoriesInitialize(
          isEwgVerified: false,
        ),
      ),
      expect: () => [
        isA<BrowseCategoriesLoading>(),
        isA<BrowseCategoriesFailure>(),
      ],
    );
  });

  // -------------------------------------------------------------------------
  // BrowseCategoriesInitialize - exception
  // -------------------------------------------------------------------------
  group('BrowseCategoriesInitialize - exception', () {
    blocTest<BrowseCategoriesBloc, BrowseCategoriesState>(
      'emits [loading, failure] when repository throws an exception',
      build: () {
        when(repository.universalCategories(isEWGVerified: false))
            .thenThrow(Exception('Network error'));
        return buildBloc();
      },
      act: (bloc) => bloc.add(
        const BrowseCategoriesEvent.browseCategoriesInitialize(
          isEwgVerified: false,
        ),
      ),
      expect: () => [
        isA<BrowseCategoriesLoading>(),
        isA<BrowseCategoriesFailure>(),
      ],
    );
  });

  // -------------------------------------------------------------------------
  // BrowseCategoriesInitialize - null data in success response
  // -------------------------------------------------------------------------
  group('BrowseCategoriesInitialize - null data', () {
    blocTest<BrowseCategoriesBloc, BrowseCategoriesState>(
      'emits [loading, failure] when response is success but data is null',
      build: () {
        when(repository.universalCategories(isEWGVerified: false))
            .thenAnswer(
          (_) async => const NetworkResponse<BrowseUniversalCategoriesModel?>(
            data: null,
            statusCode: 200,
            responseHeaders: {},
          ),
        );
        return buildBloc();
      },
      act: (bloc) => bloc.add(
        const BrowseCategoriesEvent.browseCategoriesInitialize(
          isEwgVerified: false,
        ),
      ),
      expect: () => [
        isA<BrowseCategoriesLoading>(),
        isA<BrowseCategoriesFailure>(),
      ],
    );
  });
}
