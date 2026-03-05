import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class ProductCategoryFilterItem extends StatelessWidget {
  final String filterImage;
  final VoidCallback onFilterTap;
  final double? horizontalPadding;
  final double? verticalPadding;
  final bool? isDisable;

  const ProductCategoryFilterItem({
    required this.filterImage,
    required this.onFilterTap,
    this.horizontalPadding,
    this.verticalPadding,
    this.isDisable,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final bool disabled = isDisable ?? false;
    return GestureDetector(
      onTap: disabled ? null : onFilterTap,
      child: Container(
        height: context.dsSizes.sz600,
        width: context.dsSizes.sz600,
        padding: EdgeInsets.symmetric(
          horizontal: horizontalPadding ?? 6,
          vertical: verticalPadding ?? 6,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(context.dsRadius.rd1000),
          border: Border.all(color: context.dsColors.strokeNeutralDisabled),
        ),
        child: DSImage.asset(
          filterImage,
          height: context.dsSizes.sz400,
          width: context.dsSizes.sz400,
          color:
              disabled
                  ? context.dsColors.iconNeutralDisabled
                  : context.dsColors.surfacePrimaryDefault,
        ),
      ),
    );
  }
}
