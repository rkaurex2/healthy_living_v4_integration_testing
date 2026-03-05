import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:healthy_living_shared/src/ui/widgets/filters/ingredient_preference_toggle_tile.dart';

class IngredientPreferencesFilter extends StatelessWidget {
  final IngredientPreferencesFilterModel preferences;
  final ValueChanged<IngredientPreferencesFilterModel> onPreferencesChanged;
  final void Function(AppRoutes approutes) onManagePreferencesTap;
  final bool hasAnyAvoidedIngredientPreferenceList;
  final bool hasAnyPreferredIngredientPreferenceList;

  const IngredientPreferencesFilter({
    required this.preferences,
    required this.onPreferencesChanged,
    required this.onManagePreferencesTap,
    required this.hasAnyAvoidedIngredientPreferenceList,
    required this.hasAnyPreferredIngredientPreferenceList,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final localizations = HealthyLivingSharedLocalizations.of(context)!;
    final isIngredientPreferencesNotSetUp =
        !hasAnyAvoidedIngredientPreferenceList &&
        !hasAnyPreferredIngredientPreferenceList;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DSText(
              text: localizations.filters_ingredientPreferences_title,
              textStyle: DSTextStyleType.primaryHeadingXs,
              textColor: context.dsColors.textPrimaryDefault,
            ),
            if (isIngredientPreferencesNotSetUp) ...{
              DSSpacingWidget.vertical(spacing: context.dsSpacing.sp200),
              DSText(
                text:
                    localizations
                        .filter_ingredientPreferences_youHaveNotAddedPreferences,
                textStyle: DSTextStyleType.primaryBodySRegular,
                textColor: context.dsColors.textNeutralSecondary,
              ),
            },
            DSSpacingWidget.vertical(spacing: context.dsSpacing.sp200),
            GestureDetector(
              onTap: () {
                onManagePreferencesTap(AppRoutes.account);
              },
              child: DSText(
                text:
                    isIngredientPreferencesNotSetUp
                        ? localizations.general_setUpYourPreferences
                        : localizations
                            .filters_ingredientPreferences_manageYourPreferences,
                textStyle: DSTextStyleType.primaryBodySRegular,
                textColor: context.dsColors.textPrimaryLink,
                decoration: TextDecoration.underline,
                decorationColor: context.dsColors.textPrimaryLink,
              ),
            ),
          ],
        ),
        DSSpacingWidget.vertical(spacing: context.dsSpacing.sp500),
        Column(
          children: [
            IngredientPreferenceToggleTile(
              title:
                  localizations
                      .healthyLivingShared_ingredients_freeAvoidedIngredient,
              description:
                  localizations
                      .filters_ingredientPreferences_doNotShowAvoidedIngredientsProducts,
              iconPath: DSIcons.icFreeFromAvoidedFilled,
              isSelected: preferences.isAvoided == true,
              disabled: !hasAnyAvoidedIngredientPreferenceList,
              onToggle: (value) {
                onPreferencesChanged(preferences.copyWith(isAvoided: value));
              },
            ),
            DSSpacingWidget.vertical(spacing: context.dsSpacing.sp400),
            IngredientPreferenceToggleTile(
              title:
                  localizations
                      .healthyLivingShared_ingredients_containsPreferredIngredient,
              description:
                  localizations
                      .filters_ingredientPreferences_onlyShowPreferredIngredientsProducts,
              iconPath: DSIcons.icPreferFilled,
              isSelected: preferences.isPreferred == true,
              disabled: !hasAnyPreferredIngredientPreferenceList,
              onToggle: (value) {
                onPreferencesChanged(preferences.copyWith(isPreferred: value));
              },
            ),
          ],
        ),
      ],
    );
  }
}
