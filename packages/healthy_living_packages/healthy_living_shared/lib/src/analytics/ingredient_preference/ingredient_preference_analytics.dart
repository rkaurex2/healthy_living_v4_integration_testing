import 'package:healthy_living_shared/healthy_living_shared.dart';

abstract class IngredientPreferenceAnalytics {
  Future<void> logIngredientsPreferenceStart({
    required String source,
  });

  Future<void> logIngredientsPreferenceSet({
    required int ingredientId,
    required bool userSelected,
    required String listType,
    required int index,
    required String action,
  });

  Future<void> logIngredientsPreferenceCuratedList({
    required CuratedIngredientPreferenceListModel list,
    required int index,
    required String action,
    required String source,
  });

  Future<void> logIngredientsPreferenceFilter({
    required String filterName,
    required bool enabled,
  });
}
