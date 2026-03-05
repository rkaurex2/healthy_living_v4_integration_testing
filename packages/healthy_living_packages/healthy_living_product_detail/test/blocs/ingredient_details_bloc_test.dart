import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import 'package:healthy_living_product_detail/src/domain/models/ingredient_details/ingredient_info_request_model.dart';
import 'package:healthy_living_product_detail/src/domain/models/ingredient_details/ingredient_info_response_model.dart';
import 'package:healthy_living_product_detail/src/domain/repository/product_detail_repository.dart';
import 'package:healthy_living_product_detail/src/ui/bloc/ingredient_details/ingredient_details_bloc.dart';
import 'package:healthy_living_product_detail/src/ui/bloc/ingredient_details/ingredient_details_event.dart';
import 'package:healthy_living_product_detail/src/ui/bloc/ingredient_details/ingredient_details_state.dart';
import 'package:network/network.dart';

// ---------------------------------------------------------------------------
// Manual mock
// ---------------------------------------------------------------------------

class MockProductDetailRepository extends Mock
    implements ProductDetailRepository {
  @override
  Future<NetworkResponse<IngredientInfoResponseModel?>> getIngredientInfo({
    IngredientInfoRequestModel? request,
  }) =>
      super.noSuchMethod(
        Invocation.method(#getIngredientInfo, [], {#request: request}),
        returnValue: Future<NetworkResponse<IngredientInfoResponseModel?>>.value(
          const NetworkResponse<IngredientInfoResponseModel?>(
            data: null,
            statusCode: 0,
            responseHeaders: {},
          ),
        ),
        returnValueForMissingStub:
            Future<NetworkResponse<IngredientInfoResponseModel?>>.value(
          const NetworkResponse<IngredientInfoResponseModel?>(
            data: null,
            statusCode: 0,
            responseHeaders: {},
          ),
        ),
      ) as Future<NetworkResponse<IngredientInfoResponseModel?>>;
}

// ---------------------------------------------------------------------------
// Helpers
// ---------------------------------------------------------------------------

const _testIngredientId = '12345';

final _successResponse = NetworkResponse<IngredientInfoResponseModel?>(
  data: const IngredientInfoResponseModel(
    id: 12345,
    name: 'Sodium Lauryl Sulfate',
    description: 'A common surfactant used in cleaning products.',
    countCleaners: 100,
    countCosmetics: 200,
    gradeWorst: 'F',
    gradeBest: 'A',
    skinDeepWebIngredientUrl: 'https://example.com/skindeep/12345',
    cleanerWebIngredientUrl: 'https://example.com/cleaner/12345',
  ),
  statusCode: 200,
  responseHeaders: const {},
);

final _failureResponse = const NetworkResponse<IngredientInfoResponseModel?>(
  data: null,
  statusCode: 404,
  responseHeaders: {},
);

// ---------------------------------------------------------------------------
// Tests
// ---------------------------------------------------------------------------

void main() {
  late MockProductDetailRepository repository;

  setUpAll(() {
    // Register dummies so that `anyNamed('request')` (which returns Null) can
    // satisfy the non-nullable parameter type expected by the mock.
    provideDummy<IngredientInfoRequestModel>(
      const IngredientInfoRequestModel(id: ''),
    );
    provideDummy<NetworkResponse<IngredientInfoResponseModel?>>(
      const NetworkResponse<IngredientInfoResponseModel?>(
        data: null,
        statusCode: 0,
        responseHeaders: {},
      ),
    );
  });

  setUp(() {
    repository = MockProductDetailRepository();
  });

  IngredientDetailsBloc buildBloc() =>
      IngredientDetailsBloc(productDetailRepository: repository);

  // -------------------------------------------------------------------------
  // Initial state
  // -------------------------------------------------------------------------
  group('IngredientDetailsBloc - initial state', () {
    test('starts with IngredientDetailsInitial', () {
      final bloc = buildBloc();
      expect(bloc.state, isA<IngredientDetailsInitial>());
      bloc.close();
    });
  });

  // -------------------------------------------------------------------------
  // IngredientDetailsRequested - success (200)
  // -------------------------------------------------------------------------
  group('IngredientDetailsRequested - success', () {
    blocTest<IngredientDetailsBloc, IngredientDetailsState>(
      'emits [loading, success] when repository returns successful response',
      build: () {
        when(repository.getIngredientInfo(request: anyNamed('request')))
            .thenAnswer((_) async => _successResponse);
        return buildBloc();
      },
      act: (bloc) => bloc.add(
        const IngredientDetailsEvent.requested(id: _testIngredientId),
      ),
      expect: () => [
        isA<IngredientDetailsLoadInProgress>(),
        isA<IngredientDetailsLoadSuccess>().having(
          (s) => s.data.id,
          'data.id',
          12345,
        ),
      ],
      verify: (_) {
        verify(repository.getIngredientInfo(request: anyNamed('request')))
            .called(1);
      },
    );
  });

  // -------------------------------------------------------------------------
  // IngredientDetailsRequested - failure (non-200)
  // -------------------------------------------------------------------------
  group('IngredientDetailsRequested - failure', () {
    blocTest<IngredientDetailsBloc, IngredientDetailsState>(
      'emits [loading, failure] when repository returns non-success response',
      build: () {
        when(repository.getIngredientInfo(request: anyNamed('request')))
            .thenAnswer((_) async => _failureResponse);
        return buildBloc();
      },
      act: (bloc) => bloc.add(
        const IngredientDetailsEvent.requested(id: _testIngredientId),
      ),
      expect: () => [
        isA<IngredientDetailsLoadInProgress>(),
        isA<IngredientDetailsLoadFailure>(),
      ],
    );

    blocTest<IngredientDetailsBloc, IngredientDetailsState>(
      'emits [loading, failure] when response is success but data is null',
      build: () {
        when(repository.getIngredientInfo(request: anyNamed('request')))
            .thenAnswer(
          (_) async => const NetworkResponse<IngredientInfoResponseModel?>(
            data: null,
            statusCode: 200,
            responseHeaders: {},
          ),
        );
        return buildBloc();
      },
      act: (bloc) => bloc.add(
        const IngredientDetailsEvent.requested(id: _testIngredientId),
      ),
      expect: () => [
        isA<IngredientDetailsLoadInProgress>(),
        isA<IngredientDetailsLoadFailure>(),
      ],
    );
  });

  // -------------------------------------------------------------------------
  // IngredientDetailsRequested - exception
  // -------------------------------------------------------------------------
  group('IngredientDetailsRequested - exception', () {
    blocTest<IngredientDetailsBloc, IngredientDetailsState>(
      'emits [loading, failure] when repository throws an exception',
      build: () {
        when(repository.getIngredientInfo(request: anyNamed('request')))
            .thenThrow(
          NetworkConnectionException(
            isTimeout: true,
            message: 'Timeout',
            statusCode: 0,
            originalError: '',
          ),
        );
        return buildBloc();
      },
      act: (bloc) => bloc.add(
        const IngredientDetailsEvent.requested(id: _testIngredientId),
      ),
      expect: () => [
        isA<IngredientDetailsLoadInProgress>(),
        isA<IngredientDetailsLoadFailure>(),
      ],
    );

    blocTest<IngredientDetailsBloc, IngredientDetailsState>(
      'emits [loading, failure] when repository throws a generic exception',
      build: () {
        when(repository.getIngredientInfo(request: anyNamed('request')))
            .thenThrow(Exception('Something went wrong'));
        return buildBloc();
      },
      act: (bloc) => bloc.add(
        const IngredientDetailsEvent.requested(id: _testIngredientId),
      ),
      expect: () => [
        isA<IngredientDetailsLoadInProgress>(),
        isA<IngredientDetailsLoadFailure>(),
      ],
    );
  });
}
