import 'package:healthy_living_shared/healthy_living_shared.dart';

class UserListItemsModel {
  final int? id;
  final int? position;
  final int? productId;
  final int? skinDeepId;
  final String? productType;
  final UserListProductModel? product;
  final IngredientPreferenceIndicatorModel? ingredientPreferenceIndicator;
  ProductSelectionType? productSelectionType;

  UserListItemsModel({
    this.id,
    this.position,
    this.productId,
    this.skinDeepId,
    this.productType,
    this.product,
    this.productSelectionType,
    this.ingredientPreferenceIndicator,
  });
}
