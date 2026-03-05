import 'package:freezed_annotation/freezed_annotation.dart';

part 'currated_ingredient_user_selection.freezed.dart';
part 'currated_ingredient_user_selection.g.dart';

@freezed
sealed class CuratedIngredientUserSelection
    with _$CuratedIngredientUserSelection {
  const factory CuratedIngredientUserSelection({
    @JsonKey(name: 'curated_ingredient_preference_list_id')
    required String listId,
    required bool enabled,
    required int priority,
  }) = _CuratedIngredientUserSelection;

  factory CuratedIngredientUserSelection.fromJson(Map<String, dynamic> json) =>
      _$CuratedIngredientUserSelectionFromJson(json);
}
