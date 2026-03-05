import 'package:healthy_living_product_detail/src/data/mapper/cleaner_detail_mapper.dart';
import 'package:healthy_living_product_detail/src/data/mapper/cosmetic_detail_mapper.dart';
import 'package:healthy_living_product_detail/src/data/mapper/food_detail_mapper.dart';
import 'package:healthy_living_product_detail/src/data/mapper/ingredient_info_mapper.dart';
import 'package:healthy_living_product_detail/src/data/mapper/product_compare_cleaners_response_dto_mapper.dart';
import 'package:healthy_living_product_detail/src/data/mapper/product_compare_cosmetic_response_dto_mapper.dart';
import 'package:healthy_living_product_detail/src/data/mapper/product_compare_food_mapper.dart';
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
import 'package:injectable/injectable.dart';
import 'package:network/network.dart';

@LazySingleton(as: ProductDetailRepository)
class DefaultProductDetailRepository implements ProductDetailRepository {
  ProductDetailRemoteDataSource _productDetailRemoteDataSource;
  static DefaultProductDetailRepository? _instance;

  DefaultProductDetailRepository._internal(this._productDetailRemoteDataSource);

  @factoryMethod
  factory DefaultProductDetailRepository({
    required ProductDetailRemoteDataSource dataSource,
  }) {
    _instance ??= DefaultProductDetailRepository._internal(dataSource);
    return _instance!;
  }

  @override
  Future<NetworkResponse<CosmeticDetailResponseModel?>> getCosmeticDetails({
    required CosmeticDetailRequestModel request,
  }) async {
    final response = await _productDetailRemoteDataSource.getCosmeticDetails(
      request: request,
    );
    return NetworkResponse<CosmeticDetailResponseModel?>(
      data: response.data?.toDomain(),
      statusCode: response.statusCode,
      responseHeaders: response.responseHeaders,
      statusMessage: response.statusMessage,
    );
  }

  @override
  Future<NetworkResponse<CleanerDetailResponseModel?>> getCleanerDetails({
    required CleanerDetailRequestModel request,
  }) async {
    final response = await _productDetailRemoteDataSource.getCleanerDetails(
      request: request,
    );
    return NetworkResponse<CleanerDetailResponseModel?>(
      data: response.data?.toDomain(),
      statusCode: response.statusCode,
      responseHeaders: response.responseHeaders,
      statusMessage: response.statusMessage,
    );
  }

  @override
  Future<NetworkResponse<FoodDetailResponseModel?>> getFoodDetails({
    required FoodDetailRequestModel request,
  }) async {
    final response = await _productDetailRemoteDataSource.getFoodDetails(
      request: request,
    );
    return NetworkResponse<FoodDetailResponseModel?>(
      data: response.data?.toDomain(),
      statusCode: response.statusCode,
      responseHeaders: response.responseHeaders,
      statusMessage: response.statusMessage,
    );
  }

  @override
  Future<NetworkResponse<IngredientInfoResponseModel?>> getIngredientInfo({
    required IngredientInfoRequestModel request,
  }) async {
    final response = await _productDetailRemoteDataSource.getIngredientInfo(
      request: request,
    );
    return NetworkResponse<IngredientInfoResponseModel?>(
      data: response.data?.toDomain(),
      statusCode: response.statusCode,
      responseHeaders: response.responseHeaders,
      statusMessage: response.statusMessage,
    );
  }

  @override
  Future<NetworkResponse<ProductCompareCosmeticResponseModel?>>
  cosmeticProductCompare({required ProductCompareRequestModel request}) async {
    final response = await _productDetailRemoteDataSource
        .getProductComparisonCosmeticDetails(request: request);
    return NetworkResponse<ProductCompareCosmeticResponseModel?>(
      data: response.data?.toDomain(),
      statusCode: response.statusCode,
      responseHeaders: response.responseHeaders,
      statusMessage: response.statusMessage,
    );
  }

  @override
  Future<NetworkResponse<ProductCompareFoodResponseModel?>> foodProductCompare({
    required ProductCompareRequestModel request,
  }) async {
    final response = await _productDetailRemoteDataSource
        .getProductComparisonFoodDetails(request: request);
    return NetworkResponse<ProductCompareFoodResponseModel?>(
      data: response.data?.toDomain(),
      statusCode: response.statusCode,
      responseHeaders: response.responseHeaders,
      statusMessage: response.statusMessage,
    );
  }

  @override
  Future<NetworkResponse<ProductCompareCleanersResponseModel?>>
  cleanersProductCompare({required ProductCompareRequestModel request}) async {
    final response = await _productDetailRemoteDataSource
        .getProductComparisonCleanersDetails(request: request);
    return NetworkResponse<ProductCompareCleanersResponseModel?>(
      data: response.data?.toDomain(),
      statusCode: response.statusCode,
      responseHeaders: response.responseHeaders,
      statusMessage: response.statusMessage,
    );
  }
}
