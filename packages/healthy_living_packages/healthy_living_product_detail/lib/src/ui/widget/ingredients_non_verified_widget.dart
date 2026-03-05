import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_product_detail/l10n/healthy_living_product_detail_localizations.dart';

class IngredientsNonVerifiedWidget extends StatelessWidget {
  final bool isBothNonVerified;

  const IngredientsNonVerifiedWidget({
    required this.isBothNonVerified,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final localizations = HealthyLivingProductDetailLocalizations.of(context)!;
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: context.dsSpacing.sp300,
        horizontal: context.dsSpacing.sp400,
      ),
      child: DSText(
        text:
            isBothNonVerified
                ? localizations
                    .productDetail_ingredients_thisProductIsRatedByIngredientsForCommon
                : localizations
                    .productDetail_ingredients_thisProductIsRatedByIngredients,
        textStyle: DSTextStyleType.primaryBodySRegular,
        textColor: context.dsColors.textNeutralOnWhite,
      ),
    );
  }
}
