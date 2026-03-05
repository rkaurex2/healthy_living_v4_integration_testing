import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class MyItemsListSkeletonWidget extends StatelessWidget {
  const MyItemsListSkeletonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.symmetric(
        horizontal: context.dsSpacing.sp300,
        vertical: context.dsSpacing.sp300,
      ),
      itemCount: 7,
      separatorBuilder:
          (_, __) => DSSpacingWidget.vertical(spacing: context.dsSpacing.sp300),
      itemBuilder: (context, index) {
        return RoundedRectangleShimmerWidget(
          height: 120,
          width: MediaQuery.of(context).size.width,
          borderRadius: context.dsRadius.rd200,
        );
      },
    );
  }
}
