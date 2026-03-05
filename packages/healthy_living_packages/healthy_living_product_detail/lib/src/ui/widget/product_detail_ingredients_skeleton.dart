import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class ProductDetailIngredientsSkeleton extends StatelessWidget {
  const ProductDetailIngredientsSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: context.dsColors.surfaceNeutralBackgroundMedium,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(context.dsRadius.rd600),
          topRight: Radius.circular(context.dsRadius.rd600),
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: context.dsSpacing.sp500,
              bottom: context.dsSpacing.sp200,
            ),
            child: SizedBox(height: 30),
          ),

          Padding(
            padding: EdgeInsets.only(
              left: context.dsSpacing.sp400,
              top: context.dsSpacing.sp200,
              right: context.dsSpacing.sp400,
              bottom: context.dsSpacing.sp500,
            ),
            child: Container(
              decoration: BoxDecoration(
                color: context.dsColors.surfaceNeutralContainerWhite,
                borderRadius: BorderRadius.circular(context.dsRadius.rd300),
              ),
              child: Padding(
                padding: EdgeInsets.all(context.dsSpacing.sp400),
                child: Column(
                  spacing: context.dsSpacing.sp200,
                  children: List.generate(
                    8,
                    (_) => RoundedRectangleShimmerWidget(
                      height: 53,
                      width: double.infinity,
                      borderRadius: context.dsRadius.rd200,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
