import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:healthy_living_shared/src/ui/widgets/health_concern_list_item.dart';

class FindingsTabContentWidget extends StatelessWidget {
  final List<FindingsHealthConcernUIModel> healthConcerns;

  const FindingsTabContentWidget({required this.healthConcerns, super.key});

  @override
  Widget build(BuildContext context) {
    final localization = HealthyLivingSharedLocalizations.of(context)!;

    final spacing = context.dsSpacing;

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: context.dsColors.surfaceNeutralContainerWhite,
        borderRadius: BorderRadius.circular(context.dsRadius.rd300),
      ),
      padding: EdgeInsets.all(spacing.sp300),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DSText(
            text: localization.productSubmit_ingredients_healthConcerns,
            textStyle: DSTextStyleType.primaryHeadingXs,
            textColor: context.dsColors.textPrimaryDefault,
          ),
          DSSpacingWidget.vertical(spacing: spacing.sp100),
          DSText(
            text: localization.productSubmit_ingredients_theProductScoreTakes,
            textStyle: DSTextStyleType.primaryButtonSRegular,
            textColor: context.dsColors.textNeutralSecondary,
          ),
          DSSpacingWidget.vertical(spacing: 18),

          ...healthConcerns.map((concern) {
            final index = healthConcerns.indexOf(concern);
            final row = HealthConcernListItem(concern: concern);
            if (index == healthConcerns.length - 1) return row;
            return Column(children: [row, DSDivider()]);
          }),
        ],
      ),
    );
  }
}
