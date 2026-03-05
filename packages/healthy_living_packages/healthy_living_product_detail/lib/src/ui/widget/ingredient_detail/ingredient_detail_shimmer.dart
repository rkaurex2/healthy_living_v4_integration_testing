import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class IngredientDetailsShimmer extends StatelessWidget {
  const IngredientDetailsShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: context.dsSpacing.sp400),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DSSpacingWidget.vertical(spacing: context.dsSpacing.sp400),
              RoundedRectangleShimmerWidget(width: 200),
              DSSpacingWidget.vertical(spacing: context.dsSpacing.sp500),
              RoundedRectangleShimmerWidget(
                width: MediaQuery.of(context).size.width,
                height: 100,
              ),
              DSSpacingWidget.vertical(spacing: context.dsSpacing.sp500),
              RoundedRectangleShimmerWidget(
                width: MediaQuery.of(context).size.width,
                height: 100,
              ),
              DSSpacingWidget.vertical(spacing: context.dsSpacing.sp500),
            ],
          ),
        ),
        Container(
          color: context.dsColors.surfaceNeutralBackgroundMedium,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: context.dsSpacing.sp600),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DSSpacingWidget.vertical(spacing: context.dsSpacing.sp600),
                RoundedRectangleShimmerWidget(width: 200),
                DSSpacingWidget.vertical(spacing: 18),
                RoundedRectangleShimmerWidget(
                  width: MediaQuery.of(context).size.width,
                  height: 42,
                ),
                DSSpacingWidget.vertical(spacing: context.dsSpacing.sp500),
                RoundedRectangleShimmerWidget(
                  width: MediaQuery.of(context).size.width,
                  height: 42,
                ),
                DSSpacingWidget.vertical(spacing: context.dsSpacing.sp400),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
