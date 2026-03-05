import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_product_detail/l10n/healthy_living_product_detail_localizations.dart';
import 'package:healthy_living_product_detail/src/ui/widget/ingredient_preference_list_item.dart';
import 'package:healthy_living_product_detail/src/ui/widget/product_comparison_contains_prefer.dart';
import 'package:healthy_living_product_detail/src/ui/widget/product_comparison_free_from_avoid.dart';
import 'package:healthy_living_product_detail/src/ui/widget/product_comparison_ingredient.dart';
import 'package:healthy_living_product_detail/src/ui/widget/product_comparison_section_header.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class IngredientPreferencesCard extends StatelessWidget {
  const IngredientPreferencesCard({
    required this.leftProductPreferenceIndicatorModel,
    required this.rightProductPreferenceIndicatorModel,
    super.key,
  });
  final IngredientPreferenceIndicatorModel? leftProductPreferenceIndicatorModel;
  final IngredientPreferenceIndicatorModel?
  rightProductPreferenceIndicatorModel;

  @override
  Widget build(BuildContext context) {
    final localizations = HealthyLivingProductDetailLocalizations.of(context)!;

    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: context.dsColors.surfaceNeutralContainerWhite,
            border: Border.all(
              color: context.dsColors.strokeNeutralDefault,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(context.dsSizes.sz100),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ProductComparisonSectionHeader(
                title:
                    localizations.productDetail_compare_ingredientPreferences,
              ),
              ProductComparisonIngredient(
                left: leftProductPreferenceIndicatorModel,
                right: rightProductPreferenceIndicatorModel,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
