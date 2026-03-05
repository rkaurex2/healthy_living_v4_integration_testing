import 'package:design_system/design_system.dart'
    show DSImage, DSSpacingWidget, DSText, DSTextStyleType, DSToggle;
import 'package:design_system/theme/theme_data/theme_data.dart';
import 'package:flutter/material.dart';

class IngredientPreferenceToggleTile extends StatelessWidget {
  const IngredientPreferenceToggleTile({
    required this.title,
    required this.description,
    required this.iconPath,
    required this.isSelected,
    required this.onToggle,
    required this.disabled,
    super.key,
  });

  final String title;
  final String description;
  final String iconPath;
  final bool isSelected;
  final ValueChanged<bool> onToggle;
  final bool disabled;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: context.dsSpacing.sp200,
        vertical: context.dsSpacing.sp400,
      ),
      decoration: BoxDecoration(
        border: Border.all(color: context.dsColors.strokeNeutralDefault),
        borderRadius: BorderRadius.circular(context.dsRadius.rd300),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DSImage.asset(iconPath),
          DSSpacingWidget.horizontal(spacing: context.dsSpacing.sp200),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DSText(
                  text: title,
                  textStyle: DSTextStyleType.primarySubHeadingS,
                  textColor: context.dsColors.textNeutralOnWhite,
                ),
                if (!disabled) ...{
                  DSSpacingWidget.vertical(spacing: context.dsSpacing.sp200),
                  DSText(
                    text: description,
                    textStyle: DSTextStyleType.primaryBodySRegular,
                    textColor: context.dsColors.textNeutralSecondary,
                  ),
                },
              ],
            ),
          ),
          DSToggle(
            value: disabled ? false : isSelected,
            enabled: !disabled,
            onChanged: onToggle,
          ),
        ],
      ),
    );
  }
}
