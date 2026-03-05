// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food_detail_page_details_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FoodDetailPageDetailsDTO _$FoodDetailPageDetailsDTOFromJson(
  Map<String, dynamic> json,
) => _FoodDetailPageDetailsDTO(
  location: json['location_on_page'] as String?,
  rating: json['positive_negative'] as String?,
  section: json['details_section'] as String?,
  summaryText: json['summary_text'] as String?,
  readMoreText: json['read_more_text'] as String?,
  positiveNutritionContent: const SafeMapIntConverter().fromJson(
    json['positive_nutr_content'],
  ),
  negativeNutritionContent: const SafeMapIntConverter().fromJson(
    json['negative_nutr_content'],
  ),
);

Map<String, dynamic> _$FoodDetailPageDetailsDTOToJson(
  _FoodDetailPageDetailsDTO instance,
) => <String, dynamic>{
  'location_on_page': instance.location,
  'positive_negative': instance.rating,
  'details_section': instance.section,
  'summary_text': instance.summaryText,
  'read_more_text': instance.readMoreText,
  'positive_nutr_content': const SafeMapIntConverter().toJson(
    instance.positiveNutritionContent,
  ),
  'negative_nutr_content': const SafeMapIntConverter().toJson(
    instance.negativeNutritionContent,
  ),
};
