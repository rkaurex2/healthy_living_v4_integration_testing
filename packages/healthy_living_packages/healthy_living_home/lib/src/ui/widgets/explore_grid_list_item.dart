import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_home/src/ui/model/explore_grid_item_ui_model.dart';

class ExploreGridListItem extends StatelessWidget {
  final ExploreGridItemUiModel item;
  final VoidCallback onTap;

  const ExploreGridListItem({
    required this.item,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(context.dsSpacing.sp400),
        decoration: BoxDecoration(
          color: context.dsColors.surfaceNeutralContainerWhite,
          borderRadius: BorderRadius.circular(context.dsRadius.rd300),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            DSImage.asset(
              item.imageUrl,
              width: context.dsSizes.sz500,
              height: context.dsSizes.sz500,
              color: context.dsColors.iconPrimary,
            ),
            DSSpacingWidget.vertical(spacing: context.dsSpacing.sp200),
            DSText(
              text: item.title,
              textStyle: DSTextStyleType.primaryHeadingS,
              textColor: context.dsColors.textNeutralOnWhite,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              fontWeight: DSTypography.fontWeightFw600,
            ),
            DSSpacingWidget.vertical(spacing: context.dsSpacing.sp200),
            DSText(
              text: item.description,
              textStyle: DSTextStyleType.primaryBodySRegular,
              textColor: context.dsColors.textNeutralSecondary,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
