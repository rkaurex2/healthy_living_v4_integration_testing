import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class SortByBottomSheetOptionTile extends StatelessWidget {
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  const SortByBottomSheetOptionTile({
    required this.label,
    required this.isSelected,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Color background =
        isSelected
            ? context.dsColors.surfacePrimaryLight1
            : context.dsColors.surfaceNeutralContainerWhite;

    return Container(
      color: background,
      height: context.dsSizes.sz900,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: context.dsSpacing.sp400),
          child: Row(
            children: [
              Expanded(
                child: DSText(
                  text: label,
                  textStyle: DSTextStyleType.primarySubHeadingS,
                  textColor: context.dsColors.textNeutralOnWhite,
                ),
              ),
              if (isSelected)
                DSImage.asset(
                  DSIcons.icCheck,
                  height: context.dsSizes.sz500,
                  width: context.dsSizes.sz500,
                  color: context.dsColors.iconPrimary,
                ),
            ],
          ),
        ),
      ),
    );
  }
}
