import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_shared/src/ui/shimmer/rounded_rectangle_shimmer_widget.dart';

class IngredientPreferenceFilterShimmer extends StatelessWidget {
  const IngredientPreferenceFilterShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: context.dsSpacing.sp400,
        vertical: context.dsSpacing.sp600,
      ),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RoundedRectangleShimmerWidget(),
            DSSpacingWidget.vertical(spacing: context.dsSpacing.sp200),
            RoundedRectangleShimmerWidget(height: context.dsSpacing.sp400),
            DSSpacingWidget.vertical(spacing: context.dsSpacing.sp500),
            RoundedRectangleShimmerWidget(
              height: 46,
              width: MediaQuery.of(context).size.width,
            ),
            DSSpacingWidget.vertical(spacing: context.dsSpacing.sp400),
            RoundedRectangleShimmerWidget(
              height: 46,
              width: MediaQuery.of(context).size.width,
            ),
          ],
        ),
      ),
    );
  }
}
