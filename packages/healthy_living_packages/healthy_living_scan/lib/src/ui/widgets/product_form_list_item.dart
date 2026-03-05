import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_scan/src/ui/model/product_form_ui_model.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class ProductFormListItem extends StatelessWidget {
  const ProductFormListItem({
    required this.product,
    required this.selected,
    this.onTap,
    super.key,
  });

  final ProductFormUIModel product;
  final bool selected;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final borderColor =
        selected
            ? context.dsColors.strokePrimaryDefault
            : context.dsColors.strokeNeutralDefault;

    return IgnorePointer(
      ignoring: onTap == null,
      child: InkWell(
        borderRadius: BorderRadius.circular(14),
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            color: context.dsColors.surfaceNeutralContainerWhite,
            borderRadius: BorderRadius.circular(context.dsRadius.rd300),
            border: Border.all(color: borderColor, width: 1),
          ),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(context.dsRadius.rd300),
                  bottomLeft: Radius.circular(context.dsRadius.rd300),
                ),
                child: Container(
                  width: 73,
                  height: 73,
                  alignment: Alignment.center,
                  child: DSImage.asset(
                    product.imagePath,
                    width: 73,
                    height: 73,
                    errorWidget: PlaceholderImage(
                      containerSize: 73,
                      imageSize: 42,
                    ),
                  ),
                ),
              ),
              DSSpacingWidget.horizontal(spacing: context.dsSpacing.sp400),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DSText(
                      text: product.title,
                      textStyle: DSTextStyleType.primarySubHeadingS,
                      textColor: context.dsColors.textNeutralOnWhite,
                    ),
                    DSText(
                      text: product.subtitle,
                      textStyle: DSTextStyleType.primaryBodySRegular,
                      textColor: context.dsColors.textNeutralSecondary,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
