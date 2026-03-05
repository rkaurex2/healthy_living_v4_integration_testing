import 'package:flutter_test/flutter_test.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:healthy_living_shared/src/data/repository/default_ingredient_preference_repository.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:network/network.dart';

@GenerateMocks([IngredientPreferenceRemoteDataSource])
import 'ingredient_preference_repository_test.mocks.dart';

// ---------------------------------------------------------------------------
// Helpers
// ---------------------------------------------------------------------------

/// Dummy [CuratedIngredientUserSelection] for required `userSelection` param.
const _dummyUserSelection = CuratedIngredientUserSelection(
  listId: 'test-list-id',
  enabled: true,
  priority: 1,
);

// ---------------------------------------------------------------------------
// Tests
// ---------------------------------------------------------------------------

void main() {
  late MockIngredientPreferenceRemoteDataSource mockDataSource;
  late IngredientPreferenceRepository repository;

  // Create mocks once so the singleton DefaultIngredientPreferenceRepository
  // always references the same mock instance.  Use `reset` in setUp to clear
  // stubs.
  final sharedMock = MockIngredientPreferenceRemoteDataSource();

  setUpAll(() {
    // Instantiate the singleton with the shared mock.
    DefaultIngredientPreferenceRepository(remoteDataSource: sharedMock);
  });

  setUp(() {
    reset(sharedMock);
    mockDataSource = sharedMock;
    repository = DefaultIngredientPreferenceRepository(
      remoteDataSource: mockDataSource,
    );
  });

  // -------------------------------------------------------------------------
  // getCuratedIngredientPreferenceLists
  // -------------------------------------------------------------------------
  group('getCuratedIngredientPreferenceLists', () {
    test('returns 200 on success with mapped domain model', () async {
      when(mockDataSource.getCuratedIngredientPreferenceLists(
        request: anyNamed('request'),
      )).thenAnswer(
        (_) async =>
            const NetworkResponse<CuratedIngredientPreferenceListsResponseDto?>(
          data: CuratedIngredientPreferenceListsResponseDto(),
          statusCode: 200,
          responseHeaders: {},
        ),
      );

      final result = await repository.getCuratedIngredientPreferenceLists(
        request: const CuratedIngredientPreferenceListsRequestModel(),
      );

      expect(result.statusCode, 200);
      expect(result.isSuccess, isTrue);
    });

    test('delegates to data source', () async {
      when(mockDataSource.getCuratedIngredientPreferenceLists(
        request: anyNamed('request'),
      )).thenAnswer(
        (_) async =>
            const NetworkResponse<CuratedIngredientPreferenceListsResponseDto?>(
          data: null,
          statusCode: 200,
          responseHeaders: {},
        ),
      );

      await repository.getCuratedIngredientPreferenceLists(
        request: const CuratedIngredientPreferenceListsRequestModel(),
      );

      verify(mockDataSource.getCuratedIngredientPreferenceLists(
        request: anyNamed('request'),
      )).called(1);
    });
  });

  // -------------------------------------------------------------------------
  // getCuratedIngredientPreferences
  // -------------------------------------------------------------------------
  group('getCuratedIngredientPreferences', () {
    test('returns 200 on success', () async {
      when(mockDataSource.getCuratedIngredientPreferences(
        request: anyNamed('request'),
      )).thenAnswer(
        (_) async =>
            const NetworkResponse<CuratedIngredientPreferenceListsResponseDto?>(
          data: CuratedIngredientPreferenceListsResponseDto(),
          statusCode: 200,
          responseHeaders: {},
        ),
      );

      final result = await repository.getCuratedIngredientPreferences(
        request: const CuratedIngredientPreferenceListsRequestModel(),
      );

      expect(result.statusCode, 200);
      expect(result.isSuccess, isTrue);
    });

    test('propagates exception from data source', () async {
      when(mockDataSource.getCuratedIngredientPreferences(
        request: anyNamed('request'),
      )).thenThrow(Exception('network error'));

      expect(
        () => repository.getCuratedIngredientPreferences(
          request: const CuratedIngredientPreferenceListsRequestModel(),
        ),
        throwsA(isA<Exception>()),
      );
    });
  });

  // -------------------------------------------------------------------------
  // getActivePreferences
  // -------------------------------------------------------------------------
  group('getActivePreferences', () {
    test('returns 200 on success', () async {
      when(mockDataSource.getActivePreferences(
        request: anyNamed('request'),
      )).thenAnswer(
        (_) async =>
            const NetworkResponse<CuratedIngredientPreferenceListsResponseDto?>(
          data: CuratedIngredientPreferenceListsResponseDto(),
          statusCode: 200,
          responseHeaders: {},
        ),
      );

      final result = await repository.getActivePreferences(
        request: const CuratedIngredientPreferenceListsRequestModel(),
      );

      expect(result.statusCode, 200);
      expect(result.isSuccess, isTrue);
    });

    test('returns null data when DTO is null', () async {
      when(mockDataSource.getActivePreferences(
        request: anyNamed('request'),
      )).thenAnswer(
        (_) async =>
            const NetworkResponse<CuratedIngredientPreferenceListsResponseDto?>(
          data: null,
          statusCode: 200,
          responseHeaders: {},
        ),
      );

      final result = await repository.getActivePreferences(
        request: const CuratedIngredientPreferenceListsRequestModel(),
      );

      expect(result.data, isNull);
    });
  });

  // -------------------------------------------------------------------------
  // saveIngredientPreferences
  // -------------------------------------------------------------------------
  group('saveIngredientPreferences', () {
    test('returns response on success', () async {
      when(mockDataSource.saveIngredientPreferences(
        request: anyNamed('request'),
      )).thenAnswer(
        (_) async => const NetworkResponse<CuratedIngredientPreferenceListDto?>(
          data: CuratedIngredientPreferenceListDto(),
          statusCode: 200,
          responseHeaders: {},
        ),
      );

      final result = await repository.saveIngredientPreferences(
        request: const SaveCuratedIngredientPreferencesRequestModel(
          userSelection: _dummyUserSelection,
        ),
      );

      expect(result, isNotNull);
      expect(result!.statusCode, 200);
    });

    test('delegates to data source', () async {
      when(mockDataSource.saveIngredientPreferences(
        request: anyNamed('request'),
      )).thenAnswer(
        (_) async => const NetworkResponse<CuratedIngredientPreferenceListDto?>(
          data: null,
          statusCode: 200,
          responseHeaders: {},
        ),
      );

      await repository.saveIngredientPreferences(
        request: const SaveCuratedIngredientPreferencesRequestModel(
          userSelection: _dummyUserSelection,
        ),
      );

      verify(mockDataSource.saveIngredientPreferences(
        request: anyNamed('request'),
      )).called(1);
    });
  });

  // -------------------------------------------------------------------------
  // deleteIngredientPreferences
  // -------------------------------------------------------------------------
  group('deleteIngredientPreferences', () {
    test('returns response on success', () async {
      when(mockDataSource.deleteIngredientPreferences(
        userSelectId: anyNamed('userSelectId'),
      )).thenAnswer(
        (_) async => const NetworkResponse<String?>(
          data: 'deleted',
          statusCode: 200,
          responseHeaders: {},
        ),
      );

      final result = await repository.deleteIngredientPreferences(
        userSelectId: 42,
      );

      expect(result, isNotNull);
      expect(result!.statusCode, 200);
    });

    test('delegates to data source with correct userSelectId', () async {
      when(mockDataSource.deleteIngredientPreferences(
        userSelectId: anyNamed('userSelectId'),
      )).thenAnswer(
        (_) async => const NetworkResponse<String?>(
          data: null,
          statusCode: 200,
          responseHeaders: {},
        ),
      );

      await repository.deleteIngredientPreferences(userSelectId: 99);

      verify(mockDataSource.deleteIngredientPreferences(userSelectId: 99))
          .called(1);
    });

    test('propagates exception from data source', () async {
      when(mockDataSource.deleteIngredientPreferences(
        userSelectId: anyNamed('userSelectId'),
      )).thenThrow(Exception('error'));

      expect(
        () => repository.deleteIngredientPreferences(userSelectId: 1),
        throwsA(isA<Exception>()),
      );
    });
  });
}
