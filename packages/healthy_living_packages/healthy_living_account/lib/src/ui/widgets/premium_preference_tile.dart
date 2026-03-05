import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class PremiumPreferenceTile extends StatelessWidget {
  final String icon;
  final String title;
  final String? badgeText;
  final VoidCallback onTap;
  final Color? iconColor;
  final Color? titleColor;

  const PremiumPreferenceTile({
    required this.title,
    required this.icon,
    required this.onTap,
    required this.badgeText,
    this.iconColor,
    this.titleColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: context.dsColors.surfaceNeutralContainerWhite,
        borderRadius: BorderRadius.circular(context.dsRadius.rd300),
      ),
      child: InkWell(
        onTap: onTap,
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(
            horizontal: context.dsSpacing.sp400,
            vertical: context.dsSpacing.sp500,
          ),
          child: Row(
            children: [
              DSImage.asset(
                icon,
                height: 20,
                width: 20,
                color: iconColor ?? context.dsColors.iconPrimary,
              ),
              DSSpacingWidget.horizontal(spacing: context.dsSpacing.sp200),
              Expanded(
                child: DSText(
                  text: title,
                  textStyle: DSTextStyleType.primarySubHeadingS,
                  textColor: titleColor ?? context.dsColors.textPrimaryDefault,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: context.dsColors.surfacePrimaryDefault,
                  borderRadius: BorderRadius.circular(context.dsRadius.rd1000),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: context.dsSpacing.sp300,
                    vertical: context.dsSpacing.sp100,
                  ),
                  child: DSText(
                    text: badgeText,
                    textStyle: DSTextStyleType.primaryCaption,
                    textColor: context.dsColors.textOnSurfaceDefault,
                  ),
                ),
              ),
              DSSpacingWidget.horizontal(spacing: context.dsSpacing.sp200),
              DSImage.asset(
                DSIcons.icChevronRight,
                height: context.dsSizes.sz400,
                width: context.dsSizes.sz400,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
