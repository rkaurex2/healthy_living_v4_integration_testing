import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class HorizontalProductListCardSkeleton extends StatelessWidget {
  const HorizontalProductListCardSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 104,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RoundedRectangleShimmerWidget(height: 104, width: 104),

          DSSpacingWidget.vertical(spacing: context.dsSpacing.sp200),

          RoundedRectangleShimmerWidget(
            height: context.dsSpacing.sp300,
            width: 60,
          ),
          DSSpacingWidget.vertical(spacing: context.dsSpacing.sp200),

          RoundedRectangleShimmerWidget(
            height: context.dsSpacing.sp300,
            width: 100,
          ),
          DSSpacingWidget.vertical(spacing: context.dsSpacing.sp100),

          RoundedRectangleShimmerWidget(
            height: context.dsSpacing.sp300,
            width: 80,
          ),
        ],
      ),
    );
  }
}
