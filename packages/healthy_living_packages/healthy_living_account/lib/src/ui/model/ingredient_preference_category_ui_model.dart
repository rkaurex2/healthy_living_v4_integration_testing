import 'dart:ui';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_account/src/ui/model/ingredient_preference_category_type.dart';

part 'ingredient_preference_category_ui_model.freezed.dart';

@freezed
sealed class IngredientPreferenceCategoryUiModel
    with _$IngredientPreferenceCategoryUiModel {
  const factory IngredientPreferenceCategoryUiModel({
    required String title,
    required String description,
    required Color titleColor,
    required Color descriptionColor,
    required String imagePath,
    required int avoidCount,
    required int preferredCount,
    required IngredientPreferenceCategoryType type,
    required Color backgroundColor,
    required Color bottomBackgroundColor,
    required bool isLoadingItems,
    required bool unableToFetch,
  }) = _IngredientPreferenceCategoryUiModel;
}
