import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:network/network.dart';
import 'package:healthy_living_account/src/ui/blocs/ingredient_preference/ingredient_preference_bloc.dart';
import 'package:healthy_living_account/src/ui/blocs/ingredient_preference/ingredient_preference_event.dart';
import 'package:healthy_living_account/src/ui/blocs/ingredient_preference/ingredient_preference_state.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

import '../mock/mock_helpers.mocks.dart';

// ---------------------------------------------------------------------------
// Helpers
// ---------------------------------------------------------------------------

/// A successful [NetworkResponse] wrapping [data] with status 200.
NetworkResponse<T> _successResponse<T>(T data) => NetworkResponse<T>(
      data: data,
      statusCode: 200,
      responseHeaders: {},
    );

/// A successful [NetworkResponse] wrapping nullable [data] with status 200.
NetworkResponse<T?> _successNullableResponse<T>(T? data) =>
    NetworkResponse<T?>(
      data: data,
      statusCode: 200,
      responseHeaders: {},
    );

/// Stubs the default mock responses so the bloc does not throw on
/// unexpected calls.
void _stubDefaults(
  MockIngredientPreferenceRepository repo,
  MockKeyValueStorage storage,
  MockIngredientPreferenceAnalytics analytics,
) {
  // Storage
  when(storage.setBool(any, any)).thenAnswer((_) async => true);
  when(storage.getBool(any)).thenAnswer((_) async => null);

  // Analytics - fire-and-forget, just complete the futures.
  when(analytics.logIngredientsPreferenceStart(
    source: anyNamed('source'),
  )).thenAnswer((_) async {});

  when(analytics.logIngredientsPreferenceSet(
    ingredientId: anyNamed('ingredientId'),
    userSelected: anyNamed('userSelected'),
    listType: anyNamed('listType'),
    index: anyNamed('index'),
    action: anyNamed('action'),
  )).thenAnswer((_) async {});

  when(analytics.logIngredientsPreferenceCuratedList(
    list: anyNamed('list'),
    index: anyNamed('index'),
    action: anyNamed('action'),
    source: anyNamed('source'),
  )).thenAnswer((_) async {});

  // Repository - default stubs returning success with empty data.
  when(repo.getCuratedIngredientPreferences(
    request: anyNamed('request'),
  )).thenAnswer(
    (_) async => _successNullableResponse<List<CuratedIngredientPreferenceListModel?>?>(
      <CuratedIngredientPreferenceListModel>[],
    ),
  );

  when(repo.saveIngredientPreferences(
    request: anyNamed('request'),
  )).thenAnswer(
    (_) async => _successResponse<CuratedIngredientPreferenceListModel>(
      const CuratedIngredientPreferenceListModel(),
    ),
  );

  when(repo.deleteIngredientPreferences(
    userSelectId: anyNamed('userSelectId'),
  )).thenAnswer(
    (_) async => _successResponse<String>(''),
  );

  when(repo.getActivePreferences(
    request: anyNamed('request'),
  )).thenAnswer(
    (_) async => _successNullableResponse<List<CuratedIngredientPreferenceListModel?>?>(
      <CuratedIngredientPreferenceListModel>[],
    ),
  );
}

