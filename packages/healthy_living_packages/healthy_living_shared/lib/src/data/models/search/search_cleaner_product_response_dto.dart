import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_shared/src/data/models/ingredient_preference/ingredient_preference_indicator_dto.dart';
import 'package:healthy_living_shared/src/data/models/search/search_business_response_dto.dart';
part 'search_cleaner_product_response_dto.freezed.dart';
part 'search_cleaner_product_response_dto.g.dart';

@freezed
sealed class SearchCleanerProductResponseDTO
    with _$SearchCleanerProductResponseDTO {
  const factory SearchCleanerProductResponseDTO({
    @JsonKey(name: 'product_type') String? productType,
    int? id,
    @JsonKey(name: 'to_param') String? toParam,
    String? name,
    List<String>? upcs,
    @JsonKey(name: 'brand_line_id') int? brandLineId,
    @JsonKey(name: 'brand_name') String? brandName,
    String? grade,
    @JsonKey(name: 'search_grade') String? searchGrade,
    bool? discontinued,
    @JsonKey(name: 'browse_image_url') String? browseImageUrl,
    @JsonKey(name: 'medium_image_url') String? mediumImageUrl,
    @JsonKey(name: 'number_of_formulations') int? numberOfFormulations,
    @JsonKey(name: 'green_certified') bool? greenCertified,
    SearchBusinessResponseDTO? business,
    @JsonKey(name: 'ingredient_preferences')
    IngredientPreferenceIndicatorDTO? ingredientPreferenceIndicator,
  }) = _SearchCleanerProductResponseDTO;

  factory SearchCleanerProductResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$SearchCleanerProductResponseDTOFromJson(json);
}
