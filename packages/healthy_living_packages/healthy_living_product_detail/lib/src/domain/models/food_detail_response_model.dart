import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_product_detail/src/domain/models/certifications_model.dart';
import 'package:healthy_living_product_detail/src/domain/models/food_detail_nutrient_fact_model.dart';
import 'package:healthy_living_product_detail/src/domain/models/food_detail_page_details_model.dart';
import 'package:healthy_living_product_detail/src/domain/models/food_detail_scores_model.dart';
import 'package:healthy_living_product_detail/src/domain/models/food_detail_serving_info_model.dart';
import 'package:healthy_living_product_detail/src/domain/models/retailer_model.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

part 'food_detail_response_model.freezed.dart';

@freezed
sealed class FoodDetailResponseModel with _$FoodDetailResponseModel {
  const factory FoodDetailResponseModel({
    String? productType,
    int? productId,
    String? productSize,
    List<String>? upcs,
    String? name,
    String? brandName,
    String? categoryDisplayName,
    String? categoryLinkName,
    List<String>? categoryGroups,
    webUrl,
    bool? discontinued,
    FoodDetailScoresModel? scores,
    List<FoodDetailPageDetailsModel>? findings,
    String? addedSugarIngredients,
    String? imageUrl,
    String? asin,
    @Default('') String labelIngredients,
    @Default([]) List<String> ingredients,
    @Default([]) List<FoodDetailNutrientFactModel>? avoidFacts,
    FoodDetailNutrientFactModel? calories,
    FoodDetailServingInfoModel? servingInfo,
    @Default([]) List<FoodDetailNutrientFactModel>? quickFacts,
    @Default([]) List<FoodDetailNutrientFactModel>? nutrients,
    String? lastUpdated,
    @Default('') String labelWarning,
    @Default('') String labelDirection,
    List<CertificationsModel>? certifications,
    IngredientPreferenceIndicatorModel? ingredientPreferenceLabels,
    @JsonKey(name: 'retailers', defaultValue: []) List<RetailerModel>? retailers,
  }) = _FoodDetailResponseModel;
}
