import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_product_detail/src/data/models/certifications_dto.dart';
import 'package:healthy_living_product_detail/src/data/models/food_detail_nutrient_fact_dto.dart';
import 'package:healthy_living_product_detail/src/data/models/food_detail_page_details_dto.dart';
import 'package:healthy_living_product_detail/src/data/models/food_detail_scores_dto.dart';
import 'package:healthy_living_product_detail/src/data/models/food_detail_serving_info_dto.dart';
import 'package:healthy_living_product_detail/src/data/models/retailer_dto.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

part 'food_detail_response_dto.freezed.dart';
part 'food_detail_response_dto.g.dart';

@freezed
sealed class FoodDetailResponseDTO with _$FoodDetailResponseDTO {
  const factory FoodDetailResponseDTO({
    @JsonKey(name: 'product_type') String? productType,
    @JsonKey(name: 'product_id') int? productId,
    @JsonKey(name: 'product_size') String? productSize,
    List<String>? upcs,
    String? name,
    @JsonKey(name: 'brand_name') String? brandName,
    @JsonKey(name: 'category_display_name') String? categoryDisplayName,
    @JsonKey(name: 'category_link_name') String? categoryLinkName,
    @JsonKey(name: 'category_groups') List<String>? categoryGroups,
    @JsonKey(name: 'web_url') String? webUrl,
    bool? discontinued,
    FoodDetailScoresDTO? scores,
    @JsonKey(name: 'page_details') List<FoodDetailPageDetailsDTO>? findings,
    @JsonKey(name: 'added_sugar_ingredients') String? addedSugarIngredients,
    @JsonKey(name: 'image_url') String? imageUrl,
    String? asin,
    @JsonKey(name: 'label_ingredients') String? labelIngredients,
    @JsonKey(name: 'avoid_facts') List<FoodDetailNutrientFactDTO>? avoidFacts,
    FoodDetailNutrientFactDTO? calories,
    @JsonKey(name: 'serving_info') FoodDetailServingInfoDTO? servingInfo,
    @JsonKey(name: 'quick_facts') List<FoodDetailNutrientFactDTO>? quickFacts,
    List<FoodDetailNutrientFactDTO>? nutrients,
    @JsonKey(name: "last_updated") String? lastUpdated,
    @JsonKey(name: 'label_warnings') String? labelWarning,
    @JsonKey(name: 'label_directions') String? labelDirection,
    List<CertificationsDTO>? certifications,
    @JsonKey(name: 'ingredient_preference_labels')
    IngredientPreferenceIndicatorDTO? ingredientPreferenceIndicator,
    @JsonKey(name: 'retailers', defaultValue: []) List<RetailerDTO>? retailers,
  }) = _FoodDetailResponseDTO;

  factory FoodDetailResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$FoodDetailResponseDTOFromJson(json);
}
