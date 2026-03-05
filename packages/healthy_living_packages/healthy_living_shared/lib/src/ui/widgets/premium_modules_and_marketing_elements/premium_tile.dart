import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class PremiumTile extends StatelessWidget {
  const PremiumTile({super.key, this.onTap});

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final localization = HealthyLivingSharedLocalizations.of(context)!;

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          horizontal: context.dsSpacing.sp400,
          vertical: context.dsSpacing.sp500,
        ),
        decoration: BoxDecoration(
          color: context.dsColors.surfaceAdditionalBlush700,
          borderRadius: BorderRadius.circular(context.dsRadius.rd300),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DSImage.asset(
                  DSIcons.icHealthyLivingLogoHorizontal,
                  color: context.dsColors.iconOnSurfaceDefault,
                  height: context.dsSizes.sz700,
                ),
                DSPremiumBadge.transparent(),
              ],
            ),
            DSSpacingWidget.vertical(spacing: context.dsSizes.sz400),
            DSText(
              text: localization.account_premium_shopSmartWithPremium,
              textStyle: DSTextStyleType.primaryBodyMMedium,
              textColor: context.dsColors.surfaceAdditionalBlush100,
            ),
          ],
        ),
      ),
    );
  }
}
