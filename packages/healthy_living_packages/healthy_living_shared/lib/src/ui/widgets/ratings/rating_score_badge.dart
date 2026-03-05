import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class RatingScoreBadge extends StatelessWidget {
  final String? text;
  final Color backgroundColor;
  final VoidCallback? onTap;

  const RatingScoreBadge({
    required this.text,
    required this.backgroundColor,
    this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final badge = Container(
      decoration: BoxDecoration(
        color: context.dsColors.surfaceNeutralContainerWhite,
        border: Border.all(
          color: context.dsColors.surfaceNeutralContainerWhite,
          width: context.dsRadius.rd300,
        ),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(context.dsRadius.rd600),
          topRight: Radius.circular(context.dsRadius.rd1000),
          bottomLeft: Radius.circular(context.dsRadius.rd1000),
          bottomRight: Radius.circular(context.dsRadius.rd1000),
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(context.dsSpacing.sp0, context.dsSpacing.sp100),
            blurRadius: context.dsRadius.rd200,
            spreadRadius: context.dsSpacing.sp100,
            color: Colors.black.withValues(alpha: 0.08),
          ),
        ],
      ),
      child: Container(
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(context.dsRadius.rd600),
            topRight: Radius.circular(context.dsRadius.rd1000),
            bottomLeft: Radius.circular(context.dsRadius.rd1000),
            bottomRight: Radius.circular(context.dsRadius.rd1000),
          ),
        ),
        child: SizedBox(
          width: 72,
          height: 72,
          child: Center(
            child: DSText(
              text: text,
              textStyle: (text?.length ?? 0) > 1 ? DSTextStyleType.primaryHeadingXl : DSTextStyleType.primaryHeadingXxl,
              textColor: context.dsColors.surfaceNeutralContainerWhite,
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );

    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque, // ensures full area is tappable
      child: badge,
    );
  }
}
