import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_scan/l10n/healthy_living_scan_localizations.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class ActiveIngredientSectionWidget extends StatelessWidget {
  const ActiveIngredientSectionWidget({required this.infoUIModel, super.key});

  final SubmitProductInfoParams infoUIModel;

  @override
  Widget build(BuildContext context) {
    final HealthyLivingScanLocalizations localization =
        HealthyLivingScanLocalizations.of(context)!;
    final HealthyLivingSharedLocalizations sharedLocalizations =
        HealthyLivingSharedLocalizations.of(context)!;

    final items = infoUIModel.activeIngredient ?? [];
    if (items.isEmpty) return const SizedBox.shrink();

    final pillDecoration = BoxDecoration(
      color: context.dsColors.surfaceNeutralDisabled,
      borderRadius: BorderRadius.circular(context.dsRadius.rd200),
      border: Border.all(
        color: context.dsColors.strokeNeutralDisabled,
        width: 1,
      ),
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              flex: 3,
              child: DSText(
                text: localization.submitProduct_info_activeIngredients,
                textStyle: DSTextStyleType.primaryCaption,
                textColor: context.dsColors.textNeutralDisabled,
              ),
            ),
            DSSpacingWidget.horizontal(spacing: context.dsSpacing.sp400),
            Expanded(
              flex: 1,
              child: DSText(
                text: localization.submitProduct_info_percentage,
                textStyle: DSTextStyleType.primaryCaption,
                textColor: context.dsColors.textNeutralDisabled,
              ),
            ),
          ],
        ),
        DSSpacingWidget.vertical(spacing: context.dsSpacing.sp200),

        ...items.map((item) {
          final ingredientText =
              item.ingredient.isValidValue
                  ? item.ingredient
                  : sharedLocalizations.general_na;

          final percentText =
              item.percent.isValidValue
                  ? '${item.percent}%'
                  : sharedLocalizations.general_na;

          return Padding(
            padding: EdgeInsets.only(bottom: context.dsSpacing.sp300),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: context.dsSpacing.sp300,
                      vertical: context.dsSpacing.sp200,
                    ),
                    decoration: pillDecoration,
                    child: DSText(
                      text: ingredientText,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      textStyle: DSTextStyleType.primaryBodyMRegular,
                      textColor: context.dsColors.textNeutralSecondary,
                    ),
                  ),
                ),

                DSSpacingWidget.horizontal(spacing: context.dsSpacing.sp400),
                Expanded(
                  flex: 1,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: context.dsSpacing.sp300,
                      vertical: context.dsSpacing.sp200,
                    ),
                    decoration: pillDecoration,
                    child: DSText(
                      text: percentText,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      textStyle: DSTextStyleType.primaryBodyMRegular,
                      textColor: context.dsColors.textNeutralSecondary,
                    ),
                  ),
                ),
              ],
            ),
          );
        }),
      ],
    );
  }
}
