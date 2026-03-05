import 'package:design_system/design_system.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:flutter/material.dart';

class HealthConcernListItem extends StatelessWidget {
  const HealthConcernListItem({required this.concern, super.key});

  final FindingsHealthConcernUIModel concern;

  @override
  Widget build(BuildContext context) {
    final localization = HealthyLivingSharedLocalizations.of(context)!;
    final level = concern.hazardLevel;
    final label = _hazardLabel(level, localization);
    final dotColor = _hazardDotColor(context, level);
    return Padding(
      padding: EdgeInsets.only(
        top: context.dsSpacing.sp400,
        bottom: context.dsSpacing.sp200,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: context.dsSizes.sz800,
            width: context.dsSizes.sz800,
            decoration: BoxDecoration(
              color: context.dsColors.surfaceAdditionalNude50,
              borderRadius: BorderRadius.circular(context.dsRadius.rd300),
            ),
            child: Center(
              child: DSImage.asset(
                concern.iconPath,
                height: context.dsSizes.sz500,
                width: context.dsSizes.sz500,
              ),
            ),
          ),
          DSSpacingWidget.horizontal(spacing: context.dsSpacing.sp300),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DSText(
                  text: concern.title,
                  textStyle: DSTextStyleType.primaryBodySMedium,
                  textColor: context.dsColors.textPrimaryDefault,
                ),
                DSSpacingWidget.vertical(spacing: context.dsSpacing.sp100),
                Row(
                  children: [
                    Container(
                      height: context.dsSizes.sz200,
                      width: context.dsSizes.sz200,
                      decoration: BoxDecoration(
                        color: dotColor,
                        shape: BoxShape.circle,
                      ),
                    ),
                    DSSpacingWidget.horizontal(
                      spacing: context.dsSpacing.sp100,
                    ),
                    DSText(
                      text: label,
                      textStyle: DSTextStyleType.primaryCaption,
                      textColor: context.dsColors.textNeutralSecondary,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  String _hazardLabel(
    HazardLevel level,
    HealthyLivingSharedLocalizations localization,
  ) {
    switch (level) {
      case HazardLevel.high:
        return localization.product_rating_hazardHighText;
      case HazardLevel.moderate:
        return localization.product_rating_hazardModerateText;
      case HazardLevel.low:
      default:
        return localization.product_rating_hazardLowText;
    }
  }

  Color _hazardDotColor(BuildContext context, HazardLevel level) {
    return level.displayColor(context);
  }
}
