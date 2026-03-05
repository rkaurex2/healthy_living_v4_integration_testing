import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart'
    show IngredientPreferenceMatch;
import 'package:healthy_living_shared/l10n/healthy_living_shared_localizations.dart';
import 'package:healthy_living_shared/src/utils/string_extension.dart';

class IngredientMatchStatement extends StatelessWidget {
  final IngredientPreferenceMatch matchType;
  final String ingredientName;
  final String listName;

  const IngredientMatchStatement({
    required this.matchType,
    required this.ingredientName,
    required this.listName,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final HealthyLivingSharedLocalizations localizations =
        HealthyLivingSharedLocalizations.of(context)!;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
      child: Row(
        children: [
          _buildIcon(context),
          DSSpacingWidget.horizontal(spacing: context.dsSpacing.sp200),
          Expanded(
            child: DSText(
              text: _getStatementText(localizations),
              textStyle: DSTextStyleType.primaryBodySRegular,
              textColor: context.dsColors.textNeutralOnWhite,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildIcon(BuildContext context) {
    switch (matchType) {
      case IngredientPreferenceMatch.yes:
        return DSImage.asset(
          DSIcons.icCircleCheck,
          height: context.dsSizes.sz400,
          width: context.dsSizes.sz400,
          color: context.dsColors.iconSemanticOnSuccess,
        );
      case IngredientPreferenceMatch.no:
        return DSImage.asset(
          DSIcons.icCloseInCircle,
          height: context.dsSizes.sz400,
          width: context.dsSizes.sz400,
          color: context.dsColors.iconSemanticOnError,
        );
      case IngredientPreferenceMatch.unknown:
        return DSImage.asset(
          DSIcons.icQuestion,
          height: context.dsSizes.sz400,
          width: context.dsSizes.sz400,
          color: context.dsColors.iconSemanticOnWarning,
        );
      case IngredientPreferenceMatch.preferred:
        return DSImage.asset(
          DSIcons.icCircleCheck,
          height: context.dsSizes.sz400,
          width: context.dsSizes.sz400,
          color: context.dsColors.surfaceAdditionalPurple500,
        );
    }
  }

  String _getStatementText(HealthyLivingSharedLocalizations localizations) {
    switch (matchType) {
      case IngredientPreferenceMatch.yes:
        return localizations.general_ingredients_freeFrom(ingredientName);
      case IngredientPreferenceMatch.no:
      case IngredientPreferenceMatch.preferred:
        final text = localizations.general_ingredients_contains(ingredientName);
        final textWithListName =
            listName.isValidValue
                ? "$text${localizations.general_ingredients_inTheListName(listName)}"
                : text;
        return textWithListName;
      case IngredientPreferenceMatch.unknown:
        return localizations.general_ingredients_mayContainTraces(
          ingredientName,
        );
    }
  }
}
