import 'package:freezed_annotation/freezed_annotation.dart';

part 'food_details_attribute_request_model.freezed.dart';
part 'food_details_attribute_request_model.g.dart';

@freezed
sealed class FoodDetailsAttributeRequestModel with _$FoodDetailsAttributeRequestModel {
  const factory FoodDetailsAttributeRequestModel({
    @JsonKey(name: 'crowd_sourced_product_submission[food_details_attributes][id]', includeIfNull: false)
    String? id,
    @JsonKey(name: 'crowd_sourced_product_submission[food_details_attributes][nutrition_panel_notes]', includeIfNull: false)
    String? nutritionPanelNotes,
    @JsonKey(name: 'crowd_sourced_product_submission[food_details_attributes][nutrition_image_ids]', includeIfNull: false)
    String? nutritionImageIds,
    @JsonKey(name: 'crowd_sourced_product_submission[food_details_attributes][_destroy]')
    @Default(false) bool destroy,
  }) = _FoodDetailsAttributeRequestModel;

  factory FoodDetailsAttributeRequestModel.fromJson(Map<String, dynamic> json) =>
      _$FoodDetailsAttributeRequestModelFromJson(json);
}