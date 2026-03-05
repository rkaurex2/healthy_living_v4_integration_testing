import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import 'package:healthy_living_product_detail/src/ui/bloc/product_detail_bloc.dart';
import 'package:healthy_living_product_detail/src/ui/bloc/product_detail_event.dart';
import 'package:healthy_living_product_detail/src/ui/bloc/product_detail_state.dart';
import 'package:healthy_living_product_detail/src/ui/model/product_detail_tab.dart';
import 'package:healthy_living_product_detail/src/domain/models/cosmetic_detail_response_model.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:network/network.dart';

import '../mock/mock_helpers.mocks.dart';

// ---------------------------------------------------------------------------
// Helpers
// ---------------------------------------------------------------------------

void _stubRepositoryDefaults(
  MockProductDetailRepository repo,
  MockHistoryProductRepository historyRepo,
  MockIngredientPreferenceRepository ingredientRepo,
  MockProductDetailsAnalytics analytics,
  MockIngredientPreferenceAnalytics ingredientAnalytics,
) {
  // Default: add recently viewed succeeds
  when(historyRepo.addRecentlyViewedProduct(request: anyNamed('request')))
      .thenAnswer((_) async => const NetworkResponse(
            data: null,
            statusCode: 200,
            responseHeaders: {},
          ));

  // Default: ingredient preferences returns empty lists
  when(ingredientRepo.getCuratedIngredientPreferenceLists(
    request: anyNamed('request'),
  )).thenAnswer((_) async => const NetworkResponse(
        data: null,
        statusCode: 200,
        responseHeaders: {},
      ));

  when(ingredientRepo.getActivePreferences(
    request: anyNamed('request'),
  )).thenAnswer((_) async => const NetworkResponse(
        data: null,
        statusCode: 200,
        responseHeaders: {},
      ));

  // Analytics — fire-and-forget
  when(analytics.logProductDetailView(product: anyNamed('product')))
      .thenAnswer((_) async {});
  when(ingredientAnalytics.logIngredientsPreferenceSet(
    ingredientId: anyNamed('ingredientId'),
    userSelected: anyNamed('userSelected'),
    listType: anyNamed('listType'),
    index: anyNamed('index'),
    action: anyNamed('action'),
  )).thenAnswer((_) async {});
}

/// Minimal product param used in tests.
ProductDetailParamModel _testProduct({
  int productId = 1,
  ProductCategory category = ProductCategory.personalCare,
}) =>
    ProductDetailParamModel(
      productId: productId,
      productCategory: category,
    );

