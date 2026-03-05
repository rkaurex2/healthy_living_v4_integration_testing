import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class IngredientPreferenceListSectionHeader extends StatelessWidget {
  final String title;
  final String iconPath;

  const IngredientPreferenceListSectionHeader({
    required this.title,
    required this.iconPath,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: context.dsSpacing.sp200,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DSImage.asset(iconPath, width: 20, height: 20, fit: BoxFit.cover),
          DSSpacingWidget.horizontal(spacing: context.dsSpacing.sp200),
          DSText(
            text: title,
            textStyle: DSTextStyleType.primaryBodySMedium,
            textColor: context.dsColors.textPrimaryDefault,
          ),

          DSSpacingWidget.horizontal(spacing: context.dsSpacing.sp400),
        ],
      ),
    );
  }
}
