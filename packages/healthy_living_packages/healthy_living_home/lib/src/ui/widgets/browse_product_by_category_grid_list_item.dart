import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_home/src/ui/model/browse_product_by_category_model.dart';

class BrowseProductByCategoryGridListItem extends StatelessWidget {
  final BrowseProductByCategoryModel item;
  final VoidCallback onTap;

  const BrowseProductByCategoryGridListItem({
    required this.item,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: LayoutBuilder(
        builder: (context, constraints) {
          final containerWidth = constraints.maxWidth;

          final imageSize = containerWidth * 0.65;
          return Container(
            decoration: BoxDecoration(
              color: item.bgColor,
              borderRadius: BorderRadius.circular(context.dsRadius.rd300),
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(context.dsSpacing.sp200),
                    ),
                    child: DSImage.asset(
                      item.imagePath,
                      width: imageSize,
                      height: imageSize,
                    ),
                  ),
                ),
                Positioned(
                  top: containerWidth * 0.1,
                  left: containerWidth * 0.1,
                  right: containerWidth * 0.01,
                  child: DSText(
                    text: item.title,
                    textStyle: DSTextStyleType.primaryHeadingSBold,
                    textColor: item.textColor,
                    textAlign: TextAlign.start,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
