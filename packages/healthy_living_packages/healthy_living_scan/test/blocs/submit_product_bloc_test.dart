import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import 'package:healthy_living_scan/src/ui/bloc/submit_product/submit_product_bloc.dart';
import 'package:healthy_living_scan/src/ui/bloc/submit_product/submit_product_event.dart';
import 'package:healthy_living_scan/src/ui/bloc/submit_product/submit_product_state.dart';
import 'package:healthy_living_scan/src/data/models/product_submissions_dto.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:network/network.dart';

import '../mock/mock_helpers.mocks.dart';

// ---------------------------------------------------------------------------
// Helpers
// ---------------------------------------------------------------------------

/// Minimal params object — only required fields are provided; optional fields
/// remain null so the bloc falls through to their null-safe defaults.
SubmitProductInfoParams _infoModel({
  ProductCategory productCategoryType = ProductCategory.cleaner,
  String productName = 'Test Product',
  String brandName = 'Test Brand',
  String ingredients = 'water, glycerin',
  String? submissionId,
  String? jobId,
}) =>
    SubmitProductInfoParams(
      productCategoryType: productCategoryType,
      productName: productName,
      brandName: brandName,
      ingredients: ingredients,
      submissionId: submissionId,
      jobId: jobId,
    );

const _submissionId = 'sub_001';

/// A successful DTO response — non-null data so the bloc considers it a hit.
NetworkResponse<ProductSubmissionsDTO?> _successResponse() =>
    NetworkResponse<ProductSubmissionsDTO?>(
      data: const ProductSubmissionsDTO(
        message: 'Submitted',
        submissionId: 1,
        ocrJobId: null,
        status: 'pending',
        imageIds: [],
      ),
      statusCode: 200,
      responseHeaders: {},
    );

/// A success-status response where data is null — used to test personalCare
/// non-polling branch without triggering the real async polling loop.
NetworkResponse<ProductSubmissionsDTO?> _successNullDataResponse() =>
    const NetworkResponse<ProductSubmissionsDTO?>(
      data: null,
      statusCode: 200,
      responseHeaders: {},
    );

/// A non-2xx error response.
NetworkResponse<ProductSubmissionsDTO?> _failureResponse({
  int statusCode = 422,
}) =>
    NetworkResponse<ProductSubmissionsDTO?>(
      data: null,
      statusCode: statusCode,
      responseHeaders: {},
    );

NetworkResponse<List<String>?> _sunscreenIngredientsSuccess() =>
    NetworkResponse<List<String>?>(
      data: const ['zinc oxide', 'titanium dioxide'],
      statusCode: 200,
      responseHeaders: {},
    );

NetworkResponse<List<String>?> _sunscreenIngredientsFailure() =>
    const NetworkResponse<List<String>?>(
      data: null,
      statusCode: 500,
      responseHeaders: {},
    );

