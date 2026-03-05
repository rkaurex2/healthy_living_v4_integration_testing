import 'package:freezed_annotation/freezed_annotation.dart';

part 'active_ingredient_request_model.freezed.dart';
part 'active_ingredient_request_model.g.dart';

@freezed
sealed class ActiveIngredientRequestModel with _$ActiveIngredientRequestModel {
  const factory ActiveIngredientRequestModel({
    required String ingredient,
    required String percent,
  }) = _ActiveIngredientRequestModel;

  const ActiveIngredientRequestModel._();

  Map<String, dynamic> toApiJson() {
    return {
      'ingredient': ingredient,
      'percent': percent,
    };
  }

  factory ActiveIngredientRequestModel.fromJson(Map<String, dynamic> json) =>
      _$ActiveIngredientRequestModelFromJson(json);
}