import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_product_detail/src/ui/widget/product_detail_ingredients_skeleton.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class ProductDetailContentSkeleton extends StatelessWidget {
  const ProductDetailContentSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.all(context.dsSpacing.sp400),
          child: Column(
            children: [
              Center(
                child: RoundedRectangleShimmerWidget(
                  height: 200,
                  width: 200,
                  borderRadius: context.dsRadius.rd200,
                ),
              ),
              DSSpacingWidget.vertical(spacing: context.dsSpacing.sp400),

              RoundedRectangleShimmerWidget(
                height: 96,
                width: double.infinity,
                borderRadius: context.dsRadius.rd200,
              ),
              DSSpacingWidget.vertical(spacing: context.dsSpacing.sp400),

              RoundedRectangleShimmerWidget(
                height: 22,
                width: double.infinity,
                borderRadius: context.dsRadius.rd200,
              ),
            ],
          ),
        ),

        DSSpacingWidget.vertical(spacing: context.dsSpacing.sp200),

        const ProductDetailIngredientsSkeleton(),
      ],
    );
  }
}