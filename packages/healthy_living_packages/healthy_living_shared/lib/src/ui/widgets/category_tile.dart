import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class CategoryTile extends StatelessWidget {
  final String text;
  final bool isVerified;
  final VoidCallback onTap;
  final Color? tileColor;

  const CategoryTile({
    required this.text,
    required this.onTap,
    this.isVerified = false,
    this.tileColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final backgroundColor =
        tileColor ?? context.dsColors.surfaceNeutralBackgroundWhite;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(
          horizontal: context.dsSpacing.sp400,
          vertical: context.dsSpacing.sp200,
        ),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(context.dsRadius.rd300),
        ),
        child: DSText(
          text: text,
          textStyle: DSTextStyleType.primaryButtonLRegular,
          textColor: context.dsColors.textNeutralOnWhite,
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
        ),
      ),
    );
  }
}
