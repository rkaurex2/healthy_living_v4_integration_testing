import 'package:healthy_living_shared/src/ui/models/ingredient_preference_badge/ingredient_preference_badge_spec.dart';
import 'package:healthy_living_shared/src/ui/models/ingredient_preference_badge/ingredient_preference_badge_spec_large.dart';
import 'package:healthy_living_shared/src/ui/models/ingredient_preference_badge/ingredient_preference_badge_spec_small.dart';

enum IngredientPreferenceBadgeSize {
  large(
    IngredientPreferenceBadgeSpecLarge.mobile,
    IngredientPreferenceBadgeSpecLarge.tablet,
  ),
  small(
    IngredientPreferenceBadgeSpecSmall.mobile,
    IngredientPreferenceBadgeSpecSmall.tablet,
  );

  final IngredientPreferenceBadgeSpec ingredientPreferenceBadgeSpecMobile;
  final IngredientPreferenceBadgeSpec ingredientPreferenceBadgeSpecTablet;

  const IngredientPreferenceBadgeSize(
    this.ingredientPreferenceBadgeSpecMobile,
    this.ingredientPreferenceBadgeSpecTablet,
  );

  IngredientPreferenceBadgeSpec getBadgeSizeSpec({required bool isTablet}) {
    return isTablet
        ? ingredientPreferenceBadgeSpecTablet
        : ingredientPreferenceBadgeSpecMobile;
  }
}
