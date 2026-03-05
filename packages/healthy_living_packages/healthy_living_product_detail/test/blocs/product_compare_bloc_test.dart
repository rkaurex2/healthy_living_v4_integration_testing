import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import 'package:healthy_living_product_detail/src/domain/models/cleaner_detail_response_model.dart';
import 'package:healthy_living_product_detail/src/domain/models/product_compare_cleaners_response_data_model.dart';
import 'package:healthy_living_product_detail/src/domain/models/product_compare_cleaners_response_model.dart';
import 'package:healthy_living_product_detail/src/domain/models/product_compare_cosmetic_response_model.dart';
import 'package:healthy_living_product_detail/src/domain/models/product_compare_food_response_model.dart';
import 'package:healthy_living_product_detail/src/domain/models/product_compare_request_model.dart';
import 'package:healthy_living_product_detail/src/domain/repository/product_detail_repository.dart';
import 'package:healthy_living_product_detail/src/ui/bloc/product_compare/product_compare_bloc.dart';
import 'package:healthy_living_product_detail/src/ui/bloc/product_compare/product_compare_event.dart';
import 'package:healthy_living_product_detail/src/ui/bloc/product_compare/product_compare_state.dart';
import 'package:network/network.dart';

// ---------------------------------------------------------------------------
// Manual mock
// ---------------------------------------------------------------------------

