import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_scan/l10n/healthy_living_scan_localizations.dart';

class SkipToInstantScoreCard extends StatelessWidget {
  final VoidCallback onProceedToScore;
  final VoidCallback onBackToProductDetails;

  const SkipToInstantScoreCard({
    required this.onProceedToScore,
    required this.onBackToProductDetails,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final HealthyLivingScanLocalizations localization =
    HealthyLivingScanLocalizations.of(context)!;
    return Container(
      padding: EdgeInsets.all(context.dsSpacing.sp300),
      decoration: BoxDecoration(
        color: context.dsColors.surfacePrimaryDefault,
        borderRadius: BorderRadius.circular(context.dsRadius.rd300),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          DSText(
            text:localization.submitProduct_productSubmission_skipToYourInstantScore ,
            textStyle: DSTextStyleType.primaryBodySMedium,
            textColor: context.dsColors.textOnSurfaceDefault,
          ),
          DSSpacingWidget.vertical(spacing: context.dsSpacing.sp100),
          DSText(
            text:
                localization.submitProduct_productSubmission_weCanEstimateAScore,
            textStyle: DSTextStyleType.primaryCaption,
            textColor: context.dsColors.textOnSurfaceDefault,
          ),
          DSSpacingWidget.vertical(spacing: context.dsSpacing.sp300),
          DSButtonPrimary(
            text: localization.submitProduct_productSubmission_proceedToScore,
            type: DSButtonType.outline,
            size: DSButtonSize.small,
            outlineColor: context.dsColors.textOnSurfaceDefault,
            textColor: context.dsColors.textOnSurfaceDefault,
            onPressed: onProceedToScore,
          ),
          DSSpacingWidget.vertical(spacing: context.dsSpacing.sp300),
          DSButtonPrimary(
            onPressed: onBackToProductDetails,
            text: localization.submitProduct_productSubmission_backToProductDetails,
            size: DSButtonSize.small,
          ),
        ],
      ),
    );
  }
}
