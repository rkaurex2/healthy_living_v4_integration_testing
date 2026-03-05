import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_product_detail/l10n/healthy_living_product_detail_localizations.dart';
import 'package:healthy_living_product_detail/src/ui/widget/ingredient_preference_list_item.dart';

class ProductComparisonFreeFromAvoid extends StatelessWidget {
  final List<String> avoidedIngredients;
  final bool hasAvoid;
  const ProductComparisonFreeFromAvoid({
    required this.avoidedIngredients,
    required this.hasAvoid,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final localizations = HealthyLivingProductDetailLocalizations.of(context)!;

    return Padding(
      padding: EdgeInsets.fromLTRB(
        context.dsSpacing.sp400,
        context.dsSpacing.sp400,
        context.dsSpacing.sp400,
        20,
      ),
      child: Column(
        children: [
          if (hasAvoid) ...{
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DSImage.asset(DSIcons.icAvoid),
                    DSSpacingWidget.horizontal(
                      spacing: context.dsSpacing.sp200,
                    ),
                    Expanded(
                      child: DSText(
                        text:
                            localizations
                                .productDetail_compare_ContainsAvoidedIngredients,
                        textStyle: DSTextStyleType.primaryBodySRegular,
                        textColor: context.dsColors.textNeutralOnWhite,
                      ),
                    ),
                  ],
                ),
                DSSpacingWidget.vertical(spacing: 10),
                IngredientPreferenceListItem(items: avoidedIngredients),
              ],
            ),
          } else ...{
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DSImage.asset(DSIcons.icFreeFromAvoided),
                DSSpacingWidget.horizontal(spacing: context.dsSpacing.sp200),
                Expanded(
                  child: DSText(
                    text:
                        localizations
                            .productDetail_productComparison_freeFromAvoidedIngredients,
                    textStyle: DSTextStyleType.primaryBodySRegular,
                    textColor: context.dsColors.textNeutralOnWhite,
                  ),
                ),
              ],
            ),
          },
        ],
      ),
    );
  }
}
