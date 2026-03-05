import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class HeaderWithArrow extends StatelessWidget {
  final String headerTitle;
  final VoidCallback? onPressed;
  final bool hasArrow;
  final Color? iconBackgroundColor;

  const HeaderWithArrow({
    required this.headerTitle,
    required this.hasArrow,
    this.onPressed,
    this.iconBackgroundColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: DSText(
            text: headerTitle,
            textStyle: DSTextStyleType.secondaryHeadingM,
            textColor: context.dsColors.textNeutralOnWhite,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        if (hasArrow)
          Padding(
            padding: EdgeInsets.only(left: context.dsSpacing.sp200),
            child: DSButtonIconCircle(
              iconPath: DSIcons.icArrowRight,
              onPressed: onPressed,
              type: DSButtonIconCircleType.fillNeutral,
              size: DSButtonIconSizeEnum.small,
              backgroundColor:
                  iconBackgroundColor ??
                  context.dsColors.surfaceNeutralContainerWhite.withAlpha(60),
            ),
          ),
      ],
    );
  }
}
