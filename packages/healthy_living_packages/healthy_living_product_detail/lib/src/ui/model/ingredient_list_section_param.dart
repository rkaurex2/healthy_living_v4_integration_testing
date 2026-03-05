
import 'package:healthy_living_shared/healthy_living_shared.dart';

class IngredientListSectionParam {
  final List<IngredientItemUIModel> leftProduct;
  final List<IngredientItemUIModel> rightProduct;
  final bool? isFirstVerifiedProduct;
  final bool? isSecondVerifiedProduct;
  final Function(int) onTap;

  const IngredientListSectionParam({
    required this.leftProduct,
    required this.rightProduct,
    required this.onTap, this.isFirstVerifiedProduct,
    this.isSecondVerifiedProduct,
  });
}
