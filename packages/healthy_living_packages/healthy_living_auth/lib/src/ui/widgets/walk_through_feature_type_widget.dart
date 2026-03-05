import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_auth/src/utils/walk_through_utils.dart';

class WalkThroughFeatureTypeWidget extends StatelessWidget {
  const WalkThroughFeatureTypeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: context.dsSpacing.sp400),
      child: Column(
        children:
            WalkthroughUtils.getFeatureItems(context: context).map((items) {
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
                  DSSpacingWidget.vertical(spacing: context.dsSpacing.sp200),
                ],
              );
            }).toList(),
      ),
    );
  }
}
