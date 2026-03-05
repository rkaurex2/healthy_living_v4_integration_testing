import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String label;
  final bool selected;
  final VoidCallback onTap;

  const CategoryItem({
    required this.label,
    required this.selected,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(context.dsRadius.rd300),
      child: Container(
        height: 67,
        padding: EdgeInsets.symmetric(horizontal: context.dsSpacing.sp400),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(context.dsRadius.rd300),
          border: Border.all(
            color:
                selected
                    ? context.dsColors.strokePrimaryDefault
                    : Colors.transparent,
          ),
        ),
        alignment: Alignment.center,
        child: DSText(
          text: label,
          textStyle: DSTextStyleType.primaryButtonLRegular,
          textAlign: TextAlign.center,
          textColor: context.dsColors.textNeutralOnWhite,
        ),
      ),
    );
  }
}
