import 'package:design_system/design_system.dart';
import 'package:design_system/l10n/design_system_localizations.dart';
import 'package:flutter/material.dart';

class DSPremiumBadge extends StatelessWidget {
  final DSPremiumBadgeColor _dsPremiumBadgeColor;
  final bool showPremiumCrown;

  const DSPremiumBadge._internal({
    required DSPremiumBadgeColor dsPremiumBadgeColor,
    this.showPremiumCrown = true,
    super.key,
  }) : _dsPremiumBadgeColor = dsPremiumBadgeColor;

  factory DSPremiumBadge.transparent({Key? key, bool showPremiumCrown = true}) {
    return DSPremiumBadge._internal(
      dsPremiumBadgeColor: DSPremiumBadgeColor.transparent,
      showPremiumCrown: showPremiumCrown,
      key: key,
    );
  }

  factory DSPremiumBadge.orange({Key? key, bool showPremiumCrown = true}) {
    return DSPremiumBadge._internal(
      dsPremiumBadgeColor: DSPremiumBadgeColor.orange,
      showPremiumCrown: showPremiumCrown,
      key: key,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 6,
        vertical: context.dsSpacing.sp100,
      ),
      decoration: BoxDecoration(
        color:
            _dsPremiumBadgeColor == DSPremiumBadgeColor.transparent
                ? DSBaseColors.neutral0.withValues(alpha: 0.1)
                : null,
        gradient:
            _dsPremiumBadgeColor == DSPremiumBadgeColor.orange
                ? LinearGradient(
                  colors: [
                    DSBaseColors.gradientOrange1,
                    DSBaseColors.gradientOrange2,
                  ],
                )
                : null,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(context.dsRadius.rd100),
          topRight: Radius.circular(context.dsRadius.rd400),
          bottomRight: Radius.circular(context.dsRadius.rd400),
          bottomLeft: Radius.circular(context.dsRadius.rd400),
        ),
      ),
      child: Row(
        spacing: 2,
        mainAxisSize: MainAxisSize.min,
        children: [
          DSText(
            text: DesignSystemLocalizations.of(context)!.designSystem_premium,
            textStyle: DSTextStyleType.primaryCaptionSemibold,
            textColor: context.dsColors.textOnSurfaceDefault,
          ),
          if (showPremiumCrown) ...{DSImage.asset(DSIcons.icPremiumCrown)},
        ],
      ),
    );
  }
}
