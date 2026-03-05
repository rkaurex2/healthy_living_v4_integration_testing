import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class VerifiedCategoryItem extends StatelessWidget {
  final String label;
  final VoidCallback onTap;

  const VerifiedCategoryItem({
    required this.label,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return label.isValidValue
        ? InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(context.dsRadius.rd300),
          child: Container(
            height: 67,
            padding: EdgeInsets.symmetric(horizontal: context.dsSpacing.sp400),
            decoration: BoxDecoration(
              color: context.dsColors.surfaceNeutralBackgroundMedium,
              borderRadius: BorderRadius.circular(context.dsRadius.rd300),
            ),
            alignment: Alignment.center,
            child: DSText(
              text: label,
              textStyle: DSTextStyleType.primaryButtonLRegular,
              textAlign: TextAlign.center,
              textColor: context.dsColors.textNeutralOnWhite,
            ),
          ),
        )
        : SizedBox.shrink();
  }
}
