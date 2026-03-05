import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class IngredientRowItem extends StatelessWidget {
  const IngredientRowItem({
    required this.item,
    required this.onTap,
    required this.showTrailingIcon,
    required this.disabled,
    this.isVerifiedProduct = false,
    this.padding,
    super.key,
  });

  final IngredientItemUIModel item;
  final bool isVerifiedProduct;
  final EdgeInsets? padding;
  final VoidCallback onTap;
  final bool showTrailingIcon;
  final bool disabled;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: disabled ? null : onTap,
      child: Container(
        color: context.dsColors.surfaceNeutralContainerWhite,
        padding:
            padding ??
            EdgeInsets.symmetric(
              horizontal: context.dsSpacing.sp400,
              vertical: context.dsSpacing.sp300,
            ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          spacing: context.dsSpacing.sp300,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  DSText(
                    text: item.name,
                    textStyle: DSTextStyleType.primaryBodyMRegular,
                    textColor: context.dsColors.textNeutralOnWhite,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  if (item.score != null &&
                      item.scoreBackgroundColor != null &&
                      !isVerifiedProduct) ...{
                    DSSpacingWidget.vertical(spacing: context.dsSpacing.sp200),
                    ScoreBadgeLabelWithData(
                      score: item.score!,
                      scoreBackgroundColor: item.scoreBackgroundColor!,
                      hazardText: item.hazardText,
                      dataText: item.dataText,
                    ),
                  },
                  if (item.isPrefer ?? false) ...{
                    DSSpacingWidget.vertical(spacing: context.dsSpacing.sp200),
                    IngredientPreferenceBadge(
                      size: IngredientPreferenceBadgeSize.small,
                      preference: IngredientPreference.prefer,
                      ingredientPreferenceBadgeType:
                          IngredientPreferenceBadgeType.longText,
                    ),
                  },
                  if (item.isAvoid ?? false) ...{
                    DSSpacingWidget.vertical(spacing: context.dsSpacing.sp200),
                    IngredientPreferenceBadge(
                      size: IngredientPreferenceBadgeSize.small,
                      preference: IngredientPreference.avoid,
                      ingredientPreferenceBadgeType:
                          IngredientPreferenceBadgeType.longText,
                    ),
                  },
                ],
              ),
            ),
            if (showTrailingIcon) ...{
              DSImage.asset(
                DSIcons.icChevronRight,
                width: context.dsSizes.sz400,
                height: context.dsSizes.sz400,
                color: context.dsColors.iconNeutralDefault,
              ),
            },
          ],
        ),
      ),
    );
  }
}
