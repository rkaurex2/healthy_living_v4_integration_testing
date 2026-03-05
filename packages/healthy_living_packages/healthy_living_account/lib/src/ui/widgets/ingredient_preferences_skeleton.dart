import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class IngredientSkeleton extends StatelessWidget {
  const IngredientSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RoundedRectangleShimmerWidget(
          height: context.dsSpacing.sp400,
          width: 200,
        ),

        DSSpacingWidget.vertical(spacing: context.dsSpacing.sp300),

        // List of skeleton cards
        ...List.generate(4, (index) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: context.dsSpacing.sp200),
            child: Container(
              padding: EdgeInsets.all(context.dsSpacing.sp400),
              decoration: BoxDecoration(
                color: DSBaseColors.opacityNeutralOpacity300,
                borderRadius: BorderRadius.circular(context.dsSpacing.sp300),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Text columns
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RoundedRectangleShimmerWidget(
                          height: 14,
                          width: double.infinity,
                        ),
                        DSSpacingWidget.vertical(
                          spacing: context.dsSpacing.sp200,
                        ),
                        RoundedRectangleShimmerWidget(
                          height: context.dsSpacing.sp300,
                          width: 160,
                        ),
                      ],
                    ),
                  ),

                  DSSpacingWidget.horizontal(spacing: context.dsSpacing.sp400),
                  // Right-side icon skeleton
                  RoundedRectangleShimmerWidget(height: 28, width: 28),
                ],
              ),
            ),
          );
        }),
      ],
    );
  }
}
