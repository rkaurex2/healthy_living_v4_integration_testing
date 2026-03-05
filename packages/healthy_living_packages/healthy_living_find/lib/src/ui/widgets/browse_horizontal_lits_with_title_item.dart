import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class BrowseHorizontalListWithTitleItem extends StatelessWidget {
  final BrowseCategoryModel subCategoryModel;
  final VoidCallback onCategoryTap;

  const BrowseHorizontalListWithTitleItem({
    required this.subCategoryModel,
    required this.onCategoryTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onCategoryTap,
      child: Container(
        height: 104,
        width: 104,
        padding: EdgeInsets.symmetric(horizontal: context.dsSpacing.sp200),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(context.dsRadius.rd300),
          color: context.dsColors.surfaceNeutralBackgroundMedium,
        ),
        child: DSText(
          text: subCategoryModel.name,
          textStyle: DSTextStyleType.primaryBodyMRegular,
          textColor: context.dsColors.textNeutralOnWhite,
          lineHeight: 1.2,
          maxLines: 4,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
