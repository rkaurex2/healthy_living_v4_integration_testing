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
import 'package:network/network.dart';

abstract interface class ProductDetailRepository {
  Future<NetworkResponse<CosmeticDetailResponseModel?>> getCosmeticDetails({
    required CosmeticDetailRequestModel request,
  });

  Future<NetworkResponse<CleanerDetailResponseModel?>> getCleanerDetails({
    required CleanerDetailRequestModel request,
  });

  Future<NetworkResponse<FoodDetailResponseModel?>> getFoodDetails({
    required FoodDetailRequestModel request,
  });

  Future<NetworkResponse<IngredientInfoResponseModel?>> getIngredientInfo({
    required IngredientInfoRequestModel request,
  });

  Future<NetworkResponse<ProductCompareCosmeticResponseModel?>>
  cosmeticProductCompare({required ProductCompareRequestModel request});

  Future<NetworkResponse<ProductCompareCleanersResponseModel?>>
  cleanersProductCompare({required ProductCompareRequestModel request});

  Future<NetworkResponse<ProductCompareFoodResponseModel?>> foodProductCompare({
    required ProductCompareRequestModel request,
  });
}
