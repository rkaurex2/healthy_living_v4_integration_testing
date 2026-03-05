import 'package:design_system/design_system.dart' show DSImage;
import 'package:design_system/theme/theme_data/theme_data.dart';
import 'package:flutter/material.dart';

class IllustrationIcon extends StatelessWidget {
  const IllustrationIcon({
    required this.iconPath,
    this.iconSize,
    this.containerSize,
    this.iconColor,
    this.containerColor,
    super.key,
  });

  final String iconPath;
  final double? iconSize;
  final double? containerSize;
  final Color? iconColor;
  final Color? containerColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: containerSize ?? context.dsSizes.sz900,
      height: containerSize ?? context.dsSizes.sz900,
      decoration: BoxDecoration(
        color:
            containerColor ?? context.dsColors.surfaceNeutralBackgroundMedium,
        borderRadius: BorderRadius.circular(context.dsRadius.rd300),
      ),
      child: Center(
        child: DSImage.asset(
          iconPath,
          width: iconSize ?? context.dsSizes.sz600,
          height: iconSize ?? context.dsSizes.sz600,
          color: iconColor,
        ),
      ),
    );
  }
}