class MockProductDetailRepository extends Mock
    implements ProductDetailRepository {
  @override
  Future<NetworkResponse<ProductCompareCleanersResponseModel?>>
      cleanersProductCompare({
    ProductCompareRequestModel? request,
  }) =>
      super.noSuchMethod(
        Invocation.method(
            #cleanersProductCompare, [], {#request: request}),
        returnValue:
            Future<NetworkResponse<ProductCompareCleanersResponseModel?>>.value(
          const NetworkResponse<ProductCompareCleanersResponseModel?>(
            data: null,
            statusCode: 0,
            responseHeaders: {},
          ),
        ),
        returnValueForMissingStub:
            Future<NetworkResponse<ProductCompareCleanersResponseModel?>>.value(
          const NetworkResponse<ProductCompareCleanersResponseModel?>(
            data: null,
            statusCode: 0,
            responseHeaders: {},
          ),
        ),
      ) as Future<NetworkResponse<ProductCompareCleanersResponseModel?>>;

  @override
  Future<NetworkResponse<ProductCompareFoodResponseModel?>>
      foodProductCompare({
    ProductCompareRequestModel? request,
  }) =>
      super.noSuchMethod(
        Invocation.method(#foodProductCompare, [], {#request: request}),
        returnValue:
            Future<NetworkResponse<ProductCompareFoodResponseModel?>>.value(
          const NetworkResponse<ProductCompareFoodResponseModel?>(
            data: null,
            statusCode: 0,
            responseHeaders: {},
          ),
        ),
        returnValueForMissingStub:
            Future<NetworkResponse<ProductCompareFoodResponseModel?>>.value(
          const NetworkResponse<ProductCompareFoodResponseModel?>(
            data: null,
            statusCode: 0,
            responseHeaders: {},
          ),
        ),
      ) as Future<NetworkResponse<ProductCompareFoodResponseModel?>>;

  @override
  Future<NetworkResponse<ProductCompareCosmeticResponseModel?>>
      cosmeticProductCompare({
    ProductCompareRequestModel? request,
  }) =>
      super.noSuchMethod(
        Invocation.method(
            #cosmeticProductCompare, [], {#request: request}),
        returnValue:
            Future<NetworkResponse<ProductCompareCosmeticResponseModel?>>.value(
          const NetworkResponse<ProductCompareCosmeticResponseModel?>(
            data: null,
            statusCode: 0,
            responseHeaders: {},
          ),
        ),
        returnValueForMissingStub:
            Future<NetworkResponse<ProductCompareCosmeticResponseModel?>>.value(
          const NetworkResponse<ProductCompareCosmeticResponseModel?>(
            data: null,
            statusCode: 0,
            responseHeaders: {},
          ),
        ),
      ) as Future<NetworkResponse<ProductCompareCosmeticResponseModel?>>;
}

// ---------------------------------------------------------------------------
// Helpers
// ---------------------------------------------------------------------------

/// A cleaner-type compare request (product_type must map to a valid
/// ProductCategory via ProductCategory.fromName).
final _cleanerRequest = ProductCompareRequestModel(
  ids: const ['100', '200'],
  productType: 'cleaner',
);

final _cleanerSuccessResponse =
    NetworkResponse<ProductCompareCleanersResponseModel?>(
  data: ProductCompareCleanersResponseModel(
    data: ProductCompareCleanersResponseDataModel(
      productType: 'cleaner',
      products: [
        const CleanerDetailResponseModel(productId: 100, name: 'Cleaner A'),
        const CleanerDetailResponseModel(productId: 200, name: 'Cleaner B'),
      ],
    ),
  ),
  statusCode: 200,
  responseHeaders: const {},
);

final _cleanerFailureResponse =
    const NetworkResponse<ProductCompareCleanersResponseModel?>(
  data: null,
  statusCode: 500,
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
    provideDummy<ProductCompareRequestModel>(
      const ProductCompareRequestModel(ids: [], productType: ''),
    );
    provideDummy<NetworkResponse<ProductCompareCleanersResponseModel?>>(
      const NetworkResponse<ProductCompareCleanersResponseModel?>(
        data: null,
        statusCode: 0,
        responseHeaders: {},
      ),
    );
    provideDummy<NetworkResponse<ProductCompareFoodResponseModel?>>(
      const NetworkResponse<ProductCompareFoodResponseModel?>(
        data: null,
        statusCode: 0,
        responseHeaders: {},
      ),
    );
    provideDummy<NetworkResponse<ProductCompareCosmeticResponseModel?>>(
      const NetworkResponse<ProductCompareCosmeticResponseModel?>(
        data: null,
        statusCode: 0,
        responseHeaders: {},
      ),
    );
  });

  setUp(() {
    repository = MockProductDetailRepository();
  });

  ProductCompareBloc buildBloc() => ProductCompareBloc(repository);

  // -------------------------------------------------------------------------
  // Initial state
  // -------------------------------------------------------------------------
  group('ProductCompareBloc - initial state', () {
    test('starts with ProductCompareInitial', () {
      final bloc = buildBloc();
      expect(bloc.state, isA<ProductCompareInitial>());
      bloc.close();
    });
  });

  // -------------------------------------------------------------------------
  // ProductsCompareRequested - cleaner success
  // -------------------------------------------------------------------------
  group('ProductsCompareRequested - cleaner success', () {
    blocTest<ProductCompareBloc, ProductCompareState>(
      'emits [loading, success] when cleaners compare returns success',
      build: () {
        when(repository.cleanersProductCompare(request: anyNamed('request')))
            .thenAnswer((_) async => _cleanerSuccessResponse);
        return buildBloc();
      },
      act: (bloc) => bloc.add(
        ProductCompareEvent.requested(request: _cleanerRequest),
      ),
      expect: () => [
        isA<ProductCompareLoadInProgress>(),
        isA<ProductCompareLoadSuccess>(),
      ],
      verify: (bloc) {
        expect(bloc.cleanerDetailResponseModel, isNotNull);
        expect(bloc.cleanerDetailResponseModel!.length, 2);
      },
    );
  });

  // -------------------------------------------------------------------------
  // ProductsCompareRequested - cleaner failure (non-success response)
  // -------------------------------------------------------------------------
  group('ProductsCompareRequested - cleaner failure', () {
    blocTest<ProductCompareBloc, ProductCompareState>(
      'emits [loading, failure] when cleaners compare returns non-success',
      build: () {
        when(repository.cleanersProductCompare(request: anyNamed('request')))
            .thenAnswer((_) async => _cleanerFailureResponse);
        return buildBloc();
      },
      act: (bloc) => bloc.add(
        ProductCompareEvent.requested(request: _cleanerRequest),
      ),
      expect: () => [
        isA<ProductCompareLoadInProgress>(),
        isA<ProductCompareLoadFailure>(),
      ],
    );
  });

  // -------------------------------------------------------------------------
  // ProductsCompareRequested - cleaner exception
  // -------------------------------------------------------------------------
  group('ProductsCompareRequested - cleaner exception', () {
    blocTest<ProductCompareBloc, ProductCompareState>(
      'emits [loading, failure] when cleaners compare throws an exception',
      build: () {
        when(repository.cleanersProductCompare(request: anyNamed('request')))
            .thenThrow(Exception('Network error'));
        return buildBloc();
      },
      act: (bloc) => bloc.add(
        ProductCompareEvent.requested(request: _cleanerRequest),
      ),
      expect: () => [
        isA<ProductCompareLoadInProgress>(),
        isA<ProductCompareLoadFailure>(),
      ],
    );
  });

  // -------------------------------------------------------------------------
  // ProductsCompareRequested - cleaner null data in success response
  // -------------------------------------------------------------------------
  group('ProductsCompareRequested - null data in success', () {
    blocTest<ProductCompareBloc, ProductCompareState>(
      'emits [loading, failure] when response is success but data is null',
      build: () {
        when(repository.cleanersProductCompare(request: anyNamed('request')))
            .thenAnswer(
          (_) async =>
              const NetworkResponse<ProductCompareCleanersResponseModel?>(
            data: null,
            statusCode: 200,
            responseHeaders: {},
          ),
        );
        return buildBloc();
      },
      act: (bloc) => bloc.add(
        ProductCompareEvent.requested(request: _cleanerRequest),
      ),
      expect: () => [
        isA<ProductCompareLoadInProgress>(),
        isA<ProductCompareLoadFailure>(),
      ],
    );
  });

  // -------------------------------------------------------------------------
  // ProductsCompareRequested - food success path
  // -------------------------------------------------------------------------
  group('ProductsCompareRequested - food failure path', () {
    blocTest<ProductCompareBloc, ProductCompareState>(
      'emits [loading, failure] when food compare returns non-success',
      build: () {
        when(repository.foodProductCompare(request: anyNamed('request')))
            .thenAnswer(
          (_) async => const NetworkResponse(
            data: null,
            statusCode: 500,
            responseHeaders: <String, List<String>>{},
          ),
        );
        return buildBloc();
      },
      act: (bloc) => bloc.add(
        ProductCompareEvent.requested(
          request: const ProductCompareRequestModel(
            ids: ['300', '400'],
            productType: 'food',
          ),
        ),
      ),
      expect: () => [
        isA<ProductCompareLoadInProgress>(),
        isA<ProductCompareLoadFailure>(),
      ],
    );
  });

  // -------------------------------------------------------------------------
  // ProductsCompareRequested - cosmetic/personal_care failure path
  // -------------------------------------------------------------------------
  group('ProductsCompareRequested - cosmetic failure path', () {
    blocTest<ProductCompareBloc, ProductCompareState>(
      'emits [loading, failure] when cosmetic compare returns non-success',
      build: () {
        when(repository.cosmeticProductCompare(request: anyNamed('request')))
            .thenAnswer(
          (_) async => const NetworkResponse(
            data: null,
            statusCode: 500,
            responseHeaders: <String, List<String>>{},
          ),
        );
        return buildBloc();
      },
      act: (bloc) => bloc.add(
        ProductCompareEvent.requested(
          request: const ProductCompareRequestModel(
            ids: ['500', '600'],
            productType: 'personal_care',
          ),
        ),
      ),
      expect: () => [
        isA<ProductCompareLoadInProgress>(),
        isA<ProductCompareLoadFailure>(),
      ],
    );
  });
}