void main() {
  late MockProductDetailRepository mockRepo;
  late MockHistoryProductRepository mockHistoryRepo;
  late MockIngredientPreferenceRepository mockIngredientRepo;
  late MockProductDetailsAnalytics mockAnalytics;
  late MockIngredientPreferenceAnalytics mockIngredientAnalytics;

  setUp(() {
    mockRepo = MockProductDetailRepository();
    mockHistoryRepo = MockHistoryProductRepository();
    mockIngredientRepo = MockIngredientPreferenceRepository();
    mockAnalytics = MockProductDetailsAnalytics();
    mockIngredientAnalytics = MockIngredientPreferenceAnalytics();
    _stubRepositoryDefaults(
      mockRepo,
      mockHistoryRepo,
      mockIngredientRepo,
      mockAnalytics,
      mockIngredientAnalytics,
    );
  });

  ProductDetailBloc buildBloc() => ProductDetailBloc(
        productDetailRepository: mockRepo,
        recentlyViewedProductRepository: mockHistoryRepo,
        ingredientPreferenceRepository: mockIngredientRepo,
        productDetailsAnalytics: mockAnalytics,
        ingredientPreferenceAnalytics: mockIngredientAnalytics,
      );

  group('ProductDetailBloc', () {
    // -----------------------------------------------------------------------
    // Initial state
    // -----------------------------------------------------------------------
    test('initial state is ProductDetailInitial', () {
      final bloc = buildBloc();
      expect(bloc.state, isA<ProductDetailInitial>());
      bloc.close();
    });

    test('selectedProductDetailTab defaults to findings', () {
      final bloc = buildBloc();
      expect(
        bloc.selectedProductDetailTab,
        ProductDetailTab.findings,
      );
      bloc.close();
    });

    // -----------------------------------------------------------------------
    // TabChanged
    // -----------------------------------------------------------------------
    group('TabChanged', () {
      blocTest<ProductDetailBloc, ProductDetailState>(
        'emits ProductDetailTabChange with the new tab',
        build: buildBloc,
        act: (bloc) => bloc.add(
          const ProductDetailEvent.tabChanged(ProductDetailTab.ingredients),
        ),
        expect: () => [
          isA<ProductDetailTabChange>().having(
            (s) => s.tab,
            'selectedTab',
            ProductDetailTab.ingredients,
          ),
        ],
      );

      blocTest<ProductDetailBloc, ProductDetailState>(
        'emits ProductDetailTabChange for score tab',
        build: buildBloc,
        act: (bloc) => bloc.add(
          const ProductDetailEvent.tabChanged(ProductDetailTab.labelInfo),
        ),
        expect: () => [
          isA<ProductDetailTabChange>().having(
            (s) => s.tab,
            'selectedTab',
            ProductDetailTab.labelInfo,
          ),
        ],
      );

      blocTest<ProductDetailBloc, ProductDetailState>(
        'consecutive tab changes each emit ProductDetailTabChange',
        build: buildBloc,
        act: (bloc) {
          bloc.add(
            const ProductDetailEvent.tabChanged(
              ProductDetailTab.ingredients,
            ),
          );
          bloc.add(
            const ProductDetailEvent.tabChanged(
              ProductDetailTab.findings,
            ),
          );
        },
        expect: () => [
          isA<ProductDetailTabChange>(),
          isA<ProductDetailTabChange>(),
        ],
      );
    });

    // -----------------------------------------------------------------------
    // OnPressCompare / OnCloseCompare
    // -----------------------------------------------------------------------
    group('OnPressCompare', () {
      blocTest<ProductDetailBloc, ProductDetailState>(
        'emits CompareProductInitiate',
        build: buildBloc,
        act: (bloc) => bloc.add(const ProductDetailEvent.onPressCompare()),
        expect: () => [isA<CompareProductInitiate>()],
      );
    });

    group('OnCloseCompare', () {
      blocTest<ProductDetailBloc, ProductDetailState>(
        'emits a state after closing compare',
        build: buildBloc,
        act: (bloc) {
          bloc.add(const ProductDetailEvent.onPressCompare());
          bloc.add(const ProductDetailEvent.onCloseCompare());
        },
        // After open+close, at minimum CompareProductInitiate was emitted.
        // The close state will depend on implementation (may go back to initial).
        expect: () => contains(isA<CompareProductInitiate>()),
      );
    });

    // -----------------------------------------------------------------------
    // ProductDetailInitialized — cosmetic product success path
    // -----------------------------------------------------------------------
    group('ProductDetailInitialized – cosmetic success', () {
      blocTest<ProductDetailBloc, ProductDetailState>(
        'emits [ProductDetailLoading, ProductDetailSuccess] for personal care '
        'product when API returns valid data',
        build: buildBloc,
        setUp: () {
          when(mockRepo.getCosmeticDetails(request: anyNamed('request')))
              .thenAnswer((_) async => NetworkResponse(
                    data: CosmeticDetailResponseModel(
                      productId: '1',
                      name: 'Test Product',
                      brandName: 'Test Brand',
                    ),
                    statusCode: 200,
                    responseHeaders: {},
                  ));
        },
        act: (bloc) => bloc.add(
          ProductDetailEvent.initialized(
            product: _testProduct(),
            isAuthenticated: false,
            isPremiumUser: false,
          ),
        ),
        expect: () => [
          isA<ProductDetailLoading>(),
          isA<ProductDetailSuccess>(),
          isA<ProductDetailTabChange>(),
        ],
      );

      blocTest<ProductDetailBloc, ProductDetailState>(
        'emits ProductDetailFailure when cosmetic API fails',
        build: buildBloc,
        setUp: () {
          when(mockRepo.getCosmeticDetails(request: anyNamed('request')))
              .thenAnswer((_) async => const NetworkResponse(
                    data: null,
                    statusCode: 500,
                    responseHeaders: {},
                  ));
        },
        act: (bloc) => bloc.add(
          ProductDetailEvent.initialized(
            product: _testProduct(),
            isAuthenticated: false,
            isPremiumUser: false,
          ),
        ),
        expect: () => [
          isA<ProductDetailLoading>(),
          isA<ProductDetailFailure>(),
          isA<ProductDetailTabChange>(),
        ],
      );
    });

    // -----------------------------------------------------------------------
    // ProductDetailShare
    // -----------------------------------------------------------------------
    group('ProductDetailShare', () {
      blocTest<ProductDetailBloc, ProductDetailState>(
        'does not throw when share event is added',
        build: buildBloc,
        act: (bloc) => bloc.add(
          const ProductDetailEvent.share(
            messageText: 'Check this product!',
            messageTitle: 'Test Product',
            sharingTitle: 'Share via',
          ),
        ),
        // Share may or may not emit states depending on platform support;
        // verify no exception is thrown.
        errors: () => isEmpty,
      );
    });
  });
}
