import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class MyListMoreSkeleton extends StatelessWidget {
  const MyListMoreSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RoundedRectangleShimmerWidget(
          height: context.dsSizes.sz100,
          width: context.dsSizes.sz100,
          borderRadius: context.dsRadius.rd200,
        ),
        DSSpacingWidget.horizontal(spacing: 2),
        RoundedRectangleShimmerWidget(
          height: context.dsSizes.sz100,
          width: context.dsSizes.sz100,
          borderRadius: context.dsRadius.rd200,
        ),
        DSSpacingWidget.horizontal(spacing: 2),
        RoundedRectangleShimmerWidget(
          height: context.dsSizes.sz100,
          width: context.dsSizes.sz100,
          borderRadius: context.dsRadius.rd200,
        ),
      ],
    );
  }
}
