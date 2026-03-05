import 'package:design_system/design_system.dart';
import 'package:healthy_living_auth/src/utils/walk_through_utils.dart';
import 'package:flutter/material.dart';

class WalkThroughPremiumTypeWidget extends StatelessWidget {
  const WalkThroughPremiumTypeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: context.dsColors.surfaceNeutralBackgroundMedium,
        borderRadius: BorderRadius.circular(context.dsSpacing.sp200),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: context.dsSpacing.sp400,
          vertical: 20.0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DSImage.asset(
                  DSIcons.icHealthyLivingLogoHorizontal,
                  height: context.dsSizes.sz700,
                  color: context.dsColors.surfacePrimaryDefault,
                ),
                DSPremiumBadge.orange(),
              ],
            ),
            DSSpacingWidget.vertical(spacing: context.dsSpacing.sp200),
            Column(
              children:
                  WalkthroughUtils.getPremiumItems(context: context).map((
                    items,
                  ) {
                    return Column(
                      children: [
                        Row(
                          children: [
                            DSImage.asset(items.icon),
                            DSSpacingWidget.horizontal(
                              spacing: context.dsSpacing.sp100,
                            ),
                            Flexible(
                              child: DSText(
                                text: items.text,
                                textStyle: DSTextStyleType.primaryBodyMRegular,
                                textColor: context.dsColors.textNeutralOnWhite,
                              ),
                            ),
                          ],
                        ),
                        // DSSpacingWidget.vertical(spacing: 5),
                      ],
                    );
                  }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
