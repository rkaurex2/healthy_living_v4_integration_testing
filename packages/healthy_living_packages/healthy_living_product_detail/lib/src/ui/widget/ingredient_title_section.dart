import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_product_detail/src/ui/widget/ingredients_non_verified_widget.dart';
import 'package:healthy_living_product_detail/src/ui/widget/verified_product_section.dart';

class IngredientTitleSection extends StatelessWidget {
  const IngredientTitleSection({
    required this.isEWGVerifiedFirstProduct,
    required this.isEWGVerifiedSecondProduct,
    super.key,
  });

  final bool isEWGVerifiedFirstProduct;
  final bool isEWGVerifiedSecondProduct;

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child:
                isEWGVerifiedFirstProduct == true
                    ? VerifiedProductSection(
                      isBothVerified:
                          isEWGVerifiedFirstProduct &&
                          isEWGVerifiedSecondProduct,
                    )
                    : IngredientsNonVerifiedWidget(isBothNonVerified: false),
          ),

          VerticalDivider(
            width: 0,
            thickness: 1,
            color: context.dsColors.strokeNeutralDefault,
          ),
          Expanded(
            child:
                isEWGVerifiedSecondProduct == true
                    ? VerifiedProductSection(
                      isBothVerified:
                          isEWGVerifiedFirstProduct &&
                          isEWGVerifiedSecondProduct,
                    )
                    : IngredientsNonVerifiedWidget(isBothNonVerified: false),
          ),
        ],
      ),
    );
  }
}
