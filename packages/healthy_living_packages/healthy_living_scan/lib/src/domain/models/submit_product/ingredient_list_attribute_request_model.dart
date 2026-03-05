import 'package:freezed_annotation/freezed_annotation.dart';

part 'ingredient_list_attribute_request_model.freezed.dart';
part 'ingredient_list_attribute_request_model.g.dart';

@freezed
sealed class IngredientListAttributeRequestModel
    with _$IngredientListAttributeRequestModel {
  const factory IngredientListAttributeRequestModel({
    @JsonKey(name: 'raw_text') required String rawText,
    required String source,
  }) = _IngredientListAttributeRequestModel;

  const IngredientListAttributeRequestModel._();

  Map<String, dynamic> toApiJson() {
    return {'raw_text': rawText, 'source': source};
  }

  factory IngredientListAttributeRequestModel.fromJson(
    Map<String, dynamic> json,
  ) => _$IngredientListAttributeRequestModelFromJson(json);
}
