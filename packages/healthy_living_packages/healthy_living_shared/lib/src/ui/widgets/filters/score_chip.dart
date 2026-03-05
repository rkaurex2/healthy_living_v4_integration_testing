import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_shared/src/ui/models/filters/hazard_score_filter_model.dart';
import 'package:healthy_living_shared/src/utils/hazard_level_extension.dart';

class ScoreChip extends StatelessWidget {
  final HazardScoreFilterModel model;
  final bool isFirst;
  final bool isLast;
  final bool selected;
  final VoidCallback onTap;
  final HazardLevel? selectedLevel;
  final double? chipHeight;

  const ScoreChip({
    required this.model,
    required this.isFirst,
    required this.isLast,
    required this.selected,
    required this.onTap,
    this.selectedLevel,
    this.chipHeight,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final borderRadius = BorderRadius.horizontal(
      left: isFirst ? Radius.circular(context.dsRadius.rd200) : Radius.zero,
      right: isLast ? Radius.circular(context.dsRadius.rd200) : Radius.zero,
    );

    Color bgColor = model.hazardLevel.displayColor(context);
    if (model.hazardLevel == HazardLevel.verified) {
      bgColor = context.dsColors.surfaceBrandDefault;
    }

    if (selectedLevel != null) {
      final colors = context.dsColors;
      switch (selectedLevel!) {
        case HazardLevel.verified:
          if (model.hazardLevel == HazardLevel.low ||
              model.hazardLevel == HazardLevel.lowest) {
            bgColor = colors.surfaceSemanticSuccessLight;
          } else if (model.hazardLevel == HazardLevel.moderate) {
            bgColor = colors.surfaceSemanticWarningLight;
          } else if (model.hazardLevel == HazardLevel.high ||
              model.hazardLevel == HazardLevel.highest) {
            bgColor = colors.surfaceSemanticErrorLight;
          }
          break;
        case HazardLevel.low:
        case HazardLevel.lowest:
          if (model.hazardLevel == HazardLevel.moderate) {
            bgColor = colors.surfaceSemanticWarningLight;
          } else if (model.hazardLevel == HazardLevel.high ||
              model.hazardLevel == HazardLevel.highest) {
            bgColor = colors.surfaceSemanticErrorLight;
          }
          break;
        case HazardLevel.moderate:
          if (model.hazardLevel == HazardLevel.high ||
              model.hazardLevel == HazardLevel.highest) {
            bgColor = colors.surfaceSemanticErrorLight;
          }
          break;
        case HazardLevel.high:
        case HazardLevel.highest:
        case HazardLevel.noData:
          break;
      }
    }

    final showIcon = model.hazardLevel == HazardLevel.verified;

    final bool isAboveSelected =
        selectedLevel != null
            ? _rank(model.hazardLevel) > _rank(selectedLevel!)
            : false;

    final Color labelColor =
        selected
            ? context.dsColors.textOnSurfaceDefault
            : (isAboveSelected
                ? context.dsColors.textNeutralOnWhite
                : Colors.white);

    return InkWell(
      onTap: onTap,
      borderRadius: borderRadius,
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: borderRadius,
          border:
              isLast
                  ? Border.all(width: 1, color: Colors.white)
                  : Border(
                    left: BorderSide(color: Colors.white, width: 1),
                    top: BorderSide(color: Colors.white, width: 1),
                    bottom: BorderSide(color: Colors.white, width: 1),
                  ),
        ),
        height: context.dsSizes.sz600,
        child:
            showIcon
                ? DSImage.asset(
                  DSIcons.icEWGVerified,
                  width: context.dsSizes.sz500,
                  height: context.dsSizes.sz500,
                  color: context.dsColors.iconOnSurfaceDefault,
                )
                : DSText(
                  text: model.title,
                  textStyle: DSTextStyleType.primaryButtonSMedium,
                  textColor: labelColor,
                ),
      ),
    );
  }

  int _rank(HazardLevel level) {
    switch (level) {
      case HazardLevel.verified:
        return 0;
      case HazardLevel.lowest:
      case HazardLevel.low:
        return 1;
      case HazardLevel.moderate:
        return 2;
      case HazardLevel.high:
      case HazardLevel.highest:
        return 3;
      case HazardLevel.noData:
        return 99;
    }
  }
}
