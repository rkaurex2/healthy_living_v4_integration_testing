import 'package:freezed_annotation/freezed_annotation.dart';

part 'food_detail_page_details_model.freezed.dart';

@freezed
sealed class FoodDetailPageDetailsModel with _$FoodDetailPageDetailsModel {
  const factory FoodDetailPageDetailsModel({
    @JsonKey(name: 'location_on_page') String? location,
    @JsonKey(name: 'positive_negative') String? rating,
    @JsonKey(name: 'details_section') String? section,
    @JsonKey(name: 'summary_text') String? summaryText,
    @JsonKey(name: 'read_more_text') String? readMoreText,
    @JsonKey(name: 'positive_nutr_content') Map<String, int>? positiveNutritionContent,
    @JsonKey(name: 'negative_nutr_content') Map<String, int>? negativeNutritionContent,
  }) = _FoodDetailPageDetailsModel;
}
