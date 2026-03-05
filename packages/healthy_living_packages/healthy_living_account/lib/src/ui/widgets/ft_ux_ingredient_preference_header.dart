import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class FtUxIngredientPreferenceHeader extends StatelessWidget {
  final VoidCallback onTapBack;
  final VoidCallback onTapInfo;
  final Key? iconKey;

  const FtUxIngredientPreferenceHeader({
    required this.onTapBack,
    required this.onTapInfo,
    super.key,
    this.iconKey,
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
          InkWell(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: onTapBack,
            child: Container(
              width: context.dsSizes.sz600,
              height: context.dsSizes.sz700,
              alignment: Alignment.centerLeft,
              child: DSImage.asset(
                DSIcons.icArrowLeft,
                fit: BoxFit.none,
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
                SizedBox(
                  width: 117,
                  height: 24,
                  child: DSImage.asset(
                    DSIcons.icHealthyLivingPrimaryLogo,
                    color: context.dsColors.surfacePrimaryDefault,
                  ),
                ),
                DSSpacingWidget.horizontal(spacing: context.dsSpacing.sp200),
                DSPremiumBadge.orange(),
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
