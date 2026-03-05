import 'package:flutter_test/flutter_test.dart';
import 'package:healthy_living_product_detail/src/data/models/cleaner_detail_response_dto.dart';
import 'package:healthy_living_product_detail/src/data/models/cosmetic_detail_response_dto.dart';
import 'package:healthy_living_product_detail/src/data/models/food_detail_response_dto.dart';
import 'package:healthy_living_product_detail/src/data/models/ingredient_details/ingredient_info_response_dto.dart';
import 'package:healthy_living_product_detail/src/data/models/product_compare_cleaners_response_data_dto.dart';
import 'package:healthy_living_product_detail/src/data/models/product_compare_cleaners_response_dto.dart';
import 'package:healthy_living_product_detail/src/data/models/product_compare_cosmetic_response_data_dto.dart';
import 'package:healthy_living_product_detail/src/data/models/product_compare_cosmetic_response_dto.dart';
import 'package:healthy_living_product_detail/src/data/models/product_compare_food_response_data_dto.dart';
import 'package:healthy_living_product_detail/src/data/models/product_compare_food_response_dto.dart';
import 'package:healthy_living_product_detail/src/data/repository/default_product_detail_repository.dart';
import 'package:healthy_living_product_detail/src/domain/data_source/product_detail_remote_data_source.dart';
import 'package:healthy_living_product_detail/src/domain/models/cleaner_detail_request_model.dart';
import 'package:healthy_living_product_detail/src/domain/models/cleaner_detail_response_model.dart';
import 'package:healthy_living_product_detail/src/domain/models/cosmetic_detail_request_model.dart';
import 'package:healthy_living_product_detail/src/domain/models/cosmetic_detail_response_model.dart';
import 'package:healthy_living_product_detail/src/domain/models/food_detail_request_model.dart';
import 'package:healthy_living_product_detail/src/domain/models/food_detail_response_model.dart';
import 'package:healthy_living_product_detail/src/domain/models/ingredient_details/ingredient_info_request_model.dart';
import 'package:healthy_living_product_detail/src/domain/models/ingredient_details/ingredient_info_response_model.dart';
import 'package:healthy_living_product_detail/src/domain/models/product_compare_cleaners_response_model.dart';
import 'package:healthy_living_product_detail/src/domain/models/product_compare_cosmetic_response_model.dart';
import 'package:healthy_living_product_detail/src/domain/models/product_compare_food_response_model.dart';
import 'package:healthy_living_product_detail/src/domain/models/product_compare_request_model.dart';
import 'package:healthy_living_product_detail/src/domain/repository/product_detail_repository.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:network/network.dart';

@GenerateMocks([ProductDetailRemoteDataSource])
import 'product_detail_repository_test.mocks.dart';

// ---------------------------------------------------------------------------
// Helpers
// ---------------------------------------------------------------------------

ProductDetailRepository _makeRepo(
  MockProductDetailRemoteDataSource dataSource,
) =>
    DefaultProductDetailRepository(dataSource: dataSource);

// ---------------------------------------------------------------------------
// Tests
// ---------------------------------------------------------------------------

