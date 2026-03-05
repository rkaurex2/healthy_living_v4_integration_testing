import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_account/src/ui/model/ingredient_preference_category_ui_model.dart';
part 'ingredient_preference_event.freezed.dart';

@freezed
sealed class IngredientPreferenceEvent with _$IngredientPreferenceEvent {
  const factory IngredientPreferenceEvent.initialized() = Initialized;
  const factory IngredientPreferenceEvent.ingredientPreferencesListFetched({
    String? category,
    String? listType,
    bool? userSelected,
    bool? active,
    @Default(false) bool refreshListWithOutLoader,
  }) = IngredientPreferencesListFetched;

  const factory IngredientPreferenceEvent.activeIngredientPreferencesFetched({
    required List<IngredientPreferenceCategoryUiModel> list,
    @Default(false) bool refreshListWithOutLoader,
  }) = ActiveIngredientPreferencesFetched;

  const factory IngredientPreferenceEvent.ftUxViewed() = FtUxViewed;
  const factory IngredientPreferenceEvent.saveIngredientPreferences({
    required int id,
    required bool userSelected,
    required String listType,
    required int index,
  }) = SaveIngredientPreferences;

  const factory IngredientPreferenceEvent.deleteIngredientPreferences({
    required int id,
    required int userSelectionId,
    required bool userSelected,
    required String listType,
    required int index,
  }) = DeleteIngredientPreferences;
}