void main() {
  late MockIngredientPreferenceRepository mockRepo;
  late MockKeyValueStorage mockStorage;
  late MockIngredientPreferenceAnalytics mockAnalytics;

  setUp(() {
    mockRepo = MockIngredientPreferenceRepository();
    mockStorage = MockKeyValueStorage();
    mockAnalytics = MockIngredientPreferenceAnalytics();
    _stubDefaults(mockRepo, mockStorage, mockAnalytics);
  });

  IngredientPreferenceBloc buildBloc() => IngredientPreferenceBloc(
        ingredientPreferenceRepository: mockRepo,
        keyValueStorage: mockStorage,
        ingredientPreferenceAnalytics: mockAnalytics,
      );

  group('IngredientPreferenceBloc', () {
    // -----------------------------------------------------------------------
    // Initial state
    // -----------------------------------------------------------------------
    test('initial state is IngredientPreferenceInitial', () {
      final bloc = buildBloc();
      expect(bloc.state, isA<IngredientPreferenceInitial>());
      bloc.close();
    });

    // -----------------------------------------------------------------------
    // FtUxViewed
    // -----------------------------------------------------------------------
    group('FtUxViewed', () {
      blocTest<IngredientPreferenceBloc, IngredientPreferenceState>(
        'sets isPremiumFtUxViewed in storage and emits ViewedFtUx',
        build: buildBloc,
        act: (bloc) => bloc.add(
          const IngredientPreferenceEvent.ftUxViewed(),
        ),
        expect: () => [
          isA<ViewedFtUx>(),
        ],
        verify: (_) {
          verify(
            mockStorage.setBool(
              HealthyLivingSharedKeyValueConstant.isPremiumFtUxViewed,
              true,
            ),
          ).called(1);
        },
      );
    });

    // -----------------------------------------------------------------------
    // SaveIngredientPreferences
    // -----------------------------------------------------------------------
    group('SaveIngredientPreferences', () {
      blocTest<IngredientPreferenceBloc, IngredientPreferenceState>(
        'emits [SavePreferenceLoadInProgress, SavePreferenceLoadSuccess] '
        'on success',
        build: buildBloc,
        setUp: () {
          when(mockRepo.saveIngredientPreferences(
            request: anyNamed('request'),
          )).thenAnswer(
            (_) async => _successResponse<CuratedIngredientPreferenceListModel>(
              const CuratedIngredientPreferenceListModel(),
            ),
          );
        },
        act: (bloc) => bloc.add(
          const IngredientPreferenceEvent.saveIngredientPreferences(
            id: 1,
            userSelected: true,
            listType: 'avoid',
            index: 0,
          ),
        ),
        expect: () => [
          isA<SavePreferenceLoadInProgress>()
              .having((s) => s.listType, 'listType', 'avoid')
              .having((s) => s.index, 'index', 0),
          isA<SavePreferenceLoadSuccess>()
              .having((s) => s.listType, 'listType', 'avoid')
              .having((s) => s.index, 'index', 0),
        ],
        verify: (_) {
          verify(mockRepo.saveIngredientPreferences(
            request: anyNamed('request'),
          )).called(1);
          verify(mockAnalytics.logIngredientsPreferenceSet(
            ingredientId: 1,
            userSelected: true,
            listType: 'avoid',
            index: 0,
            action: StringConstants.actionSelected,
          )).called(1);
        },
      );

      blocTest<IngredientPreferenceBloc, IngredientPreferenceState>(
        'emits [SavePreferenceLoadInProgress, SavePreferenceFail] '
        'when repository throws',
        build: buildBloc,
        setUp: () {
          when(mockRepo.saveIngredientPreferences(
            request: anyNamed('request'),
          )).thenThrow(Exception('save failed'));
        },
        act: (bloc) => bloc.add(
          const IngredientPreferenceEvent.saveIngredientPreferences(
            id: 2,
            userSelected: false,
            listType: 'prefer',
            index: 1,
          ),
        ),
        expect: () => [
          isA<SavePreferenceLoadInProgress>(),
          isA<SavePreferenceFail>(),
        ],
      );
    });

    // -----------------------------------------------------------------------
    // DeleteIngredientPreferences
    // -----------------------------------------------------------------------
    group('DeleteIngredientPreferences', () {
      blocTest<IngredientPreferenceBloc, IngredientPreferenceState>(
        'emits [SavePreferenceLoadInProgress, SavePreferenceLoadSuccess] '
        'on successful delete',
        build: buildBloc,
        setUp: () {
          when(mockRepo.deleteIngredientPreferences(
            userSelectId: anyNamed('userSelectId'),
          )).thenAnswer(
            (_) async => _successResponse<String>('deleted'),
          );
        },
        act: (bloc) => bloc.add(
          const IngredientPreferenceEvent.deleteIngredientPreferences(
            id: 10,
            userSelectionId: 5,
            userSelected: true,
            listType: 'avoid',
            index: 2,
          ),
        ),
        expect: () => [
          isA<SavePreferenceLoadInProgress>()
              .having((s) => s.listType, 'listType', 'avoid')
              .having((s) => s.index, 'index', 2),
          isA<SavePreferenceLoadSuccess>()
              .having((s) => s.listType, 'listType', 'avoid')
              .having((s) => s.index, 'index', 2),
        ],
        verify: (_) {
          verify(mockRepo.deleteIngredientPreferences(
            userSelectId: 5,
          )).called(1);
          verify(mockAnalytics.logIngredientsPreferenceSet(
            ingredientId: 10,
            userSelected: true,
            listType: 'avoid',
            index: 2,
            action: StringConstants.actionUnselected,
          )).called(1);
        },
      );

      blocTest<IngredientPreferenceBloc, IngredientPreferenceState>(
        'emits [SavePreferenceLoadInProgress, DeletePreferenceLoadFail] '
        'when repository throws',
        build: buildBloc,
        setUp: () {
          when(mockRepo.deleteIngredientPreferences(
            userSelectId: anyNamed('userSelectId'),
          )).thenThrow(Exception('delete failed'));
        },
        act: (bloc) => bloc.add(
          const IngredientPreferenceEvent.deleteIngredientPreferences(
            id: 10,
            userSelectionId: 5,
            userSelected: false,
            listType: 'prefer',
            index: 3,
          ),
        ),
        expect: () => [
          isA<SavePreferenceLoadInProgress>(),
          isA<DeletePreferenceLoadFail>(),
        ],
      );
    });

    // -----------------------------------------------------------------------
    // IngredientPreferencesListFetched
    // -----------------------------------------------------------------------
    group('IngredientPreferencesListFetched', () {
      blocTest<IngredientPreferenceBloc, IngredientPreferenceState>(
        'emits [IngredientPreferenceLoadInProgress, LoadIngredientPreference] '
        'on success',
        build: buildBloc,
        setUp: () {
          final avoidItem = const CuratedIngredientPreferenceListModel(
            id: 1,
            name: 'Parabens',
            category: 'food',
            listType: 'Avoid',
            userSelected: true,
          );
          final preferItem = const CuratedIngredientPreferenceListModel(
            id: 2,
            name: 'Vitamin C',
            category: 'food',
            listType: 'Prefer',
            userSelected: false,
          );

          when(mockRepo.getCuratedIngredientPreferences(
            request: anyNamed('request'),
          )).thenAnswer(
            (_) async => _successNullableResponse<List<CuratedIngredientPreferenceListModel?>?>(
              [avoidItem, preferItem],
            ),
          );
        },
        act: (bloc) => bloc.add(
          const IngredientPreferenceEvent.ingredientPreferencesListFetched(
            category: 'food',
            listType: null,
          ),
        ),
        expect: () => [
          isA<IngredientPreferenceLoadInProgress>(),
          isA<LoadIngredientPreference>()
              .having((s) => s.avoidList.length, 'avoidList length', 1)
              .having((s) => s.preferList.length, 'preferList length', 1),
        ],
      );

      blocTest<IngredientPreferenceBloc, IngredientPreferenceState>(
        'emits [IngredientPreferenceLoadInProgress, LoadIngredientPreference] '
        'with empty lists when API returns no items',
        build: buildBloc,
        setUp: () {
          when(mockRepo.getCuratedIngredientPreferences(
            request: anyNamed('request'),
          )).thenAnswer(
            (_) async => _successNullableResponse<List<CuratedIngredientPreferenceListModel?>?>(
              <CuratedIngredientPreferenceListModel>[],
            ),
          );
        },
        act: (bloc) => bloc.add(
          const IngredientPreferenceEvent.ingredientPreferencesListFetched(
            category: 'food',
            listType: 'avoid',
          ),
        ),
        expect: () => [
          isA<IngredientPreferenceLoadInProgress>(),
          isA<LoadIngredientPreference>()
              .having((s) => s.avoidList, 'avoidList', isEmpty)
              .having((s) => s.preferList, 'preferList', isEmpty),
        ],
      );

      blocTest<IngredientPreferenceBloc, IngredientPreferenceState>(
        'emits [IngredientPreferenceLoadInProgress, IngredientPreferenceLoadFail] '
        'when repository throws',
        build: buildBloc,
        setUp: () {
          when(mockRepo.getCuratedIngredientPreferences(
            request: anyNamed('request'),
          )).thenThrow(Exception('network error'));
        },
        act: (bloc) => bloc.add(
          const IngredientPreferenceEvent.ingredientPreferencesListFetched(
            category: 'food',
            listType: null,
          ),
        ),
        expect: () => [
          isA<IngredientPreferenceLoadInProgress>(),
          isA<IngredientPreferenceLoadFail>(),
        ],
      );

      blocTest<IngredientPreferenceBloc, IngredientPreferenceState>(
        'does not emit IngredientPreferenceLoadInProgress when '
        'refreshListWithOutLoader is true',
        build: buildBloc,
        setUp: () {
          when(mockRepo.getCuratedIngredientPreferences(
            request: anyNamed('request'),
          )).thenAnswer(
            (_) async => _successNullableResponse<List<CuratedIngredientPreferenceListModel?>?>(
              <CuratedIngredientPreferenceListModel>[],
            ),
          );
        },
        act: (bloc) => bloc.add(
          const IngredientPreferenceEvent.ingredientPreferencesListFetched(
            category: 'food',
            listType: null,
            refreshListWithOutLoader: true,
          ),
        ),
        expect: () => [
          isA<LoadIngredientPreference>(),
        ],
      );
    });
  });
}