void main() {
  late MockProductDetailRemoteDataSource mockDataSource;
  late ProductDetailRepository repository;

  // DefaultProductDetailRepository uses a singleton pattern, so we create the
  // mock and repository once. Each test then sets up fresh stubs on the same
  // mock via reset().
  setUpAll(() {
    mockDataSource = MockProductDetailRemoteDataSource();
    repository = _makeRepo(mockDataSource);
  });

  setUp(() {
    reset(mockDataSource);
  });

  // -------------------------------------------------------------------------
  // getCosmeticDetails
  // -------------------------------------------------------------------------
  group('getCosmeticDetails', () {
    test('returns 200 on success with mapped domain model', () async {
      when(mockDataSource.getCosmeticDetails(
        request: anyNamed('request'),
      )).thenAnswer(
        (_) async => const NetworkResponse<CosmeticDetailResponseDTO?>(
          data: CosmeticDetailResponseDTO(),
          statusCode: 200,
          responseHeaders: {},
        ),
      );

      final result = await repository.getCosmeticDetails(
        request: const CosmeticDetailRequestModel(id: '1'),
      );

      expect(result.statusCode, 200);
      expect(result.isSuccess, isTrue);
    });

    test('returns null data when DTO is null', () async {
      when(mockDataSource.getCosmeticDetails(
        request: anyNamed('request'),
      )).thenAnswer(
        (_) async => const NetworkResponse<CosmeticDetailResponseDTO?>(
          data: null,
          statusCode: 404,
          responseHeaders: {},
        ),
      );

      final result = await repository.getCosmeticDetails(
        request: const CosmeticDetailRequestModel(id: '1'),
      );

      expect(result.data, isNull);
      expect(result.statusCode, 404);
    });
  });

  // -------------------------------------------------------------------------
  // getCleanerDetails
  // -------------------------------------------------------------------------
  group('getCleanerDetails', () {
    test('returns 200 on success', () async {
      when(mockDataSource.getCleanerDetails(
        request: anyNamed('request'),
      )).thenAnswer(
        (_) async => const NetworkResponse<CleanerDetailResponseDTO?>(
          data: CleanerDetailResponseDTO(),
          statusCode: 200,
          responseHeaders: {},
        ),
      );

      final result = await repository.getCleanerDetails(
        request: const CleanerDetailRequestModel(id: '1'),
      );

      expect(result.statusCode, 200);
      expect(result.isSuccess, isTrue);
    });

    test('propagates exception from data source', () async {
      when(mockDataSource.getCleanerDetails(
        request: anyNamed('request'),
      )).thenThrow(Exception('error'));

      expect(
        () => repository.getCleanerDetails(
          request: const CleanerDetailRequestModel(id: '1'),
        ),
        throwsA(isA<Exception>()),
      );
    });
  });

  // -------------------------------------------------------------------------
  // getFoodDetails
  // -------------------------------------------------------------------------
  group('getFoodDetails', () {
    test('returns 200 on success', () async {
      when(mockDataSource.getFoodDetails(
        request: anyNamed('request'),
      )).thenAnswer(
        (_) async => const NetworkResponse<FoodDetailResponseDTO?>(
          data: FoodDetailResponseDTO(),
          statusCode: 200,
          responseHeaders: {},
        ),
      );

      final result = await repository.getFoodDetails(
        request: const FoodDetailRequestModel(upc: '123456'),
      );

      expect(result.statusCode, 200);
      expect(result.isSuccess, isTrue);
    });
  });

  // -------------------------------------------------------------------------
  // getIngredientInfo
  // -------------------------------------------------------------------------
  group('getIngredientInfo', () {
    test('returns 200 on success', () async {
      when(mockDataSource.getIngredientInfo(
        request: anyNamed('request'),
      )).thenAnswer(
        (_) async => const NetworkResponse<IngredientInfoResponseDTO?>(
          data: IngredientInfoResponseDTO(),
          statusCode: 200,
          responseHeaders: {},
        ),
      );

      final result = await repository.getIngredientInfo(
        request: const IngredientInfoRequestModel(id: '1'),
      );

      expect(result.statusCode, 200);
      expect(result.isSuccess, isTrue);
    });

    test('returns error status on failure', () async {
      when(mockDataSource.getIngredientInfo(
        request: anyNamed('request'),
      )).thenAnswer(
        (_) async => const NetworkResponse<IngredientInfoResponseDTO?>(
          data: null,
          statusCode: 500,
          responseHeaders: {},
          statusMessage: 'Internal Server Error',
        ),
      );

      final result = await repository.getIngredientInfo(
        request: const IngredientInfoRequestModel(id: '1'),
      );

      expect(result.statusCode, 500);
      expect(result.isServerError, isTrue);
    });
  });

  // -------------------------------------------------------------------------
  // cosmeticProductCompare
  // -------------------------------------------------------------------------
  group('cosmeticProductCompare', () {
    test('returns 200 on success', () async {
      when(mockDataSource.getProductComparisonCosmeticDetails(
        request: anyNamed('request'),
      )).thenAnswer(
        (_) async =>
            const NetworkResponse<ProductCompareCosmeticResponseDTO?>(
          data: ProductCompareCosmeticResponseDTO(data: ProductCompareCosmeticResponseDataDTO()),
          statusCode: 200,
          responseHeaders: {},
        ),
      );

      final result = await repository.cosmeticProductCompare(
        request: const ProductCompareRequestModel(ids: ['1', '2'], productType: 'cosmetic'),
      );

      expect(result.statusCode, 200);
      expect(result.isSuccess, isTrue);
    });
  });

  // -------------------------------------------------------------------------
  // cleanersProductCompare
  // -------------------------------------------------------------------------
  group('cleanersProductCompare', () {
    test('returns 200 on success', () async {
      when(mockDataSource.getProductComparisonCleanersDetails(
        request: anyNamed('request'),
      )).thenAnswer(
        (_) async =>
            const NetworkResponse<ProductCompareCleanersResponseDTO?>(
          data: ProductCompareCleanersResponseDTO(data: ProductCompareCleanersResponseDataDTO()),
          statusCode: 200,
          responseHeaders: {},
        ),
      );

      final result = await repository.cleanersProductCompare(
        request: const ProductCompareRequestModel(ids: ['1', '2'], productType: 'cosmetic'),
      );

      expect(result.statusCode, 200);
      expect(result.isSuccess, isTrue);
    });

    test('propagates exception from data source', () async {
      when(mockDataSource.getProductComparisonCleanersDetails(
        request: anyNamed('request'),
      )).thenThrow(Exception('error'));

      expect(
        () => repository.cleanersProductCompare(
          request: const ProductCompareRequestModel(ids: ['1', '2'], productType: 'cosmetic'),
        ),
        throwsA(isA<Exception>()),
      );
    });
  });

  // -------------------------------------------------------------------------
  // foodProductCompare
  // -------------------------------------------------------------------------
  group('foodProductCompare', () {
    test('returns 200 on success', () async {
      when(mockDataSource.getProductComparisonFoodDetails(
        request: anyNamed('request'),
      )).thenAnswer(
        (_) async => const NetworkResponse<ProductCompareFoodResponseDTO?>(
          data: ProductCompareFoodResponseDTO(data: ProductCompareFoodResponseDataDTO()),
          statusCode: 200,
          responseHeaders: {},
        ),
      );

      final result = await repository.foodProductCompare(
        request: const ProductCompareRequestModel(ids: ['1', '2'], productType: 'cosmetic'),
      );

      expect(result.statusCode, 200);
      expect(result.isSuccess, isTrue);
    });

    test('delegates to data source with correct request', () async {
      const request = ProductCompareRequestModel(ids: ['1', '2'], productType: 'food');

      when(mockDataSource.getProductComparisonFoodDetails(
        request: anyNamed('request'),
      )).thenAnswer(
        (_) async => const NetworkResponse<ProductCompareFoodResponseDTO?>(
          data: null,
          statusCode: 200,
          responseHeaders: {},
        ),
      );

      await repository.foodProductCompare(request: request);

      verify(mockDataSource.getProductComparisonFoodDetails(
        request: request,
      )).called(1);
    });
  });
}
