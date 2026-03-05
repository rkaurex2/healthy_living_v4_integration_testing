import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class HeaderWithTitle extends StatelessWidget {
  final String? title;
  final String? trailIcon;
  final String? leadIcon;
  final VoidCallback? onTapTrailIcon;
  final VoidCallback? onTapLeadIcon;
  final DSTextStyleType? textStyle;
  final Color? textColor;
  final Color? iconColor;

  const HeaderWithTitle({
    super.key,
    this.trailIcon,
    this.leadIcon,
    this.title,
    this.onTapTrailIcon,
    this.onTapLeadIcon,
    this.textStyle,
    this.textColor,
    this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 14.0),
      child: Stack(
        alignment: Alignment.center,
        children: [
          if (leadIcon.isValidValue)
            Align(
              alignment: Alignment.centerLeft,
              child: InkWell(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: onTapLeadIcon,
                child: Container(
                  height: context.dsSizes.sz600,
                  width: context.dsSizes.sz700,
                  alignment: Alignment.centerLeft,
                  child: DSImage.asset(
                    leadIcon!,
                    fit: BoxFit.none,
                    height: context.dsSizes.sz500,
                    width: context.dsSizes.sz500,
                    color: iconColor,
                  ),
                ),
              ),
            ),

          if (title.isValidValue)
            DSText(
              text: title,
              textStyle: textStyle ?? DSTextStyleType.primaryHeadingS,
              textColor: textColor ?? context.dsColors.textPrimaryDefault,
            ),
          if (trailIcon.isValidValue)
            GestureDetector(
              onTap: onTapTrailIcon,
              child: Align(
                alignment: Alignment.centerRight,
                child: DSImage.asset(
                  trailIcon!,
                  height: context.dsSizes.sz500,
                  width: context.dsSizes.sz500,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
