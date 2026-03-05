import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_my_items/l10n/healthy_living_my_items_localizations.dart';

class NoHistoryResultsWidget extends StatelessWidget {
  const NoHistoryResultsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final myListLocalization = HealthyLivingMyItemsLocalizations.of(context)!;
    return Container(
      color: context.dsColors.surfaceNeutralContainerWhite,
      padding: EdgeInsets.symmetric(
        vertical: context.dsSpacing.sp900,
        horizontal: context.dsSpacing.sp700,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          DSImage.asset(
            DSIcons.icHistoryListEmpty,
            height: context.dsSizes.sz900,
            width: context.dsSizes.sz900,
          ),
          DSSpacingWidget.vertical(spacing: context.dsSpacing.sp400),
          DSText(
            text: myListLocalization.myItems_history_yourHistoryIsEmpty,
            textStyle: DSTextStyleType.primaryHeadingXs,
            textColor: context.dsColors.textNeutralOnWhite,
          ),
          DSSpacingWidget.vertical(spacing: context.dsSpacing.sp200),
          DSText(
            text:
                myListLocalization
                    .myItems_history_yourHistoryIsEmptyDescription,
            textStyle: DSTextStyleType.primaryBodySRegular,
            textColor: context.dsColors.textNeutralOnWhite,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
