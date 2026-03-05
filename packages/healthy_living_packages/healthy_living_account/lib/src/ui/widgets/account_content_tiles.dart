import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class AccountContentTiles extends StatelessWidget {
  final String? icon;
  final String? trailIconPath;
  final String title;
  final VoidCallback onTap;
  final Color? iconColor;
  final Color? titleColor;
  final bool? showTrailIcon;

  const AccountContentTiles({
    required this.title,
    required this.onTap,
    this.icon,
    this.trailIconPath,
    this.iconColor,
    this.titleColor,
    this.showTrailIcon = true,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          horizontal: context.dsSpacing.sp400,
          vertical: context.dsSpacing.sp500,
        ),
        child: Row(
          children: [
            if (icon.isValidValue) ...{
              DSImage.asset(
                icon!,
                height: 20,
                width: 20,
                color: iconColor ?? context.dsColors.iconPrimary,
              ),
              DSSpacingWidget.horizontal(spacing: context.dsSpacing.sp200),
            },
            Expanded(
              child: DSText(
                text: title,
                textStyle: DSTextStyleType.primarySubHeadingS,
                textColor: titleColor ?? context.dsColors.textPrimaryDefault,
              ),
            ),
            if (showTrailIcon == true) ...{
              DSImage.asset(
                trailIconPath ?? DSIcons.icChevronRight,
                height: context.dsSizes.sz400,
                width: context.dsSizes.sz400,
              ),
            },
          ],
        ),
      ),
    );
  }
}
