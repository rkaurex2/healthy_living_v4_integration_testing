import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class HeaderRatingScoreBadge extends StatelessWidget {
  final String? text;
  final Color backgroundColor;
  final double? width;
  final double? height;
  final DSTextStyleType? textStyle;
  final Border? border;

  const HeaderRatingScoreBadge({
    required this.text,
    required this.backgroundColor,
    this.width,
    this.height,
    this.textStyle,
    this.border,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: context.dsColors.surfaceNeutralContainerWhite,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(context.dsRadius.rd600),
          topRight: Radius.circular(context.dsRadius.rd1000),
          bottomLeft: Radius.circular(context.dsRadius.rd1000),
          bottomRight: Radius.circular(context.dsRadius.rd1000),
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(context.dsRadius.rd400),
            topRight: Radius.circular(context.dsRadius.rd800),
            bottomLeft: Radius.circular(context.dsRadius.rd800),
            bottomRight: Radius.circular(context.dsRadius.rd800),
          ),
          border: border ?? Border.all(color: Colors.transparent, width: 0),
        ),
        child: SizedBox(
          width: width ?? context.dsSizes.sz600,
          height: height ?? context.dsSizes.sz600,
          child: Center(
            child: DSText(
              text: text,
              textStyle: textStyle ?? DSTextStyleType.primarySubHeadingS,
              textColor: context.dsColors.surfaceNeutralContainerWhite,
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
