import 'package:freezed_annotation/freezed_annotation.dart';

part 'ingredient_preferences_filter_model.freezed.dart';
part 'ingredient_preferences_filter_model.g.dart';

@freezed
sealed class IngredientPreferencesFilterModel with _$IngredientPreferencesFilterModel {
  const factory IngredientPreferencesFilterModel({
    @Default(false) bool isPreferred,
    @Default(false) bool isAvoided,
  }) = _IngredientPreferencesFilterModel;

  factory IngredientPreferencesFilterModel.fromJson(Map<String, dynamic> json) =>
      _$IngredientPreferencesFilterModelFromJson(json);
}