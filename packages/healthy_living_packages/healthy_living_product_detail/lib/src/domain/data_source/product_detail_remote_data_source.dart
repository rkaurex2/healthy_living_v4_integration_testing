import 'package:healthy_living_product_detail/src/data/models/cleaner_detail_response_dto.dart';
import 'package:healthy_living_product_detail/src/data/models/cosmetic_detail_response_dto.dart';
import 'package:healthy_living_product_detail/src/data/models/food_detail_response_dto.dart';
import 'package:healthy_living_product_detail/src/data/models/ingredient_details/ingredient_info_response_dto.dart';
import 'package:healthy_living_product_detail/src/data/models/product_compare_cleaners_response_dto.dart';
import 'package:healthy_living_product_detail/src/data/models/product_compare_cosmetic_response_dto.dart';
import 'package:healthy_living_product_detail/src/data/models/product_compare_food_response_dto.dart';
import 'package:healthy_living_product_detail/src/domain/models/cleaner_detail_request_model.dart';
import 'package:healthy_living_product_detail/src/domain/models/cosmetic_detail_request_model.dart';
import 'package:healthy_living_product_detail/src/domain/models/food_detail_request_model.dart';
import 'package:healthy_living_product_detail/src/domain/models/ingredient_details/ingredient_info_request_model.dart';
import 'package:healthy_living_product_detail/src/domain/models/product_compare_request_model.dart';
import 'package:network/network.dart';

abstract interface class ProductDetailRemoteDataSource {
  Future<NetworkResponse<CosmeticDetailResponseDTO?>> getCosmeticDetails({
    required CosmeticDetailRequestModel request,
  });

  Future<NetworkResponse<CleanerDetailResponseDTO?>> getCleanerDetails({
    required CleanerDetailRequestModel request,
  });

  Future<NetworkResponse<FoodDetailResponseDTO?>> getFoodDetails({
    required FoodDetailRequestModel request,
  });

  Future<NetworkResponse<IngredientInfoResponseDTO?>> getIngredientInfo({
    required IngredientInfoRequestModel request,
  });

  Future<NetworkResponse<ProductCompareCosmeticResponseDTO?>>
  getProductComparisonCosmeticDetails({
    required ProductCompareRequestModel request,
  });

  Future<NetworkResponse<ProductCompareCleanersResponseDTO?>>
  getProductComparisonCleanersDetails({
    required ProductCompareRequestModel request,
  });

  Future<NetworkResponse<ProductCompareFoodResponseDTO?>>
  getProductComparisonFoodDetails({
    required ProductCompareRequestModel request,
  });
}
