
import 'package:healthy_living_shared/healthy_living_shared.dart';

class IngredientListItemParams {
  final bool isVerifiedProduct;
  final IngredientItemUIModel? item;
  final int index;
  final bool isLast;
  final Function(int) onTap;

  const IngredientListItemParams({
    required this.isVerifiedProduct,
    required this.item,
    required this.index,
    required this.isLast,
    required this.onTap,
  });
}
