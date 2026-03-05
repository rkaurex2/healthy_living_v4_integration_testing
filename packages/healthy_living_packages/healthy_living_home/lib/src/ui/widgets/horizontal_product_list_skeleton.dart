import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_home/src/ui/widgets/horizontal_product_list_card_skeleton.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class HorizontalProductListSkeleton extends StatelessWidget {
  const HorizontalProductListSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DSSpacingWidget.vertical(spacing: context.dsSpacing.sp300),

        Padding(
          padding: EdgeInsets.symmetric(horizontal: context.dsSpacing.sp400),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RoundedRectangleShimmerWidget(height: 20, width: 120),
              RoundedRectangleShimmerWidget(
                height: 28,
                width: 28,
                borderRadius: context.dsRadius.rd500,
              ),
            ],
          ),
        ),
        DSSpacingWidget.vertical(spacing: context.dsSpacing.sp300),

        SizedBox(
          height: 164,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(horizontal: context.dsSpacing.sp400),
            itemCount: 4, // Number of skeletons
            separatorBuilder:
                (_, __) => SizedBox(width: context.dsSpacing.sp300),
            itemBuilder:
                (context, index) => HorizontalProductListCardSkeleton(),
          ),
        ),
      ],
    );
  }
}
