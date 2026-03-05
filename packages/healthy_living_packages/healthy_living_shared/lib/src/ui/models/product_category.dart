import 'package:healthy_living_shared/healthy_living_shared.dart';

enum ProductCategory {
  personalCare(value: "personal_care"),
  food(value: "food"),
  sunscreen(value: "sunscreen"),
  cleaner(value: "cleaner");

  final String value;

  const ProductCategory({required this.value});

  static ProductCategory? fromName(String? name) {
    if (name.isValidValue && name!.toLowerCase() == StringConstants.cosmetic) {
      return ProductCategory.personalCare;
    }
    if (name.isValidValue && name!.toLowerCase() == StringConstants.cleaners) {
      return ProductCategory.cleaner;
    }

    for (final productCategory in ProductCategory.values) {
      bool isFound = productCategory.value.toLowerCase() == name?.toLowerCase();

      if (isFound) {
        return productCategory;
      }
    }
    return null;
  }
}
