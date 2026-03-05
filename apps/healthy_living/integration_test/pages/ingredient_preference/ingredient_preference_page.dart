import 'package:healthy_living/src/core/test_keys.dart';

import '../base_page.dart';

class IngredientPreferencePage extends BasePage {
  const IngredientPreferencePage(super.tester);

  Future<void> skipFtux() => tap(TestKeys.ingredientPrefFtux);
  Future<void> waitForCategories() => waitFor(TestKeys.ingredientPrefCats);
  Future<void> selectCategory() => tap(TestKeys.ingredientPrefCats);
  Future<void> waitForAvoidList() => waitFor(TestKeys.ingredientAvoidList);
  Future<void> waitForPreferList() => waitFor(TestKeys.ingredientPreferList);
}
