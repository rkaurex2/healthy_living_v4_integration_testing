import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class MyListOptionsRowItem extends StatelessWidget {
  final String iconPath;
  final String title;
  final VoidCallback onTap;

  const MyListOptionsRowItem({
    required this.iconPath,
    required this.title,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: context.dsSpacing.sp400,
          vertical: context.dsSpacing.sp200,
        ),
        child: Row(
          children: [
            DSImage.asset(iconPath),
            DSSpacingWidget.horizontal(spacing: context.dsSpacing.sp300),
            Expanded(
              child: DSText(
                text: title,
                textStyle: DSTextStyleType.primaryBodySMedium,
                textColor: context.dsColors.textNeutralOnWhite,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
