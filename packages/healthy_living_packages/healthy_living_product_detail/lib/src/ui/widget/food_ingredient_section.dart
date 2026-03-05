import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class FoodIngredientSection extends StatelessWidget {
  final String foodIngredients;

  const FoodIngredientSection({required this.foodIngredients, super.key});

  @override
  Widget build(BuildContext context) {
    final HealthyLivingSharedLocalizations localization =
        HealthyLivingSharedLocalizations.of(context)!;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: context.dsSpacing.sp400,
        vertical: context.dsSpacing.sp300,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          DSText(
            text:
                localization
                    .filters_ingredientPreferences_ingredientsFromPackaging,
            textStyle: DSTextStyleType.primarySubHeadingS,
            textColor: context.dsColors.textNeutralOnWhite,
            maxLines: 2,
          ),
          DSSpacingWidget.vertical(spacing: context.dsSpacing.sp200),
          DSText(
            text:
                foodIngredients.isValidValue
                    ? foodIngredients
                    : localization.general_healthConcern_notApplicable,
            textStyle: DSTextStyleType.primaryBodyMRegular,
            textColor: context.dsColors.textNeutralOnWhite,
          ),
        ],
      ),
    );
  }
}