void main() {
  late MockUploadPictureRemoteDataSource mockUploadDataSource;

  setUp(() {
    mockUploadDataSource = MockUploadPictureRemoteDataSource();
  });

  SubmitProductBloc buildBloc() =>
      SubmitProductBloc(uploadDataSource: mockUploadDataSource);

  group('SubmitProductBloc', () {
    // -----------------------------------------------------------------------
    // Initial state
    // -----------------------------------------------------------------------
    test('initial state is SubmitProductInitial', () {
      final bloc = buildBloc();
      expect(bloc.state, isA<SubmitProductInitial>());
      bloc.close();
    });

    test('productCategory accessor is null before SubmitProductStarted', () {
      final bloc = buildBloc();
      expect(bloc.productCategory, isNull);
      bloc.close();
    });

    // -----------------------------------------------------------------------
    // SubmitProductStarted — sets category, emits no state
    // -----------------------------------------------------------------------
    group('SubmitProductStarted', () {
      blocTest<SubmitProductBloc, SubmitProductState>(
        'sets productCategory to personalCare without emitting state',
        build: buildBloc,
        act: (bloc) =>
            bloc.add(const SubmitProductEvent.started(
              productCategory: ProductCategory.personalCare,
            )),
        expect: () => <SubmitProductState>[],
        verify: (bloc) =>
            expect(bloc.productCategory, ProductCategory.personalCare),
      );

      blocTest<SubmitProductBloc, SubmitProductState>(
        'sets productCategory to cleaner without emitting state',
        build: buildBloc,
        act: (bloc) =>
            bloc.add(const SubmitProductEvent.started(
              productCategory: ProductCategory.cleaner,
            )),
        expect: () => <SubmitProductState>[],
        verify: (bloc) =>
            expect(bloc.productCategory, ProductCategory.cleaner),
      );

      blocTest<SubmitProductBloc, SubmitProductState>(
        'sets productCategory to food without emitting state',
        build: buildBloc,
        act: (bloc) =>
            bloc.add(const SubmitProductEvent.started(
              productCategory: ProductCategory.food,
            )),
        expect: () => <SubmitProductState>[],
        verify: (bloc) => expect(bloc.productCategory, ProductCategory.food),
      );

      blocTest<SubmitProductBloc, SubmitProductState>(
        'sets productCategory to sunscreen without emitting state',
        build: buildBloc,
        act: (bloc) =>
            bloc.add(const SubmitProductEvent.started(
              productCategory: ProductCategory.sunscreen,
            )),
        expect: () => <SubmitProductState>[],
        verify: (bloc) =>
            expect(bloc.productCategory, ProductCategory.sunscreen),
      );
    });

    // -----------------------------------------------------------------------
    // SubmitProduct — personalCare category
    // -----------------------------------------------------------------------
    group('SubmitProduct – personalCare', () {
      blocTest<SubmitProductBloc, SubmitProductState>(
        'emits [LoadInstantScore, SubmitProductError] when API returns 200 with null data',
        build: buildBloc,
        setUp: () {
          when(
            mockUploadDataSource.submitProduct(
              request: anyNamed('request'),
              submissionsId: anyNamed('submissionsId'),
            ),
          ).thenAnswer((_) async => _successNullDataResponse());
        },
        act: (bloc) async {
          bloc.add(const SubmitProductEvent.started(
            productCategory: ProductCategory.personalCare,
          ));
          bloc.add(SubmitProductEvent.submitProduct(
            submissionId: _submissionId,
            infoUIModel: _infoModel(
              productCategoryType: ProductCategory.personalCare,
            ),
          ));
        },
        expect: () => [
          isA<LoadInstantScore>(),
          isA<SubmitProductError>(),
        ],
      );

      blocTest<SubmitProductBloc, SubmitProductState>(
        'emits [LoadInstantScore, SubmitProductError] when API returns non-2xx',
        build: buildBloc,
        setUp: () {
          when(
            mockUploadDataSource.submitProduct(
              request: anyNamed('request'),
              submissionsId: anyNamed('submissionsId'),
            ),
          ).thenAnswer((_) async => _failureResponse());
        },
        act: (bloc) async {
          bloc.add(const SubmitProductEvent.started(
            productCategory: ProductCategory.personalCare,
          ));
          bloc.add(SubmitProductEvent.submitProduct(
            submissionId: _submissionId,
            infoUIModel: _infoModel(
              productCategoryType: ProductCategory.personalCare,
            ),
          ));
        },
        expect: () => [
          isA<LoadInstantScore>(),
          isA<SubmitProductError>(),
        ],
      );

      blocTest<SubmitProductBloc, SubmitProductState>(
        'emits [LoadInstantScore, SubmitProductFailure] when API throws',
        build: buildBloc,
        setUp: () {
          when(
            mockUploadDataSource.submitProduct(
              request: anyNamed('request'),
              submissionsId: anyNamed('submissionsId'),
            ),
          ).thenThrow(Exception('Network error'));
        },
        act: (bloc) async {
          bloc.add(const SubmitProductEvent.started(
            productCategory: ProductCategory.personalCare,
          ));
          bloc.add(SubmitProductEvent.submitProduct(
            submissionId: _submissionId,
            infoUIModel: _infoModel(
              productCategoryType: ProductCategory.personalCare,
            ),
          ));
        },
        expect: () => [
          isA<LoadInstantScore>(),
          isA<SubmitProductFailure>(),
        ],
      );

      blocTest<SubmitProductBloc, SubmitProductState>(
        'calls submitProduct with correct submissionsId from event.submissionId when infoUIModel.submissionId is null',
        build: buildBloc,
        setUp: () {
          when(
            mockUploadDataSource.submitProduct(
              request: anyNamed('request'),
              submissionsId: anyNamed('submissionsId'),
            ),
          ).thenAnswer((_) async => _successNullDataResponse());
        },
        act: (bloc) async {
          bloc.add(const SubmitProductEvent.started(
            productCategory: ProductCategory.personalCare,
          ));
          bloc.add(SubmitProductEvent.submitProduct(
            submissionId: 'fallback_id',
            infoUIModel: _infoModel(
              productCategoryType: ProductCategory.personalCare,
              submissionId: null,
            ),
          ));
        },
        verify: (_) {
          verify(
            mockUploadDataSource.submitProduct(
              request: anyNamed('request'),
              submissionsId: 'fallback_id',
            ),
          ).called(1);
        },
      );
    });

    // -----------------------------------------------------------------------
    // SubmitProduct — cleaner category
    // -----------------------------------------------------------------------
    group('SubmitProduct – cleaner', () {
      blocTest<SubmitProductBloc, SubmitProductState>(
        'emits [SubmitProductLoading, SubmitProductSuccess] on successful upload',
        build: buildBloc,
        setUp: () {
          when(
            mockUploadDataSource.submitProduct(
              request: anyNamed('request'),
              submissionsId: anyNamed('submissionsId'),
            ),
          ).thenAnswer((_) async => _successResponse());
        },
        act: (bloc) async {
          bloc.add(const SubmitProductEvent.started(
            productCategory: ProductCategory.cleaner,
          ));
          bloc.add(SubmitProductEvent.submitProduct(
            submissionId: _submissionId,
            infoUIModel: _infoModel(),
          ));
        },
        expect: () => [
          isA<SubmitProductLoading>(),
          isA<SubmitProductSuccess>(),
        ],
      );

      blocTest<SubmitProductBloc, SubmitProductState>(
        'emits [SubmitProductLoading, SubmitProductError] when API returns 422',
        build: buildBloc,
        setUp: () {
          when(
            mockUploadDataSource.submitProduct(
              request: anyNamed('request'),
              submissionsId: anyNamed('submissionsId'),
            ),
          ).thenAnswer((_) async => _failureResponse());
        },
        act: (bloc) async {
          bloc.add(const SubmitProductEvent.started(
            productCategory: ProductCategory.cleaner,
          ));
          bloc.add(SubmitProductEvent.submitProduct(
            submissionId: _submissionId,
            infoUIModel: _infoModel(),
          ));
        },
        expect: () => [
          isA<SubmitProductLoading>(),
          isA<SubmitProductError>(),
        ],
      );

      blocTest<SubmitProductBloc, SubmitProductState>(
        'emits [SubmitProductLoading, SubmitProductFailure] when API throws',
        build: buildBloc,
        setUp: () {
          when(
            mockUploadDataSource.submitProduct(
              request: anyNamed('request'),
              submissionsId: anyNamed('submissionsId'),
            ),
          ).thenThrow(Exception('Timeout'));
        },
        act: (bloc) async {
          bloc.add(const SubmitProductEvent.started(
            productCategory: ProductCategory.cleaner,
          ));
          bloc.add(SubmitProductEvent.submitProduct(
            submissionId: _submissionId,
            infoUIModel: _infoModel(),
          ));
        },
        expect: () => [
          isA<SubmitProductLoading>(),
          isA<SubmitProductFailure>(),
        ],
      );
    });

    // -----------------------------------------------------------------------
    // SubmitProduct — food category
    // -----------------------------------------------------------------------
    group('SubmitProduct – food', () {
      blocTest<SubmitProductBloc, SubmitProductState>(
        'emits [SubmitProductLoading, SubmitProductSuccess] on successful upload',
        build: buildBloc,
        setUp: () {
          when(
            mockUploadDataSource.submitProduct(
              request: anyNamed('request'),
              submissionsId: anyNamed('submissionsId'),
            ),
          ).thenAnswer((_) async => _successResponse());
        },
        act: (bloc) async {
          bloc.add(const SubmitProductEvent.started(
            productCategory: ProductCategory.food,
          ));
          bloc.add(SubmitProductEvent.submitProduct(
            submissionId: _submissionId,
            infoUIModel: _infoModel(productCategoryType: ProductCategory.food),
          ));
        },
        expect: () => [
          isA<SubmitProductLoading>(),
          isA<SubmitProductSuccess>(),
        ],
      );

      blocTest<SubmitProductBloc, SubmitProductState>(
        'emits [SubmitProductLoading, SubmitProductError] when food upload returns null data',
        build: buildBloc,
        setUp: () {
          when(
            mockUploadDataSource.submitProduct(
              request: anyNamed('request'),
              submissionsId: anyNamed('submissionsId'),
            ),
          ).thenAnswer((_) async => _successNullDataResponse());
        },
        act: (bloc) async {
          bloc.add(const SubmitProductEvent.started(
            productCategory: ProductCategory.food,
          ));
          bloc.add(SubmitProductEvent.submitProduct(
            submissionId: _submissionId,
            infoUIModel: _infoModel(productCategoryType: ProductCategory.food),
          ));
        },
        expect: () => [
          isA<SubmitProductLoading>(),
          isA<SubmitProductError>(),
        ],
      );
    });

    // -----------------------------------------------------------------------
    // SubmitProduct — sunscreen category
    // -----------------------------------------------------------------------
    group('SubmitProduct – sunscreen', () {
      blocTest<SubmitProductBloc, SubmitProductState>(
        'emits [SubmitProductLoading, SubmitProductSuccess] on successful upload',
        build: buildBloc,
        setUp: () {
          when(
            mockUploadDataSource.submitProduct(
              request: anyNamed('request'),
              submissionsId: anyNamed('submissionsId'),
            ),
          ).thenAnswer((_) async => _successResponse());
        },
        act: (bloc) async {
          bloc.add(const SubmitProductEvent.started(
            productCategory: ProductCategory.sunscreen,
          ));
          bloc.add(SubmitProductEvent.submitProduct(
            submissionId: _submissionId,
            infoUIModel: _infoModel(
              productCategoryType: ProductCategory.sunscreen,
            ),
          ));
        },
        expect: () => [
          isA<SubmitProductLoading>(),
          isA<SubmitProductSuccess>(),
        ],
      );

      blocTest<SubmitProductBloc, SubmitProductState>(
        'emits [SubmitProductLoading, SubmitProductFailure] when sunscreen upload throws',
        build: buildBloc,
        setUp: () {
          when(
            mockUploadDataSource.submitProduct(
              request: anyNamed('request'),
              submissionsId: anyNamed('submissionsId'),
            ),
          ).thenThrow(
            NetworkServerSideException(
              message: 'Server Error',
              statusCode: 500,
              originalError: 'error',
            ),
          );
        },
        act: (bloc) async {
          bloc.add(const SubmitProductEvent.started(
            productCategory: ProductCategory.sunscreen,
          ));
          bloc.add(SubmitProductEvent.submitProduct(
            submissionId: _submissionId,
            infoUIModel: _infoModel(
              productCategoryType: ProductCategory.sunscreen,
            ),
          ));
        },
        expect: () => [
          isA<SubmitProductLoading>(),
          isA<SubmitProductFailure>(),
        ],
      );
    });

    // -----------------------------------------------------------------------
    // ShowSkipToInstantScoreCard / HideSkipToInstantScoreCard
    // -----------------------------------------------------------------------
    group('ShowSkipToInstantScoreCard', () {
      blocTest<SubmitProductBloc, SubmitProductState>(
        'emits ShowSkipToInstantScoreCardState',
        build: buildBloc,
        act: (bloc) =>
            bloc.add(const SubmitProductEvent.showSkipToInstantScoreCard()),
        expect: () => [isA<ShowSkipToInstantScoreCardState>()],
      );
    });

    group('HideSkipToInstantScoreCard', () {
      blocTest<SubmitProductBloc, SubmitProductState>(
        'emits SubmitProductInitial',
        build: buildBloc,
        act: (bloc) =>
            bloc.add(const SubmitProductEvent.hideSkipToInstantScoreCard()),
        expect: () => [isA<SubmitProductInitial>()],
      );
    });

    // -----------------------------------------------------------------------
    // FetchSunscreenActiveIngredients
    // -----------------------------------------------------------------------
    group('FetchSunscreenActiveIngredients', () {
      blocTest<SubmitProductBloc, SubmitProductState>(
        'emits SunscreenActiveIngredientsLoaded on success',
        build: buildBloc,
        setUp: () {
          when(
            mockUploadDataSource.getSunscreenActiveIngredients(),
          ).thenAnswer((_) async => _sunscreenIngredientsSuccess());
        },
        act: (bloc) =>
            bloc.add(const SubmitProductEvent.fetchSunscreenActiveIngredients()),
        expect: () => [
          isA<SunscreenActiveIngredientsLoaded>().having(
            (s) => s.ingredients,
            'ingredients',
            containsAll(['zinc oxide', 'titanium dioxide']),
          ),
        ],
      );

      blocTest<SubmitProductBloc, SubmitProductState>(
        'emits SubmitProductError when API returns 500 with null data',
        build: buildBloc,
        setUp: () {
          when(
            mockUploadDataSource.getSunscreenActiveIngredients(),
          ).thenAnswer((_) async => _sunscreenIngredientsFailure());
        },
        act: (bloc) =>
            bloc.add(const SubmitProductEvent.fetchSunscreenActiveIngredients()),
        expect: () => [isA<SubmitProductError>()],
      );

      blocTest<SubmitProductBloc, SubmitProductState>(
        'emits SubmitProductFailure when API throws',
        build: buildBloc,
        setUp: () {
          when(
            mockUploadDataSource.getSunscreenActiveIngredients(),
          ).thenThrow(Exception('No network'));
        },
        act: (bloc) =>
            bloc.add(const SubmitProductEvent.fetchSunscreenActiveIngredients()),
        expect: () => [
          isA<SubmitProductFailure>().having(
            (s) => s.exception,
            'exception',
            isA<Exception>(),
          ),
        ],
      );

      blocTest<SubmitProductBloc, SubmitProductState>(
        'calls getSunscreenActiveIngredients exactly once',
        build: buildBloc,
        setUp: () {
          when(
            mockUploadDataSource.getSunscreenActiveIngredients(),
          ).thenAnswer((_) async => _sunscreenIngredientsSuccess());
        },
        act: (bloc) =>
            bloc.add(const SubmitProductEvent.fetchSunscreenActiveIngredients()),
        verify: (_) {
          verify(mockUploadDataSource.getSunscreenActiveIngredients()).called(1);
        },
      );
    });

    // -----------------------------------------------------------------------
    // No category set — SubmitProduct with unset category emits nothing
    // -----------------------------------------------------------------------
    group('SubmitProduct – no category set', () {
      blocTest<SubmitProductBloc, SubmitProductState>(
        'emits nothing when SubmitProduct is fired without prior SubmitProductStarted',
        build: buildBloc,
        act: (bloc) => bloc.add(SubmitProductEvent.submitProduct(
          submissionId: _submissionId,
          infoUIModel: _infoModel(),
        )),
        expect: () => <SubmitProductState>[],
      );
    });
  });
}
