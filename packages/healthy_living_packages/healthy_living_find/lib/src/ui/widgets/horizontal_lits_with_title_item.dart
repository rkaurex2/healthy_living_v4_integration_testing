import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class HorizontalListWithTitleItem extends StatelessWidget {
  final String title;
  final VoidCallback onItemTap;

  const HorizontalListWithTitleItem({
    required this.title,
    required this.onItemTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onItemTap,
      child: Container(
        height: 104,
        width: 104,
        padding: EdgeInsets.symmetric(horizontal: context.dsSpacing.sp200),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(context.dsRadius.rd300),
          color: context.dsColors.surfaceNeutralBackgroundMedium,
        ),
        child: DSText(
          text: title,
          textStyle: DSTextStyleType.primaryBodyMRegular,
          textColor: context.dsColors.textNeutralOnWhite,
          lineHeight: 1.2,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
