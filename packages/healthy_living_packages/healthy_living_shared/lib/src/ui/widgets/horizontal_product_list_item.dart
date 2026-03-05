import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class HorizontalProductListItem extends StatelessWidget {
  final GeneralProductListItemUIModel item;
  final VoidCallback? onTap;

  const HorizontalProductListItem({required this.item, this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      hoverColor: Colors.transparent,
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(context.dsRadius.rd300),
              color: context.dsColors.iconOnSurfaceDefault,
            ),
            child: Stack(
              children: [
                SizedBox(
                  height: 104,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(
                      context.dsRadius.rd300,
                    ),
                    child: DSImage.network(
                      item.imageUrl,
                      width: 104,
                      fit: BoxFit.contain,
                      errorWidget: PlaceholderImage(
                        containerSize: 104,
                        imageSize: 50,
                        borderRadius: context.dsRadius.rd300,
                      ),
                    ),
                  ),
                ),
                if (item.isEWGVerified)
                  Positioned(
                    top: context.dsSpacing.sp200,
                    left: context.dsSpacing.sp200,
                    child: DSImage.asset(
                      DSIcons.icEWGVerified,
                      height: context.dsSizes.sz600,
                      width: context.dsSizes.sz600,
                    ),
                  ),
              ],
            ),
          ),
          DSSpacingWidget.vertical(spacing: context.dsSpacing.sp200),
          DSText(
            text: item.brandName,
            textStyle: DSTextStyleType.primaryCaption,
            textColor: context.dsColors.textNeutralSecondary,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Flexible(
            child: DSText(
              text: item.productName,
              textStyle: DSTextStyleType.primaryCaptionSemibold,
              textColor: context.dsColors.textNeutralOnWhite,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
