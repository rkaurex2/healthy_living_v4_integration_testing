import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class YourListSkeletonWidget extends StatelessWidget {
  const YourListSkeletonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: context.dsSpacing.sp400),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RoundedRectangleShimmerWidget(
                height: 35,
                width: 120,
                borderRadius: context.dsRadius.rd200,
              ),

              RoundedRectangleShimmerWidget(
                height: 35,
                width: 35,
                borderRadius: context.dsRadius.rd800,
              ),
            ],
          ),
          DSSpacingWidget.vertical(spacing: context.dsSpacing.sp400),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              spacing: 8,
              children: [
                RoundedRectangleShimmerWidget(
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: 130,
                  borderRadius: context.dsRadius.rd200,
                ),

                RoundedRectangleShimmerWidget(
                  height: 130,
                  width: MediaQuery.of(context).size.width * 0.5,
                  borderRadius: context.dsRadius.rd200,
                ),
                RoundedRectangleShimmerWidget(
                  height: 130,
                  width: MediaQuery.of(context).size.width * 0.5,
                  borderRadius: context.dsRadius.rd200,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
