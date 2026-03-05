import 'package:freezed_annotation/freezed_annotation.dart';
part 'ingredient_attribute_request_model.freezed.dart';
part 'ingredient_attribute_request_model.g.dart';
@freezed
sealed class IngredientAttributeRequestModel with _$IngredientAttributeRequestModel {
  const factory IngredientAttributeRequestModel({
    @JsonKey(name: 'crowd_sourced_product_submission[ingredient_lists_attributes][0][ingredients_attributes][0][name]')
    required String name, @JsonKey(name: 'crowd_sourced_product_submission[ingredient_lists_attributes][0][ingredients_attributes][0][position]')
    required int position, @JsonKey(name: 'crowd_sourced_product_submission[ingredient_lists_attributes][0][ingredients_attributes][0][id]', includeIfNull: false)
    String? id,
    @JsonKey(name: 'crowd_sourced_product_submission[ingredient_lists_attributes][0][ingredients_attributes][0][amount_value]', includeIfNull: false)
    String? amountValue,
    @JsonKey(name: 'crowd_sourced_product_submission[ingredient_lists_attributes][0][ingredients_attributes][0][amount_unit]', includeIfNull: false)
    String? amountUnit,
    @JsonKey(name: 'crowd_sourced_product_submission[ingredient_lists_attributes][0][ingredients_attributes][0][notes]', includeIfNull: false)
    String? notes,
    @JsonKey(name: 'crowd_sourced_product_submission[ingredient_lists_attributes][0][ingredients_attributes][0][_destroy]')
    @Default(false) bool destroy,
  }) = _IngredientAttributeRequestModel;

  factory IngredientAttributeRequestModel.fromJson(Map<String, dynamic> json) =>
      _$IngredientAttributeRequestModelFromJson(json);
}