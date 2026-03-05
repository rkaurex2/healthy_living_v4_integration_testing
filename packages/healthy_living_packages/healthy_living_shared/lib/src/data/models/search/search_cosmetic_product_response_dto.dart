import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_shared/src/data/models/ingredient_preference/ingredient_preference_indicator_dto.dart';

part 'search_cosmetic_product_response_dto.freezed.dart';
part 'search_cosmetic_product_response_dto.g.dart';

@freezed
sealed class SearchCosmeticProductResponseDTO
    with _$SearchCosmeticProductResponseDTO {
  const factory SearchCosmeticProductResponseDTO({
    @JsonKey(name: 'product_type') String? productType,
    @JsonKey(name: 'old_product') bool? oldProduct,
    @JsonKey(name: 'product_id') int? productId,
    @JsonKey(name: 'kit_parent') bool? kitParent,
    @JsonKey(name: 'parent_id') int? parentId,
    @JsonKey(name: 'minority_owned') bool? minorityOwned,
    @JsonKey(name: 'brand_name') String? brandName,
    @JsonKey(name: 'brand_id') int? brandId,
    @JsonKey(name: 'comp_id') int? compId,
    @JsonKey(name: 'company_name') String? companyName,
    String? name,
    String? upcs,
    @JsonKey(name: 'image_url') String? imageUrl,
    @JsonKey(name: 'browse_image_url') String? browseImageUrl,
    @JsonKey(name: 'medium_image_url') String? mediumImageUrl,
    String? score,
    int? webscore,
    @JsonKey(name: 'data_range') String? dataRange,
    @JsonKey(name: 'data_min') dynamic dataMin,
    @JsonKey(name: 'data_max') dynamic dataMax,
    @JsonKey(name: 'score_range') String? scoreRange,
    @JsonKey(name: 'score_min') String? scoreMin,
    @JsonKey(name: 'score_max') String? scoreMax,
    @JsonKey(name: 'ewg_verified') bool? ewgVerified,
    @JsonKey(name: 'verified_date') String? verifiedDate,
    List<dynamic>? retailers,
    @JsonKey(name: 'web_url') String? webUrl,
    @JsonKey(name: 'ingredient_preferences')
    IngredientPreferenceIndicatorDTO? ingredientPreferenceIndicator,
  }) = _SearchCosmeticProductResponseDTO;

  factory SearchCosmeticProductResponseDTO.fromJson(
    Map<String, dynamic> json,
  ) => _$SearchCosmeticProductResponseDTOFromJson(json);
}
