import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class ProductSubmissionHistoryScoreBadgeLabel extends StatelessWidget {
  final String score;
  final Color scoreBackgroundColor;
  final String? hazardText;
  final String? dataText;

  const ProductSubmissionHistoryScoreBadgeLabel({
    required this.score,
    required this.scoreBackgroundColor,
    this.hazardText,
    this.dataText,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final localization = HealthyLivingSharedLocalizations.of(context)!;
    return score.isValidValue
        ? Container(
          padding: EdgeInsets.only(right: context.dsSpacing.sp400),
          decoration: BoxDecoration(
            color: context.dsColors.surfaceNeutralContainer2,
            borderRadius: BorderRadius.circular(context.dsRadius.rd1000),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              HeaderRatingScoreBadge(
                text: score,
                backgroundColor: scoreBackgroundColor,
                width: context.dsSizes.sz500,
                height: context.dsSizes.sz500,
                textStyle:
                    score.contains('.') || score.contains('-')
                        ? DSTextStyleType.primaryBodySMedium
                        : null,
              ),

              DSSpacingWidget.horizontal(spacing: context.dsSpacing.sp200),
              DSText(
                text: localization.submitProduct_productSubmission_instantScore,
                textStyle: DSTextStyleType.primaryCaption,
                textColor: context.dsColors.textNeutralSecondary,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        )
        : Container(
          height: context.dsSizes.sz500,
          padding: EdgeInsets.symmetric(horizontal: context.dsSpacing.sp400),
          decoration: BoxDecoration(
            color: context.dsColors.surfaceNeutralContainer2,
            borderRadius: BorderRadius.circular(context.dsRadius.rd1000),
          ),
          alignment: Alignment.center,
          child: DSText(
            text: localization.submitProduct_productSubmission_scorePending,
            textStyle: DSTextStyleType.primaryCaption,
            textColor: context.dsColors.textNeutralSecondary,
            textAlign: TextAlign.center,
          ),
        );
  }
}
