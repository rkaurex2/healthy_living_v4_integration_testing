import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class OtherCategoriesItem extends StatelessWidget {
  final String title;

  const OtherCategoriesItem({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 104,
      width: 104,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(context.dsRadius.rd300),
        color: context.dsColors.surfaceNeutralBackgroundMedium,
      ),
      child: DSText(
        text: title,
        textStyle: DSTextStyleType.primaryBodyMRegular,
        textColor: context.dsColors.textNeutralOnWhite,
        lineHeight: DSTypography.lineHeightLh200,
      ),
    );
  }
}
