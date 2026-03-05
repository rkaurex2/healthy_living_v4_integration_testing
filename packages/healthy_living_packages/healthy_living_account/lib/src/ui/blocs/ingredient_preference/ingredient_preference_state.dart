import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_account/src/ui/model/ingredient_preference_category_ui_model.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
part 'ingredient_preference_state.freezed.dart';

@freezed
sealed class IngredientPreferenceState with _$IngredientPreferenceState {
  const factory IngredientPreferenceState.initial() =
      IngredientPreferenceInitial;
  const factory IngredientPreferenceState.ingredientPreferenceLoadInProgress() =
      IngredientPreferenceLoadInProgress;
  const factory IngredientPreferenceState.activeIngredientPreferenceLoadInProgress() =
      ActiveIngredientPreferenceLoadInProgress;
  const factory IngredientPreferenceState.loadIngredientPreference({
    required List<CuratedIngredientPreferenceListModel?> avoidList,
    required List<CuratedIngredientPreferenceListModel?> preferList,
  }) = LoadIngredientPreference;
  const factory IngredientPreferenceState.ingredientPreferenceLoadFail({
    required Exception exception,
  }) = IngredientPreferenceLoadFail;
  const factory IngredientPreferenceState.deletePreferenceLoadFail({
    required Exception exception,
  }) = DeletePreferenceLoadFail;

  const factory IngredientPreferenceState.activePreferenceLoadFail({
    required Exception exception,
  }) = ActivePreferenceLoadFail;

  const factory IngredientPreferenceState.loadActiveIngredientPreference({
    required List<IngredientPreferenceCategoryUiModel> list,
  }) = LoadActiveIngredientPreference;

  const factory IngredientPreferenceState.viewedFtUx() = ViewedFtUx;
  const factory IngredientPreferenceState.savePreferenceLoadInProgress({
    required String listType,
    required int index,
  }) = SavePreferenceLoadInProgress;

  const factory IngredientPreferenceState.savePreferenceLoadSuccess({
    required String listType,
    required int index,
  }) = SavePreferenceLoadSuccess;
  const factory IngredientPreferenceState.deletedPreferenceSuccess({
    required String listType,
    required int index,
  }) = DeletedPreferenceSuccess;
  const factory IngredientPreferenceState.savePreferenceFail({
    required Exception exception,
  }) = SavePreferenceFail;
}
