import 'package:healthy_living_shared/healthy_living_shared.dart';

enum ProductFormType {
  liquid,
  powder,
  spray,
  pressedPowder,
  aerosolSpray,
  unknown;

  static ProductFormType fromString(String? value) {
    switch (value) {
      case StringConstants.liquid:
        return ProductFormType.liquid;
      case StringConstants.powder:
        return ProductFormType.powder;
      case StringConstants.spray:
        return ProductFormType.spray;
      case StringConstants.pressedPowder:
        return ProductFormType.pressedPowder;
      case StringConstants.aerosolSpray:
        return ProductFormType.aerosolSpray;
      default:
        return ProductFormType.unknown;
    }
  }
}

extension ProductFormTypeX on ProductFormType {
  String get value {
    switch (this) {
      case ProductFormType.liquid:
        return StringConstants.liquid;
      case ProductFormType.powder:
        return StringConstants.powder;
      case ProductFormType.spray:
        return StringConstants.spray;
      case ProductFormType.pressedPowder:
        return StringConstants.pressedPowder;
      case ProductFormType.aerosolSpray:
        return StringConstants.aerosolSpray;
      default:
        return "";
    }
  }
}
