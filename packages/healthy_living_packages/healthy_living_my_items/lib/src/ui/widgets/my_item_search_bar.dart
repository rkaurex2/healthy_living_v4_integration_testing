import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_my_items/l10n/healthy_living_my_items_localizations.dart';

class MyItemSearchBar extends StatelessWidget {
  const MyItemSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    final HealthyLivingMyItemsLocalizations healthyLivingMyItemsLocalizations =
        HealthyLivingMyItemsLocalizations.of(context)!;
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: context.dsSpacing.sp300,
        vertical: context.dsSpacing.sp200,
      ),
      margin: EdgeInsets.symmetric(
        horizontal: context.dsSpacing.sp400,
        vertical: context.dsSpacing.sp200,
      ),
      decoration: BoxDecoration(
        color: context.dsColors.surfaceNeutralContainerWhite,
        borderRadius: BorderRadius.circular(context.dsRadius.rd1000),
        border: Border.all(color: context.dsColors.strokeNeutralDefault),
      ),
      child: Row(
        children: [
          DSImage.asset(
            DSIcons.icArrowLeft,
            width: context.dsSpacing.sp500,
            height: context.dsSpacing.sp500,
          ),
          DSSpacingWidget.horizontal(spacing: context.dsSpacing.sp200),
          DSText(
            text: healthyLivingMyItemsLocalizations.myItems_lists_searchLists,
            textStyle: DSTextStyleType.primaryBodyMRegular,
            textColor: context.dsColors.textNeutralSecondary,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
