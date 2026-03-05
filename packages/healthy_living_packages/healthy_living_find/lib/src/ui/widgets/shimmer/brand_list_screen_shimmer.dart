import 'package:design_system/theme/theme_data/theme_data.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class BrandListScreenShimmer extends StatelessWidget {
  const BrandListScreenShimmer({super.key, this.listItemLength = 20});

  final int listItemLength;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        listItemLength,
        (index) => Padding(
          padding: EdgeInsets.only(
            bottom: index == listItemLength - 1 ? 0 : context.dsSpacing.sp200,
          ),
          child: RoundedRectangleShimmerWidget(
            height: context.dsSizes.sz700,
            width: double.infinity,
          ),
        ),
      ),
    );
  }
}
