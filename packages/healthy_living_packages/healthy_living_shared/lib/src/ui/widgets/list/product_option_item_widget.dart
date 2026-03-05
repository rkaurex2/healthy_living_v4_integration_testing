import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class ProductOptionItemWidget extends StatelessWidget {
  final bool isSelected;
  final String title;
  final String icon;
  final bool isItemDisable;
  final bool isItemPremiumFeatured;
  final Function(BuildContext) onTap;

  const ProductOptionItemWidget({
    required this.title,
    required this.isSelected,
    required this.onTap,
    required this.icon,
    this.isItemDisable = false,
    this.isItemPremiumFeatured = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(context),
      behavior: HitTestBehavior.opaque,
      child: Container(
        decoration: BoxDecoration(
          color: isSelected ? context.dsColors.surfacePrimaryLight1 : null,
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: context.dsSpacing.sp300,
            horizontal: context.dsSpacing.sp400,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Row(
                  children: [
                    DSImage.asset(
                      icon,
                      color:
                          isItemDisable
                              ? context.dsColors.textNeutralDisabled
                              : context.dsColors.textNeutralOnWhite,
                    ),
                    DSSpacingWidget.horizontal(
                      spacing: context.dsSpacing.sp400,
                    ),
                    DSText(
                      text: title,
                      textStyle: DSTextStyleType.primaryBodyMMedium,
                      textColor:
                          isItemDisable
                              ? context.dsColors.textNeutralDisabled
                              : context.dsColors.textNeutralOnWhite,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              if (isSelected) ...{
                DSImage.asset(
                  DSIcons.icCheck,
                  width: context.dsSizes.sz500,
                  height: context.dsSizes.sz500,
                  color: context.dsColors.iconPrimary,
                ),
              },
              if (isItemPremiumFeatured) ...{
                Container(
                  width: context.dsSizes.sz500,
                  height: context.dsSizes.sz500,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: context.dsColors.surfaceAdditionalNude0,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: DSImage.asset(DSIcons.icLock),
                  ),
                ),
              },
            ],
          ),
        ),
      ),
    );
  }
}
