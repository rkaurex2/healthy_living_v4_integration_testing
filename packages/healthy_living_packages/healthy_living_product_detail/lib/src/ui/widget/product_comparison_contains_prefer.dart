import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_product_detail/l10n/healthy_living_product_detail_localizations.dart';
import 'package:healthy_living_product_detail/src/ui/widget/ingredient_preference_list_item.dart';

class ProductComparisonContainsPrefer extends StatelessWidget {
  final List<String> preferIngredients;

  const ProductComparisonContainsPrefer({
    required this.preferIngredients,
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
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DSImage.asset(DSIcons.icPrefer),
              DSSpacingWidget.horizontal(spacing: context.dsSpacing.sp200),
              Flexible(
                child: DSText(
                  text:
                      localizations
                          .productDetail_productComparison_containsPreferredIngredients,
                  textStyle: DSTextStyleType.primaryBodySRegular,
                  textColor: context.dsColors.textNeutralOnWhite,
                ),
              ),
            ],
          ),
          DSSpacingWidget.vertical(spacing: context.dsSpacing.sp100),
          IngredientPreferenceListItem(items: preferIngredients),
        ],
      ),
    );
  }
}
