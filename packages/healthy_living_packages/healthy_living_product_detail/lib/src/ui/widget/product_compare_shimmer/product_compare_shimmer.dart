import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_product_detail/src/ui/widget/product_compare_shimmer/product_comparison_card_item_shimmer.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class ProductComparisonShimmer extends StatelessWidget {
  const ProductComparisonShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    final spacing = context.dsSpacing;

    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            color: context.dsColors.surfaceNeutralContainerWhite,
            child: IntrinsicHeight(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: spacing.sp400,
                        vertical: spacing.sp500,
                      ),
                      child: ProductComparisonCardItemShimmer(),
                    ),
                  ),
                  VerticalDivider(
                    color: context.dsColors.strokeNeutralDefault,
                    width: 0,
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: spacing.sp400,
                        vertical: spacing.sp500,
                      ),
                      child: const ProductComparisonCardItemShimmer(),
                    ),
                  ),
                ],
              ),
            ),
          ),

          const DSDivider(),

          // Ingredient Preferences section (title + chips)
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: spacing.sp400,
              vertical: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RoundedRectangleShimmerWidget(
                  width: double.infinity,
                  height: context.dsSizes.sz700,
                ),
                DSSpacingWidget.vertical(spacing: spacing.sp300),
                IntrinsicHeight(
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            RoundedRectangleShimmerWidget(
                              width: 120,
                              height: context.dsSizes.sz300,
                            ),
                            DSSpacingWidget.vertical(
                              spacing: context.dsSpacing.sp200,
                            ),
                            RoundedRectangleShimmerWidget(
                              width: 120,
                              height: context.dsSizes.sz300,
                            ),
                            DSSpacingWidget.vertical(
                              spacing: context.dsSpacing.sp200,
                            ),
                            RoundedRectangleShimmerWidget(
                              width: 120,
                              height: context.dsSizes.sz300,
                            ),
                            DSSpacingWidget.vertical(
                              spacing: context.dsSpacing.sp200,
                            ),
                          ],
                        ),
                      ),
                      VerticalDivider(
                        width: context.dsSizes.sz400,
                        thickness: 1,
                        color: context.dsColors.strokeNeutralDefault,
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            RoundedRectangleShimmerWidget(
                              width: 120,
                              height: context.dsSizes.sz300,
                            ),
                            DSSpacingWidget.vertical(
                              spacing: context.dsSpacing.sp200,
                            ),
                            RoundedRectangleShimmerWidget(
                              width: 120,
                              height: context.dsSizes.sz300,
                            ),
                            DSSpacingWidget.vertical(
                              spacing: context.dsSpacing.sp200,
                            ),
                            RoundedRectangleShimmerWidget(
                              width: 120,
                              height: context.dsSizes.sz300,
                            ),
                            DSSpacingWidget.vertical(
                              spacing: context.dsSpacing.sp200,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: spacing.sp400,
              vertical: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RoundedRectangleShimmerWidget(
                  width: 220,
                  height: context.dsSizes.sz400,
                ),
                DSSpacingWidget.vertical(spacing: spacing.sp300),
                ...List.generate(
                  4,
                  (_) => Padding(
                    padding: EdgeInsets.only(bottom: spacing.sp300),
                    child: Row(
                      children: [
                        Expanded(
                          child: RoundedRectangleShimmerWidget(
                            width: double.infinity,
                            height: 14,
                          ),
                        ),
                        DSSpacingWidget.horizontal(
                          spacing: context.dsSpacing.sp400,
                        ),
                        RoundedRectangleShimmerWidget(width: 60, height: 14),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
