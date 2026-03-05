import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_shared/l10n/healthy_living_shared_localizations.dart';
import 'package:healthy_living_shared/src/ui/models/ingredient_preference.dart';
import 'package:healthy_living_shared/src/ui/models/ingredient_preference_badge/ingredient_preference_badge_size.dart';
import 'package:healthy_living_shared/src/ui/models/ingredient_preference_badge/ingredient_preference_badge_type.dart';

class IngredientPreferenceBadge extends StatelessWidget {
  final IngredientPreference preference;
  final IngredientPreferenceBadgeSize size;
  final IngredientPreferenceBadgeType ingredientPreferenceBadgeType;

  const IngredientPreferenceBadge({
    required this.preference,
    this.size = IngredientPreferenceBadgeSize.large,
    this.ingredientPreferenceBadgeType = IngredientPreferenceBadgeType.iconText,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isAvoid = preference == IngredientPreference.avoid;
    final HealthyLivingSharedLocalizations healthyLivingSharedLocalizations =
        HealthyLivingSharedLocalizations.of(context)!;
    final isTablet = DesignSystemUtil().isTablet();
    final spec = size.getBadgeSizeSpec(isTablet: isTablet);
    final type = ingredientPreferenceBadgeType;
    return Container(
      padding: spec.containerPadding,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(context.dsRadius.rd1000),
        color:
            isAvoid
                ? context.dsColors.surfaceSemanticErrorLight
                : context.dsColors.surfaceAdditionalPurple25,
        border:
            type == IngredientPreferenceBadgeType.largeLongText
                ? Border.all(
                  color:
                      isAvoid
                          ? context.dsColors.strokeSemanticOnError
                          : context.dsColors.surfaceAdditionalPurple500,
                  width: 1,
                )
                : null,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DSImage.asset(
            isAvoid ? DSIcons.icAvoid : DSIcons.icPrefer,
            height: spec.iconSize,
            width: spec.iconSize,
          ),

          if (spec.textStyle != null &&
              type != IngredientPreferenceBadgeType.icon) ...{
            DSSpacingWidget.horizontal(spacing: context.dsSpacing.sp100),
            type == IngredientPreferenceBadgeType.longText ||
                    type == IngredientPreferenceBadgeType.largeLongText
                ? DSText(
                  text:
                      isAvoid
                          ? healthyLivingSharedLocalizations
                              .general_yourAvoidedIngredient
                          : healthyLivingSharedLocalizations
                              .general_yourPreferredIngredient,
                  textStyle: spec.textStyle!,
                  textColor: context.dsColors.textNeutralOnWhite,
                )
                : DSText(
                  text:
                      isAvoid
                          ? healthyLivingSharedLocalizations.general_avoid
                          : healthyLivingSharedLocalizations.general_prefer,
                  textStyle: spec.textStyle!,
                  textColor: context.dsColors.textNeutralOnWhite,
                ),
            DSSpacingWidget.horizontal(spacing: 6),
          },
        ],
      ),
    );
  }
}
