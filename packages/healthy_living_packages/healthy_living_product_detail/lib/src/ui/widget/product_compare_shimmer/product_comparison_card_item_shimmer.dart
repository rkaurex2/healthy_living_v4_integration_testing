import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_product_detail/src/ui/widget/product_compare_shimmer/circle_badge_shimmer_widget.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class ProductComparisonCardItemShimmer extends StatelessWidget {
  const ProductComparisonCardItemShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    final spacing = context.dsSpacing;
    final sizes = context.dsSizes;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            RoundedRectangleShimmerWidget(
              width: 156,
              height: 156,
              borderRadius: DSRadius.rd400,
            ),
            Positioned(
              top: 0,
              left: 0,
              child: CircleBadgeShimmerWidget(size: context.dsSizes.sz700),
            ),
          ],
        ),
        DSSpacingWidget.vertical(spacing: spacing.sp400),

        const RoundedRectangleShimmerWidget(width: 120, height: 12),
        DSSpacingWidget.vertical(spacing: spacing.sp200),

        const RoundedRectangleShimmerWidget(width: 180, height: 12),
        DSSpacingWidget.vertical(spacing: spacing.sp400),

        RoundedRectangleShimmerWidget(
          height: sizes.sz600,
          width: 110,
          borderRadius: DSRadius.rd200,
        ),

        DSSpacingWidget.vertical(spacing: spacing.sp400),

        RoundedRectangleShimmerWidget(
          height: sizes.sz800,
          width: double.infinity,
          borderRadius: DSRadius.rd200,
        ),
        DSSpacingWidget.vertical(spacing: spacing.sp400),
        RoundedRectangleShimmerWidget(
          height: sizes.sz800,
          width: double.infinity,
          borderRadius: DSRadius.rd200,
        ),
      ],
    );
  }
}
