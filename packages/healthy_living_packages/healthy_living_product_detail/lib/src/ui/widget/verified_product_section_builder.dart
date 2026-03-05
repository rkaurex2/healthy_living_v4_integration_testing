import 'package:flutter/material.dart';
import 'package:healthy_living_product_detail/src/ui/widget/ingredient_title_section.dart';
import 'package:healthy_living_product_detail/src/ui/widget/ingredients_non_verified_widget.dart';
import 'package:healthy_living_product_detail/src/ui/widget/verified_product_section.dart';

class VerifiedProductSectionBuilder extends StatelessWidget {
  final bool isFirstVerified;
  final bool isSecondVerified;

  const VerifiedProductSectionBuilder({
    required this.isFirstVerified,
    required this.isSecondVerified,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final bothVerified = isFirstVerified && isSecondVerified;
    final bothNonVerified = !isFirstVerified && !isSecondVerified;

    if (bothVerified) {
      return const VerifiedProductSection(isBothVerified: true);
    }

    if (bothNonVerified) {
      return const IngredientsNonVerifiedWidget(isBothNonVerified: true);
    }

    return IngredientTitleSection(
      isEWGVerifiedFirstProduct: isFirstVerified,
      isEWGVerifiedSecondProduct: isSecondVerified,
    );
  }
}
