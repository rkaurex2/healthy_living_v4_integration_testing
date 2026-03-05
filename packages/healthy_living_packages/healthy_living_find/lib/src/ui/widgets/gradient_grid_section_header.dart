import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class GradientGridSectionHeader extends StatelessWidget {
  const GradientGridSectionHeader({
    required this.title,
    required this.titleImage,
    required this.onPressed,
    this.imageHeight,
    this.imageWidth,
    super.key,
  });

  final String title;
  final String titleImage;
  final VoidCallback? onPressed;
  final double? imageHeight;
  final double? imageWidth;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: context.dsSpacing.sp200,right:  context.dsSpacing.sp100),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Flexible(
                  child: DSText(
                    text: title,
                    textStyle: DSTextStyleType.primaryHeadingM,
                    textColor: context.dsColors.textNeutralOnWhite,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                DSSpacingWidget.horizontal(spacing: context.dsSpacing.sp200),
                DSButtonIconCircle(
                  iconPath: DSIcons.icArrowRight,
                  onPressed: onPressed,
                  type: DSButtonIconCircleType.fillNeutral,
                  size: DSButtonIconSizeEnum.small,
                  backgroundColor: context.dsColors.surfaceNeutralBackgroundWhite
                      .withAlpha(60),
                ),
              ],
            ),
          ),
          DSImage.asset(
            titleImage,
            height: imageHeight ?? 96,
            width: imageWidth ?? 121,
          ),
        ],
      ),
    );
  }
}
