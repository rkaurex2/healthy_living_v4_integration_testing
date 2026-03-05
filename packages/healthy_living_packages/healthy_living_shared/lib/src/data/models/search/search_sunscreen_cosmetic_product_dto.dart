import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_shared/src/data/models/ingredient_preference/ingredient_preference_indicator_dto.dart';

part 'search_sunscreen_cosmetic_product_dto.freezed.dart';
part 'search_sunscreen_cosmetic_product_dto.g.dart';

@freezed
sealed class SearchSunscreenCosmeticProductDTO
    with _$SearchSunscreenCosmeticProductDTO {
  const factory SearchSunscreenCosmeticProductDTO({
    @JsonKey(name: 'product_type') String? productType,
    @JsonKey(name: 'old_product') bool? oldProduct,
    @JsonKey(name: 'product_id') int? productId,
    @JsonKey(name: 'minority_owned') bool? minorityOwned,
    @JsonKey(name: 'brand_name') String? brandName,
    @JsonKey(name: 'brand_id') int? brandId,
    @JsonKey(name: 'comp_id') int? compId,
    @JsonKey(name: 'company_name') String? companyName,
    String? name,
    String? upcs,
    @JsonKey(name: 'image_url') String? imageUrl,
    String? score,
    @JsonKey(name: 'ewg_verified') bool? ewgVerified,
    @JsonKey(name: 'verified_date') String? verifiedDate,
    List<dynamic>? retailers,
    @JsonKey(name: 'web_url') String? webUrl,
    @JsonKey(name: 'ingredient_preferences')
    IngredientPreferenceIndicatorDTO? ingredientPreferenceIndicator,
  }) = _SearchSunscreenCosmeticProductDTO;

  factory SearchSunscreenCosmeticProductDTO.fromJson(
    Map<String, dynamic> json,
  ) => _$SearchSunscreenCosmeticProductDTOFromJson(json);
}
