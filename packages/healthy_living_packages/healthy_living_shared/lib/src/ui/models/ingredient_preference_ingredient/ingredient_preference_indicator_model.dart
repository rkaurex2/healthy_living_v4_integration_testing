import 'package:freezed_annotation/freezed_annotation.dart';

part 'ingredient_preference_indicator_model.freezed.dart';

@freezed
sealed class IngredientPreferenceIndicatorModel with _$IngredientPreferenceIndicatorModel {
  const factory IngredientPreferenceIndicatorModel({
    required bool hasAvoid,
    required bool hasPrefer,
    required int avoidCount,
    required int preferCount,
    required List<IngredientPreferenceIngredientModel> avoidedIngredients,
    required List<IngredientPreferenceIngredientModel> preferredIngredients,
  }) = _IngredientPreferenceIndicatorModel;
}

@freezed
sealed class IngredientPreferenceIngredientModel with _$IngredientPreferenceIngredientModel {
  const factory IngredientPreferenceIngredientModel({
    required String name,
    required String source,
    required String listName,
  }) = _IngredientPreferenceIngredientModel;
}
