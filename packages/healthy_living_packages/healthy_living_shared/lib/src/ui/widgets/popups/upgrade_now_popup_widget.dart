import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class UpgradeNowPopupWidget extends StatelessWidget {
  const UpgradeNowPopupWidget({super.key, this.onTap});

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final localizations = HealthyLivingSharedLocalizations.of(context)!;

    return Padding(
      padding: EdgeInsets.all(context.dsSpacing.sp300),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              DSImage.asset(
                DSIcons.icHealthyLivingLogoOneLine,
                color: context.dsColors.iconOnSurfaceDefault,
                width: 145,
                height: 30,
              ),
              DSSpacingWidget.horizontal(spacing: context.dsSpacing.sp200),
              DSPremiumBadge.orange(),
            ],
          ),
          DSSpacingWidget.vertical(spacing: context.dsSpacing.sp400),
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(
                horizontal: context.dsSpacing.sp300,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DSText(
                    text: localizations
                        .compare_upgradeNowPopup_compareDescription,
                    textStyle: DSTextStyleType.primaryCaption,
                    textColor: context.dsColors.textOnSurfaceDefault,
                  ),
                  DSSpacingWidget.vertical(spacing: context.dsSpacing.sp300),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: DSButtonNeutral.fill(
              text: localizations.compare_upgradeNowPopup_upgradeNow,
              size: DSButtonSize.small,
              width: 144,
              onPressed: onTap,
            ),
          ),
        ],
      ),
    );
  }
}
