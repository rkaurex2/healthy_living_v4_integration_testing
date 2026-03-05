import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class MyListDetailSkeleton extends StatelessWidget {
  const MyListDetailSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(context.dsSpacing.sp400),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DSSpacingWidget.vertical(spacing: context.dsSpacing.sp300),
          // Title
          RoundedRectangleShimmerWidget(
            height: 30,
            width: 200,
            borderRadius: context.dsRadius.rd200,
          ),
          DSSpacingWidget.vertical(spacing: context.dsSpacing.sp300),
          RoundedRectangleShimmerWidget(
            height: 30,
            width: 210,
            borderRadius: context.dsRadius.rd200,
          ),
          DSSpacingWidget.vertical(spacing: context.dsSpacing.sp300),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RoundedRectangleShimmerWidget(
                height: 28,
                width: 80,
                borderRadius: context.dsRadius.rd400,
              ),
              RoundedRectangleShimmerWidget(
                height: 28,
                width: 120,
                borderRadius: context.dsRadius.rd400,
              ),
            ],
          ),

          DSSpacingWidget.vertical(spacing: context.dsSpacing.sp500),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RoundedRectangleShimmerWidget(
                height: 120,
                width: 120,
                borderRadius: context.dsRadius.rd200,
              ),
              DSSpacingWidget.horizontal(spacing: context.dsSpacing.sp200),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RoundedRectangleShimmerWidget(
                      height: 14,
                      width: 120,
                      borderRadius: context.dsRadius.rd200,
                    ),
                    DSSpacingWidget.vertical(spacing: context.dsSpacing.sp200),
                    RoundedRectangleShimmerWidget(
                      height: 25,
                      width: double.infinity,
                      borderRadius: context.dsRadius.rd200,
                    ),
                    DSSpacingWidget.vertical(spacing: context.dsSpacing.sp200),
                    RoundedRectangleShimmerWidget(
                      height: 18,
                      width: 100,
                      borderRadius: context.dsRadius.rd200,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
