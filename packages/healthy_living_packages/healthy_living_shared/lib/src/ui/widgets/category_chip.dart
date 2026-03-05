import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class CategoryChip extends StatelessWidget {
  final String label;

  const CategoryChip({required this.label, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: context.dsSpacing.sp200,
        vertical: context.dsSpacing.sp100,
      ),
      decoration: BoxDecoration(
        color: context.dsColors.surfaceNeutralContainer2,
        borderRadius: BorderRadius.circular(context.dsRadius.rd300),
      ),
      child: DSText(
        text: label,
        textStyle: DSTextStyleType.primaryCaption,
        textColor: context.dsColors.textNeutralSecondary,
      ),
    );
  }
}
