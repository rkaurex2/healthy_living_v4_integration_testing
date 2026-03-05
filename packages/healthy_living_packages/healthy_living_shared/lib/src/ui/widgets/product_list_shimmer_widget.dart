import 'package:design_system/design_system.dart' show DSSpacingWidget;
import 'package:design_system/theme/theme_data/theme_data.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart'
    show RoundedRectangleShimmerWidget;

class ProductListShimmerWidget extends StatelessWidget {
  const ProductListShimmerWidget({super.key, this.itemCount = 7, this.padding});

  final int itemCount;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      padding: padding,
      physics: NeverScrollableScrollPhysics(),
      itemCount: itemCount,
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
