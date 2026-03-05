import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class FindScreenShimmer extends StatelessWidget {
  const FindScreenShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    final List<int> skeletonCategories = List.generate(6, (index) => index);
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: context.dsSpacing.sp400),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RoundedRectangleShimmerWidget(height: 190, width: double.infinity),

            DSSpacingWidget.vertical(spacing: context.dsSpacing.sp900),

            RoundedRectangleShimmerWidget(height: 30, width: double.infinity),

            DSSpacingWidget.vertical(spacing: context.dsSpacing.sp400),

            RoundedRectangleShimmerWidget(height: 55, width: double.infinity),

            DSSpacingWidget.vertical(spacing: context.dsSpacing.sp500),

            GridView.count(
              crossAxisCount: 2,
              mainAxisSpacing: context.dsSpacing.sp200,
              crossAxisSpacing: context.dsSpacing.sp200,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              childAspectRatio: 3,
              children:
                  skeletonCategories.map((item) {
                    return RoundedRectangleShimmerWidget(
                      height: 80,
                      width: double.infinity,
                    );
                  }).toList(),
            ),

            DSSpacingWidget.vertical(spacing: context.dsSpacing.sp600),
          ],
        ),
      ),
    );
  }
}
