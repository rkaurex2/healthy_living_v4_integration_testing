import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:healthy_living_shared/src/ui/bloc/filter/filter_bloc.dart';
import 'package:healthy_living_shared/src/ui/bloc/filter/filter_events.dart';
import 'package:healthy_living_shared/src/ui/bloc/filter/filter_state.dart';
import 'package:network/network.dart';

// ---------------------------------------------------------------------------
// Manual mocks
// ---------------------------------------------------------------------------

class MockFilterUtils extends Mock implements FilterUtils {
  @override
  SortOption getDefaultSortOption() =>
      super.noSuchMethod(
        Invocation.method(#getDefaultSortOption, []),
        returnValue: SortOption(
          index: 0,
          type: SortType.hazardScoreBestToWorst,
          sortBy: SortBy.hazardScore,
          sortOrder: SortOrder.asc,
        ),
        returnValueForMissingStub: SortOption(
          index: 0,
          type: SortType.hazardScoreBestToWorst,
          sortBy: SortBy.hazardScore,
          sortOrder: SortOrder.asc,
        ),
      ) as SortOption;
}

class MockIngredientPreferenceRepository extends Mock
    implements IngredientPreferenceRepository {
  @override
  Future<NetworkResponse<CuratedIngredientPreferenceListsResponseModel?>>
      getCuratedIngredientPreferenceLists({
    CuratedIngredientPreferenceListsRequestModel? request,
  }) =>
          (super.noSuchMethod(
            Invocation.method(
              #getCuratedIngredientPreferenceLists,
              [],
              {#request: request},
            ),
            returnValue: Future<
                NetworkResponse<
                    CuratedIngredientPreferenceListsResponseModel?>>.value(
              const NetworkResponse<
                  CuratedIngredientPreferenceListsResponseModel?>(
                data: null,
                statusCode: 0,
                responseHeaders: {},
              ),
            ),
            returnValueForMissingStub: Future<
                NetworkResponse<
                    CuratedIngredientPreferenceListsResponseModel?>>.value(
              const NetworkResponse<
                  CuratedIngredientPreferenceListsResponseModel?>(
                data: null,
                statusCode: 0,
                responseHeaders: {},
              ),
            ),
          ) as Future<
              NetworkResponse<
                  CuratedIngredientPreferenceListsResponseModel?>>);
}

class MockIngredientPreferenceAnalytics extends Mock
    implements IngredientPreferenceAnalytics {
  @override
  Future<void> logIngredientsPreferenceFilter({
    String? filterName,
    bool? enabled,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #logIngredientsPreferenceFilter,
          [],
          {#filterName: filterName, #enabled: enabled},
        ),
        returnValue: Future<void>.value(),
        returnValueForMissingStub: Future<void>.value(),
      ) as Future<void>);

  @override
  Future<void> logIngredientsPreferenceCuratedList({
    CuratedIngredientPreferenceListModel? list,
    int? index,
    String? action,
    String? source,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #logIngredientsPreferenceCuratedList,
          [],
          {
            #list: list,
            #index: index,
            #action: action,
            #source: source,
          },
        ),
        returnValue: Future<void>.value(),
        returnValueForMissingStub: Future<void>.value(),
      ) as Future<void>);
}

// ---------------------------------------------------------------------------
// Helpers
// ---------------------------------------------------------------------------

SortOption _defaultSortOption() => SortOption(
      index: 0,
      type: SortType.hazardScoreBestToWorst,
      sortBy: SortBy.hazardScore,
      sortOrder: SortOrder.asc,
    );

SortOption _alphabeticalSort() => SortOption(
      index: 2,
      type: SortType.alphabeticalAToZ,
      sortBy: SortBy.name,
      sortOrder: SortOrder.asc,
    );

FilterBloc _buildBloc({
  required MockFilterUtils filterUtils,
  required MockIngredientPreferenceRepository ingredientPrefRepo,
  required MockIngredientPreferenceAnalytics ingredientPrefAnalytics,
}) =>
    FilterBloc(
      filterUtils: filterUtils,
      ingredientPreferenceRepository: ingredientPrefRepo,
      ingredientPreferenceAnalytics: ingredientPrefAnalytics,
    );

void _stubDefaults({
  required MockFilterUtils filterUtils,
  required MockIngredientPreferenceAnalytics analytics,
}) {
  when(filterUtils.getDefaultSortOption()).thenReturn(_defaultSortOption());
  when(analytics.logIngredientsPreferenceFilter(
    filterName: anyNamed('filterName'),
    enabled: anyNamed('enabled'),
  )).thenAnswer((_) async {});
  when(analytics.logIngredientsPreferenceCuratedList(
    list: anyNamed('list'),
    index: anyNamed('index'),
    action: anyNamed('action'),
    source: anyNamed('source'),
  )).thenAnswer((_) async {});
}

// ---------------------------------------------------------------------------
// Tests
// ---------------------------------------------------------------------------

void main() {
  late MockFilterUtils filterUtils;
  late MockIngredientPreferenceRepository ingredientPrefRepo;
  late MockIngredientPreferenceAnalytics ingredientPrefAnalytics;

  setUpAll(() {
    provideDummy<CuratedIngredientPreferenceListModel>(
      const CuratedIngredientPreferenceListModel(),
    );
    provideDummy<CuratedIngredientPreferenceListsRequestModel>(
      const CuratedIngredientPreferenceListsRequestModel(),
    );
    provideDummy<NetworkResponse<CuratedIngredientPreferenceListsResponseModel?>>(
      const NetworkResponse<CuratedIngredientPreferenceListsResponseModel?>(
        data: null,
        statusCode: 0,
        responseHeaders: {},
      ),
    );
  });

  setUp(() {
    filterUtils = MockFilterUtils();
    ingredientPrefRepo = MockIngredientPreferenceRepository();
    ingredientPrefAnalytics = MockIngredientPreferenceAnalytics();
    _stubDefaults(
      filterUtils: filterUtils,
      analytics: ingredientPrefAnalytics,
    );
  });

  // -------------------------------------------------------------------------
  // Initial state
  // -------------------------------------------------------------------------
  group('FilterBloc - initial state', () {
    test('starts with FilterInitialState', () {
      final bloc = _buildBloc(
        filterUtils: filterUtils,
        ingredientPrefRepo: ingredientPrefRepo,
        ingredientPrefAnalytics: ingredientPrefAnalytics,
      );
      expect(bloc.state, isA<FilterInitialState>());
      bloc.close();
    });
  });

  // -------------------------------------------------------------------------
  // SetSortFilter
  // -------------------------------------------------------------------------
  group('SetSortFilter', () {
    blocTest<FilterBloc, FilterState>(
      'emits SortFilterUpdated with the selected sort option',
      build: () => _buildBloc(
        filterUtils: filterUtils,
        ingredientPrefRepo: ingredientPrefRepo,
        ingredientPrefAnalytics: ingredientPrefAnalytics,
      ),
      act: (bloc) => bloc.add(
        FilterEvent.setSortFilter(sortOption: _alphabeticalSort()),
      ),
      expect: () => [
        isA<SortFilterUpdated>().having(
          (s) => s.selectedSortOption.type,
          'sortType',
          SortType.alphabeticalAToZ,
        ),
      ],
      verify: (bloc) {
        expect(bloc.updatedSortOption.type, SortType.alphabeticalAToZ);
      },
    );

    blocTest<FilterBloc, FilterState>(
      'emits SortFilterUpdated even when same sort option is set again',
      build: () => _buildBloc(
        filterUtils: filterUtils,
        ingredientPrefRepo: ingredientPrefRepo,
        ingredientPrefAnalytics: ingredientPrefAnalytics,
      ),
      act: (bloc) => bloc.add(
        FilterEvent.setSortFilter(sortOption: _defaultSortOption()),
      ),
      expect: () => [isA<SortFilterUpdated>()],
    );
  });

  // -------------------------------------------------------------------------
  // SetHazardScoreFilter
  // -------------------------------------------------------------------------
  group('SetHazardScoreFilter', () {
    blocTest<FilterBloc, FilterState>(
      'emits HazardScoreFilterUpdated with low hazard level',
      build: () => _buildBloc(
        filterUtils: filterUtils,
        ingredientPrefRepo: ingredientPrefRepo,
        ingredientPrefAnalytics: ingredientPrefAnalytics,
      ),
      act: (bloc) => bloc.add(
        const FilterEvent.setHazardScoreFilter(hazardLevel: HazardLevel.low),
      ),
      expect: () => [
        isA<HazardScoreFilterUpdated>().having(
          (s) => s.selectedHazardScore,
          'hazardLevel',
          HazardLevel.low,
        ),
      ],
      verify: (bloc) {
        expect(bloc.updatedHazardLevel, HazardLevel.low);
      },
    );

    blocTest<FilterBloc, FilterState>(
      'emits HazardScoreFilterUpdated with moderate hazard level',
      build: () => _buildBloc(
        filterUtils: filterUtils,
        ingredientPrefRepo: ingredientPrefRepo,
        ingredientPrefAnalytics: ingredientPrefAnalytics,
      ),
      act: (bloc) => bloc.add(
        const FilterEvent.setHazardScoreFilter(
          hazardLevel: HazardLevel.moderate,
        ),
      ),
      expect: () => [
        isA<HazardScoreFilterUpdated>().having(
          (s) => s.selectedHazardScore,
          'hazardLevel',
          HazardLevel.moderate,
        ),
      ],
    );
  });

  // -------------------------------------------------------------------------
  // SetCategoryFilter
  // -------------------------------------------------------------------------
  group('SetCategoryFilter', () {
    blocTest<FilterBloc, FilterState>(
      'emits CategoryFilterUpdated with provided categories',
      build: () => _buildBloc(
        filterUtils: filterUtils,
        ingredientPrefRepo: ingredientPrefRepo,
        ingredientPrefAnalytics: ingredientPrefAnalytics,
      ),
      act: (bloc) {
        final categories = [
          const CategoryUiItem(
            id: 1,
            name: 'Body',
            count: 10,
            subCategories: [],
          ),
        ];
        bloc.add(FilterEvent.setCategoryFilter(selectedCategories: categories));
      },
      expect: () => [isA<CategoryFilterUpdated>()],
    );
  });

  // -------------------------------------------------------------------------
  // AllFiltersCleared
  // -------------------------------------------------------------------------
  group('AllFiltersCleared', () {
    blocTest<FilterBloc, FilterState>(
      'emits AllFiltersClearSuccess and resets sort and hazard to defaults',
      build: () => _buildBloc(
        filterUtils: filterUtils,
        ingredientPrefRepo: ingredientPrefRepo,
        ingredientPrefAnalytics: ingredientPrefAnalytics,
      ),
      act: (bloc) {
        // First set some filters, then clear them
        bloc.add(
          FilterEvent.setSortFilter(sortOption: _alphabeticalSort()),
        );
        bloc.add(
          const FilterEvent.setHazardScoreFilter(
            hazardLevel: HazardLevel.low,
          ),
        );
        bloc.add(const FilterEvent.allFiltersCleared());
      },
      expect: () => [
        isA<SortFilterUpdated>(),
        isA<HazardScoreFilterUpdated>(),
        isA<AllFiltersClearSuccess>(),
      ],
      verify: (bloc) {
        expect(
          bloc.updatedSortOption.type,
          SortType.hazardScoreBestToWorst,
        );
        expect(bloc.updatedHazardLevel, HazardLevel.high);
      },
    );
  });

  // -------------------------------------------------------------------------
  // SetIngredientPreferencesFilter
  // -------------------------------------------------------------------------
  group('SetIngredientPreferencesFilter', () {
    blocTest<FilterBloc, FilterState>(
      'emits IngredientPreferencesFilterUpdated',
      build: () => _buildBloc(
        filterUtils: filterUtils,
        ingredientPrefRepo: ingredientPrefRepo,
        ingredientPrefAnalytics: ingredientPrefAnalytics,
      ),
      act: (bloc) => bloc.add(
        FilterEvent.setIngredientPreferencesFilter(
          ingredientPreferencesFilter: IngredientPreferencesFilterModel(
            isAvoided: true,
            isPreferred: false,
          ),
        ),
      ),
      expect: () => [isA<IngredientPreferencesFilterUpdated>()],
      verify: (_) {
        verify(ingredientPrefAnalytics.logIngredientsPreferenceFilter(
          filterName: anyNamed('filterName'),
          enabled: anyNamed('enabled'),
        )).called(2);
      },
    );
  });

  // -------------------------------------------------------------------------
  // FilterInitialized - basic (non-premium, skips ingredient preferences)
  // -------------------------------------------------------------------------
  group('FilterInitialized - basic', () {
    blocTest<FilterBloc, FilterState>(
      'emits BasicFiltersInitialised for non-premium user',
      build: () => _buildBloc(
        filterUtils: filterUtils,
        ingredientPrefRepo: ingredientPrefRepo,
        ingredientPrefAnalytics: ingredientPrefAnalytics,
      ),
      act: (bloc) => bloc.add(
        const FilterEvent.initialized(
          productCategory: ProductCategory.personalCare,
          initialFilters: null,
          categoryAggregations: [],
          brandAggregations: [],
          isPremiumUser: false,
        ),
      ),
      expect: () => [isA<BasicFiltersInitialised>()],
    );
  });

  // -------------------------------------------------------------------------
  // FilterInitialized - premium user success
  // -------------------------------------------------------------------------
  group('FilterInitialized - premium user', () {
    blocTest<FilterBloc, FilterState>(
      'emits [basicFiltersInitialised, loading, success] for premium user',
      build: () {
        when(ingredientPrefRepo.getCuratedIngredientPreferenceLists(
          request: anyNamed('request'),
        )).thenAnswer(
          (_) async =>
              const NetworkResponse<CuratedIngredientPreferenceListsResponseModel?>(
            data: CuratedIngredientPreferenceListsResponseModel(
              curatedIngredientPreferenceLists: [],
            ),
            statusCode: 200,
            responseHeaders: {},
          ),
        );
        return _buildBloc(
          filterUtils: filterUtils,
          ingredientPrefRepo: ingredientPrefRepo,
          ingredientPrefAnalytics: ingredientPrefAnalytics,
        );
      },
      act: (bloc) => bloc.add(
        const FilterEvent.initialized(
          productCategory: ProductCategory.personalCare,
          initialFilters: null,
          categoryAggregations: [],
          brandAggregations: [],
          isPremiumUser: true,
        ),
      ),
      expect: () => [
        isA<BasicFiltersInitialised>(),
        isA<IngredientPreferencesFilterLoadInProgress>(),
        isA<IngredientPreferencesFilterLoadSuccess>(),
      ],
    );

    blocTest<FilterBloc, FilterState>(
      'emits [basicFiltersInitialised, loading, failure] when repo fails',
      build: () {
        when(ingredientPrefRepo.getCuratedIngredientPreferenceLists(
          request: anyNamed('request'),
        )).thenAnswer(
          (_) async =>
              const NetworkResponse<CuratedIngredientPreferenceListsResponseModel?>(
            data: null,
            statusCode: 500,
            responseHeaders: {},
          ),
        );
        return _buildBloc(
          filterUtils: filterUtils,
          ingredientPrefRepo: ingredientPrefRepo,
          ingredientPrefAnalytics: ingredientPrefAnalytics,
        );
      },
      act: (bloc) => bloc.add(
        const FilterEvent.initialized(
          productCategory: ProductCategory.personalCare,
          initialFilters: null,
          categoryAggregations: [],
          brandAggregations: [],
          isPremiumUser: true,
        ),
      ),
      expect: () => [
        isA<BasicFiltersInitialised>(),
        isA<IngredientPreferencesFilterLoadInProgress>(),
        isA<IngredientPreferencesFilterLoadFailure>(),
      ],
    );

    blocTest<FilterBloc, FilterState>(
      'emits [basicFiltersInitialised, loading, failure] when repo throws',
      build: () {
        when(ingredientPrefRepo.getCuratedIngredientPreferenceLists(
          request: anyNamed('request'),
        )).thenThrow(Exception('Network error'));
        return _buildBloc(
          filterUtils: filterUtils,
          ingredientPrefRepo: ingredientPrefRepo,
          ingredientPrefAnalytics: ingredientPrefAnalytics,
        );
      },
      act: (bloc) => bloc.add(
        const FilterEvent.initialized(
          productCategory: ProductCategory.personalCare,
          initialFilters: null,
          categoryAggregations: [],
          brandAggregations: [],
          isPremiumUser: true,
        ),
      ),
      expect: () => [
        isA<BasicFiltersInitialised>(),
        isA<IngredientPreferencesFilterLoadInProgress>(),
        isA<IngredientPreferencesFilterLoadFailure>(),
      ],
    );
  });
}
