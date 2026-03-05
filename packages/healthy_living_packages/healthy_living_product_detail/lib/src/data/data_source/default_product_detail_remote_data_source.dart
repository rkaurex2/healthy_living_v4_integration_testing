import 'package:healthy_living_product_detail/src/data/models/cleaner_detail_response_dto.dart';
import 'package:healthy_living_product_detail/src/data/models/cosmetic_detail_response_dto.dart';
import 'package:healthy_living_product_detail/src/data/models/food_detail_response_dto.dart';
import 'package:healthy_living_product_detail/src/data/models/ingredient_details/ingredient_info_response_dto.dart';
import 'package:healthy_living_product_detail/src/data/models/product_compare_cleaners_response_dto.dart';
import 'package:healthy_living_product_detail/src/data/models/product_compare_cosmetic_response_dto.dart';
import 'package:healthy_living_product_detail/src/data/models/product_compare_food_response_dto.dart';
import 'package:healthy_living_product_detail/src/domain/data_source/product_detail_remote_data_source.dart';
import 'package:healthy_living_product_detail/src/domain/models/cleaner_detail_request_model.dart';
import 'package:healthy_living_product_detail/src/domain/models/cosmetic_detail_request_model.dart';
import 'package:healthy_living_product_detail/src/domain/models/food_detail_request_model.dart';
import 'package:healthy_living_product_detail/src/domain/models/ingredient_details/ingredient_info_request_model.dart';
import 'package:healthy_living_product_detail/src/domain/models/product_compare_request_model.dart';
import 'package:healthy_living_product_detail/src/utils/product_detail_api_endpoints.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:injectable/injectable.dart';
import 'package:network/network.dart';

@LazySingleton(as: ProductDetailRemoteDataSource)
class DefaultProductDetailRemoteDataSource
    implements ProductDetailRemoteDataSource {
  final RestClient _unauthenticatedRestClient;
  final RestClient _restClient;

  static DefaultProductDetailRemoteDataSource? _instance;

  DefaultProductDetailRemoteDataSource._internal(
    this._unauthenticatedRestClient,
    this._restClient,
  );

  @factoryMethod
  factory DefaultProductDetailRemoteDataSource({
    @unauthenticatedApiRestClient required RestClient unauthenticatedRestClient,
    @apiRestClient required RestClient restClient,
  }) {
    _instance ??= DefaultProductDetailRemoteDataSource._internal(
      unauthenticatedRestClient,
      restClient,
    );
    return _instance!;
  }

  @override
  Future<NetworkResponse<CosmeticDetailResponseDTO?>> getCosmeticDetails({
    required CosmeticDetailRequestModel request,
  }) async {
    final queryParamRequest =
        await IdentifierQueryParamRequest.fromIdentifier();
    return _restClient.get<CosmeticDetailResponseDTO?>(
      ProductDetailApiEndpoints.cosmetic(request.id),
      queryParams: queryParamRequest.toJson(),
      fromJson: (json) => CosmeticDetailResponseDTO.fromJson(json),
    );
  }

  @override
  Future<NetworkResponse<CleanerDetailResponseDTO?>> getCleanerDetails({
    required CleanerDetailRequestModel request,
  }) async {
    final queryParamRequest =
        await IdentifierQueryParamRequest.fromIdentifier();
    return _restClient.get<CleanerDetailResponseDTO?>(
      ProductDetailApiEndpoints.cleaner(request.id),
      queryParams: queryParamRequest.toJson(),
      fromJson: (json) => CleanerDetailResponseDTO.fromJson(json),
    );
  }

  @override
  Future<NetworkResponse<FoodDetailResponseDTO?>> getFoodDetails({
    required FoodDetailRequestModel request,
  }) async {
    final queryParamRequest =
        await IdentifierQueryParamRequest.fromIdentifier();
    return _restClient.get<FoodDetailResponseDTO?>(
      ProductDetailApiEndpoints.food(request.upc),
      queryParams: queryParamRequest.toJson(),
      fromJson: (json) => FoodDetailResponseDTO.fromJson(json),
    );
  }

  @override
  Future<NetworkResponse<IngredientInfoResponseDTO?>> getIngredientInfo({
    required IngredientInfoRequestModel request,
  }) async {
    final queryParamRequest =
        await IdentifierQueryParamRequest.fromIdentifier();
    return _unauthenticatedRestClient.get<IngredientInfoResponseDTO?>(
      ProductDetailApiEndpoints.ingredientsInfo(request.id),
      queryParams: queryParamRequest.toJson(),
      fromJson: (json) => IngredientInfoResponseDTO.fromJson(json),
    );
  }

  @override
  Future<NetworkResponse<ProductCompareCosmeticResponseDTO?>>
  getProductComparisonCosmeticDetails({
    required ProductCompareRequestModel request,
  }) async {
    final identifierParams = await IdentifierQueryParamRequest.fromIdentifier();
    final queryString = request.toQueryString(
      extraParams: identifierParams.toJson(),
    );

    return _restClient.get<ProductCompareCosmeticResponseDTO>(
      '${ProductDetailApiEndpoints.productsCompare}?$queryString',
      fromJson: (json) => ProductCompareCosmeticResponseDTO.fromJson(json),
      queryParams: null,
    );
  }

  @override
  Future<NetworkResponse<ProductCompareCleanersResponseDTO?>>
  getProductComparisonCleanersDetails({
    required ProductCompareRequestModel request,
  }) async {
    final identifierParams = await IdentifierQueryParamRequest.fromIdentifier();
    final queryString = request.toQueryString(
      extraParams: identifierParams.toJson(),
    );

    return _restClient.get<ProductCompareCleanersResponseDTO>(
      '${ProductDetailApiEndpoints.productsCompare}?$queryString',
      fromJson: (json) => ProductCompareCleanersResponseDTO.fromJson(json),
      queryParams: null,
    );
  }

  @override
  Future<NetworkResponse<ProductCompareFoodResponseDTO?>>
  getProductComparisonFoodDetails({
    required ProductCompareRequestModel request,
  }) async {
    final identifierParams = await IdentifierQueryParamRequest.fromIdentifier();
    final queryString = request.toQueryString(
      extraParams: identifierParams.toJson(),
    );
    return _restClient.get<ProductCompareFoodResponseDTO>(
      '${ProductDetailApiEndpoints.productsCompare}?$queryString',
      fromJson: (json) => ProductCompareFoodResponseDTO.fromJson(json),
      queryParams: null,
    );
  }
}
