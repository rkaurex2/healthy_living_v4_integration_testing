import 'package:healthy_living_shared/healthy_living_shared.dart';

enum IngredientPreferenceCategoryType {
  personalCare(value: "personal_care"),
  food(value: "food"),
  sunscreens(value: "sunscreen"),
  cleaners(value: "cleaners");

  final String value;

  const IngredientPreferenceCategoryType({required this.value});

  static IngredientPreferenceCategoryType? fromName(String? name) {
    if (name.isValidValue && name!.toLowerCase() == StringConstants.cosmetic) {
      return IngredientPreferenceCategoryType.personalCare;
    }
    if (name.isValidValue && name!.toLowerCase() == StringConstants.cleaner) {
      return IngredientPreferenceCategoryType.cleaners;
    }

    for (final productCategory in IngredientPreferenceCategoryType.values) {
      bool isFound = productCategory.value.toLowerCase() == name?.toLowerCase();

      if (isFound) {
        return productCategory;
      }
    }
    return null;
  }
}
