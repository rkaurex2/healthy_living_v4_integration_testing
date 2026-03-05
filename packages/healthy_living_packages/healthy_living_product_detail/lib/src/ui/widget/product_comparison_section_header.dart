import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class ProductComparisonSectionHeader extends StatelessWidget {
  final String title;

  const ProductComparisonSectionHeader({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: context.dsSpacing.sp400,
        vertical: 14,
      ),
      decoration: BoxDecoration(
        color: context.dsColors.surfaceNeutralBackgroundMedium,
        borderRadius: BorderRadius.circular(context.dsSizes.sz100),
      ),
      child: DSText(
        text: title,
        textAlign: TextAlign.center,
        textStyle: DSTextStyleType.primaryHeadingXs,
        textColor: context.dsColors.textNeutralOnWhite,
      ),
    );
  }
}
