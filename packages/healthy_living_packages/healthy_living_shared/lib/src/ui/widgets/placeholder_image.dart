import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class PlaceholderImage extends StatelessWidget {
  const PlaceholderImage({
    required this.containerSize,
    required this.imageSize,
    this.borderRadius,
    this.color,
    super.key,
  });

  final double containerSize;
  final double imageSize;
  final double? borderRadius;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: containerSize,
      height: containerSize,
      decoration: BoxDecoration(
        color: color ?? context.dsColors.surfaceNeutralContainer2,
        borderRadius: BorderRadius.circular(
          borderRadius ?? context.dsRadius.rd500,
        ),
      ),
      child: Center(
        child: SizedBox(
          width: imageSize,
          height: imageSize,
          child: DSImage.asset(
            DSIcons.icEWGLogomark,
            color: context.dsColors.surfaceNeutralContainer6,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
