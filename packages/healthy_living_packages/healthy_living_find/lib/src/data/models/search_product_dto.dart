import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_find/src/data/models/search_highlights_dto.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

part 'search_product_dto.freezed.dart';
part 'search_product_dto.g.dart';

@freezed
sealed class SearchProductDTO with _$SearchProductDTO {
  const factory SearchProductDTO({
    int? id,
    @JsonKey(name: 'skindeep_id') int? skinDeepId,
    String? type,
    String? subtype,
    String? name,
    String? description,
    @JsonKey(name: 'brand_name') String? brandName,
    @JsonKey(name: 'category_name') dynamic categoryName,
    @JsonKey(name: 'category_group_name') dynamic categoryGroupName,
    @JsonKey(name: 'sub_category_name') dynamic subCategoryName,
    dynamic score,
    @JsonKey(name: 'numeric_webscore') num? numericWebscore,
    @JsonKey(name: 'ewg_verified') bool? ewgVerified,
    @JsonKey(name: 'image_url') String? imageUrl,
    @JsonKey(name: 'mobile_image_url') String? mobileImageUrl,
    SearchHighlightsDTO? highlights,
    @JsonKey(name: 'ingredient_preference_labels')
    IngredientPreferenceIndicatorDTO? ingredientPreferenceIndicator,
  }) = _SearchProductDTO;

  factory SearchProductDTO.fromJson(Map<String, dynamic> json) =>
      _$SearchProductDTOFromJson(json);
}
