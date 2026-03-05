import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_product_detail/src/utils/safe_map_int_converter.dart';

part 'food_detail_page_details_dto.freezed.dart';
part 'food_detail_page_details_dto.g.dart';

@freezed
sealed class FoodDetailPageDetailsDTO with _$FoodDetailPageDetailsDTO {
  const factory FoodDetailPageDetailsDTO({
    @JsonKey(name: 'location_on_page') String? location,
    @JsonKey(name: 'positive_negative') String? rating,
    @JsonKey(name: 'details_section') String? section,
    @JsonKey(name: 'summary_text') String? summaryText,
    @JsonKey(name: 'read_more_text') String? readMoreText,
    @JsonKey(name: 'positive_nutr_content')
    @SafeMapIntConverter()
    Map<String, int>? positiveNutritionContent,

    @JsonKey(name: 'negative_nutr_content')
    @SafeMapIntConverter()
    Map<String, int>? negativeNutritionContent,
  }) = _FoodDetailPageDetailsDTO;

  factory FoodDetailPageDetailsDTO.fromJson(Map<String, dynamic> json) =>
      _$FoodDetailPageDetailsDTOFromJson(json);
}