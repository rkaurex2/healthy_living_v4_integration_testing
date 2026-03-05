import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_shared/src/domain/models/ingredient_preference/currated_ingredient_user_selection.dart';

part 'save_curated_ingredient_preferences_request_model.freezed.dart';
part 'save_curated_ingredient_preferences_request_model.g.dart';

@freezed
sealed class SaveCuratedIngredientPreferencesRequestModel
    with _$SaveCuratedIngredientPreferencesRequestModel {
  const factory SaveCuratedIngredientPreferencesRequestModel({
    @JsonKey(name: 'curated_ingredient_preference_list_user_selection')
    required CuratedIngredientUserSelection userSelection,
  }) = _SaveCuratedIngredientPreferencesRequestModel;

  factory SaveCuratedIngredientPreferencesRequestModel.fromJson(
    Map<String, dynamic> json,
  ) => _$SaveCuratedIngredientPreferencesRequestModelFromJson(json);
}
