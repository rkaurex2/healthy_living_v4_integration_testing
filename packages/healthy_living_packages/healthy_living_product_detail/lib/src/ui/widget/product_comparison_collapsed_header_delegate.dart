import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_product_detail/src/ui/model/product_comparison_ui_model.dart';
import 'package:healthy_living_product_detail/src/ui/widget/product_comparison_collapsed_item.dart';

class ProductComparisonCollapsedHeaderDelegate
    extends SliverPersistentHeaderDelegate {
  final ProductComparisonUiModel leftProduct;
  final ProductComparisonUiModel rightProduct;
  final double height;
  final bool isVisible;

  ProductComparisonCollapsedHeaderDelegate({
    required this.leftProduct,
    required this.rightProduct,
    this.height = 93.0,
    this.isVisible = false,
  });

  @override
  double get minExtent => height;

  @override
  double get maxExtent => height;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return AnimatedOpacity(
      opacity: isVisible ? 1.0 : 0.0,
      duration: const Duration(milliseconds: 200),
      curve: Curves.easeOut,
      child: Visibility(
        visible: isVisible,
        maintainState: true,
        maintainSize: true,
        maintainAnimation: true,
        child: IgnorePointer(
          ignoring: !isVisible,
          child: Container(
            height: height,
            decoration: BoxDecoration(
              color: context.dsColors.surfaceNeutralContainerWhite,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.1),
                  blurRadius: 4,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.all(context.dsSpacing.sp400),
                          child: ProductComparisonCollapsedItem(
                            productComparisonUiModel: leftProduct,
                          ),
                        ),
                      ),
                      VerticalDivider(
                        color: context.dsColors.strokeNeutralDefault,
                        width: 0,
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.all(context.dsSpacing.sp400),
                          child: ProductComparisonCollapsedItem(
                            productComparisonUiModel: rightProduct,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const DSDivider(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  bool shouldRebuild(ProductComparisonCollapsedHeaderDelegate old) {
    return leftProduct != old.leftProduct ||
        rightProduct != old.rightProduct ||
        height != old.height ||
        isVisible != old.isVisible;
  }
}
