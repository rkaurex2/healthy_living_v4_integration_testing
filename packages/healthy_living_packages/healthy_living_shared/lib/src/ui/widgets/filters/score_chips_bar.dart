import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:healthy_living_shared/src/ui/models/filters/hazard_score_filter_model.dart';
import 'package:healthy_living_shared/src/ui/widgets/filters/score_chip.dart';

class ScoreChipsBar extends StatelessWidget {
  final List<HazardScoreFilterModel> items;
  final int? selectedIndex;
  final ValueChanged<int> onSelected;

  const ScoreChipsBar({
    required this.items,
    required this.selectedIndex,
    required this.onSelected,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.dsColors;
    final localizations = HealthyLivingSharedLocalizations.of(context)!;

    return LayoutBuilder(
      builder: (context, constraints) {
        const double outerPadding = 2;
        const double barWidth = 5;
        const double barHeight = 48;
        const double barTop = -6;
        const double targetChipHeight = 38.0; // Match Figma design height
        // Account for outer padding (4px total) and border (2px total) to get actual chip height
        const double chipHeight = targetChipHeight - outerPadding * 2 - 2; // 32 - 4 - 2 = 26px

        final double usableWidth = constraints.maxWidth - (outerPadding * 2);
        final int count = items.length;
        final bool hasSelection =
            selectedIndex != null && selectedIndex! >= 0 && selectedIndex! < count;
        final double segmentWidth = count > 0 ? usableWidth / count : 0;
        final double barLeft = hasSelection
            ? outerPadding + segmentWidth * (selectedIndex! + 1) - (barWidth / 2)
            : 0;

        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: targetChipHeight,
                  decoration: BoxDecoration(
                    color: colors.surfacePrimaryDefault,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  padding: const EdgeInsets.all(outerPadding),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      for (int i = 0; i < items.length; i++) ...{
                        Expanded(
                          child: ScoreChip(
                            model: items[i],
                            isFirst: i == 0,
                            isLast: i == items.length - 1,
                            selected: selectedIndex == i,
                            selectedLevel:
                                hasSelection ? items[selectedIndex!].hazardLevel : null,
                            onTap: () => onSelected(i),
                            chipHeight: chipHeight,
                          ),
                        ),
                      },
                    ],
                  ),
                ),
                if (hasSelection)
                  Positioned(
                    top: barTop,
                    left: barLeft,
                    child: Container(
                      width: barWidth,
                      height: barHeight,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: colors.surfacePrimaryDefault),
                        borderRadius: BorderRadius.circular(2),
                      ),
                    ),
                  ),
              ],
            ),
            // Add spacing between chips and labels
            SizedBox(height: context.dsSpacing.sp200),
            // Add text labels below chips
            Row(
              children: [
                for (int i = 0; i < items.length; i++) ...{
                  Expanded(
                    child: Center(
                      child: DSText(
                        text: _getLabelText(items[i].hazardLevel, localizations),
                        textStyle: DSTextStyleType.primaryBodySMedium,
                        textColor: colors.textNeutralOnWhite,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                },
              ],
            ),
          ],
        );
      },
    );
  }

  String _getLabelText(HazardLevel level, HealthyLivingSharedLocalizations localizations) {
    switch (level) {
      case HazardLevel.verified:
        return localizations.filters_hazardScore_best;
      case HazardLevel.lowest:
      case HazardLevel.low:
        return localizations.filters_hazardScore_low;
      case HazardLevel.moderate:
        return localizations.filters_hazardScore_moderate;
      case HazardLevel.high:
      case HazardLevel.highest:
        return localizations.filters_hazardScore_high;
      case HazardLevel.noData:
        return localizations.filters_hazardScore_high; // Default to high for no data
    }
  }
}


