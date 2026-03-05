import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class ScoreBadgeLabelWithData extends StatelessWidget {
  final String score;
  final Color scoreBackgroundColor;
  final String? hazardText;
  final String? dataText;

  const ScoreBadgeLabelWithData({
    required this.score,
    required this.scoreBackgroundColor,
    this.hazardText,
    this.dataText,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
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

        if (hazardText.isValidValue) ...{
          DSSpacingWidget.horizontal(spacing: context.dsSpacing.sp200),
          Flexible(
            child: DSText(
              text: hazardText!,
              textStyle: DSTextStyleType.primaryBodySRegular,
              textColor: context.dsColors.textNeutralOnWhite,
            ),
          ),
        },
        if (hazardText.isValidValue && dataText.isValidValue) ...{
          DSSpacingWidget.horizontal(spacing: context.dsSpacing.sp100),
          Container(
            width: 1,
            height: 14,
            color: context.dsColors.strokeNeutralDefault,
          ),
          DSSpacingWidget.horizontal(spacing: context.dsSpacing.sp100),
        },
        if (dataText.isValidValue) ...{
          if (!hazardText.isValidValue) ...{
            DSSpacingWidget.horizontal(spacing: context.dsSpacing.sp200),
          },
          DSText(
            text: dataText!,
            textStyle: DSTextStyleType.primaryBodySRegular,
            textColor: context.dsColors.textNeutralSecondary,
          ),
        },
      ],
    );
  }
}
