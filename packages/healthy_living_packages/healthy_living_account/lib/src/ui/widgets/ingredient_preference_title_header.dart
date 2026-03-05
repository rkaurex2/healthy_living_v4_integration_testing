import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class IngredientPreferenceTitleHeader extends StatelessWidget {
  final String? title;
  final VoidCallback onTapBack;
  final VoidCallback onTapInfo;
  final Key? iconKey;

  const IngredientPreferenceTitleHeader({
    required this.onTapBack,
    required this.onTapInfo,
    super.key,
    this.iconKey,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 14,
        horizontal: context.dsSpacing.sp100,
      ),
      child: Row(
        children: [
          SizedBox(
            width: context.dsSizes.sz500,
            height: context.dsSizes.sz500,
            child: GestureDetector(
              onTap: onTapBack,
              child: DSImage.asset(
                DSIcons.icArrowLeft,
                width: context.dsSizes.sz500,
                height: context.dsSizes.sz500,
              ),
            ),
          ),

          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                DSText(
                  text: title,
                  textStyle: DSTextStyleType.primaryHeadingS,
                  textColor: context.dsColors.textPrimaryDefault,
                ),
              ],
            ),
          ),

          SizedBox(
            key: iconKey,
            width: context.dsSizes.sz500,
            height: context.dsSizes.sz500,
            child: GestureDetector(
              onTap: onTapInfo,
              child: DSImage.asset(
                DSIcons.icOtherInformation,
                height: context.dsSizes.sz500,
                width: context.dsSizes.sz500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
