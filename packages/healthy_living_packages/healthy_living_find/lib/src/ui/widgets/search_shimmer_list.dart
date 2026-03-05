import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart' show IntegerConstants, RoundedRectangleShimmerWidget;

class SearchShimmerList extends StatelessWidget {
  const SearchShimmerList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.all(context.dsSizes.sz400),
      itemBuilder:
          (_, __) => RoundedRectangleShimmerWidget(
        height: 112,
        width: double.infinity,
        borderRadius: DSRadius.rd200,
        baseColor: context.dsColors.surfaceNeutralContainer3,
        highlightColor: context.dsColors.surfaceNeutralContainer2,
      ),
      separatorBuilder: (_, __) => SizedBox(height: DSSize.sz200),
      itemCount: IntegerConstants.searchShimmerListItemCount,
    );
  }
}