import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_shared/src/data/models/ingredient_preference/ingredient_preference_indicator_dto.dart';

part 'search_food_product_dto.freezed.dart';
part 'search_food_product_dto.g.dart';

@freezed
sealed class SearchFoodProductDTO with _$SearchFoodProductDTO {
  const factory SearchFoodProductDTO({
    @JsonKey(name: 'product_type') String? productType,
    List<String>? upcs,
    String? name,
    @JsonKey(name: 'product_id') int? productId,
    @JsonKey(name: 'product_size') String? productSize,
    @JsonKey(name: 'image_url') String? imageUrl,
    @JsonKey(name: 'asin_list') String? asinList,
    @JsonKey(name: 'brand_id') int? brandId,
    @JsonKey(name: 'brand_name') String? brandName,
    Map<String, double>? scores,
    @JsonKey(name: 'category_display_name') String? categoryDisplayName,
    @JsonKey(name: 'category_link_name') String? categoryLinkName,
    @JsonKey(name: 'category_groups') List<String>? categoryGroups,
    @JsonKey(name: 'web_url') String? webUrl,
    bool? discontinued,
    @JsonKey(name: 'ingredient_preferences')
    IngredientPreferenceIndicatorDTO? ingredientPreferenceIndicator,
  }) = _FoodDetailResponseDTO;

  factory SearchFoodProductDTO.fromJson(Map<String, dynamic> json) =>
      _$SearchFoodProductDTOFromJson(json);
}
