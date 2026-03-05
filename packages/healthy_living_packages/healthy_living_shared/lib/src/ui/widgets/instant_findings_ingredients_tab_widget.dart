import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class InstantFindingsIngredientsTabWidget extends StatelessWidget {
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

    const InstantFindingsIngredientsTabWidget({
    required this.label,
    required this.isSelected,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: context.dsSpacing.sp300,
        vertical: context.dsSpacing.sp100,
      ),
      decoration: BoxDecoration(
        color:
            isSelected
                ? context.dsColors.surfacePrimaryDefault
                : Colors.transparent,
        borderRadius: BorderRadius.circular(context.dsRadius.rd1000),
      ),

      child: GestureDetector(
        onTap: onTap,
        child: DSText(
          text: label,
          textStyle:
              isSelected
                  ? DSTextStyleType.primaryButtonSMedium
                  : DSTextStyleType.primaryBodySRegular,
          textColor:
              isSelected
                  ? context.dsColors.textOnSurfaceDefault
                  : context.dsColors.textNeutralOnWhite,
        ),
      ),
    );
  }
}
