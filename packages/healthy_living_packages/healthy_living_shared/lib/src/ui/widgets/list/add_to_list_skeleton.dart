import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class AddToListSkeleton extends StatelessWidget {
  const AddToListSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: context.dsSpacing.sp400,
              ),
              child: RoundedRectangleShimmerWidget(
                height: 20,
                width: MediaQuery.of(context).size.width * 0.55,
                borderRadius: context.dsRadius.rd200,
                baseColor: context.dsColors.surfaceNeutralContainer3,
                highlightColor: context.dsColors.surfaceNeutralContainer2,
              ),
            ),
            DSSpacingWidget.vertical(spacing: context.dsSpacing.sp400),
            ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.symmetric(
                horizontal: context.dsSpacing.sp400,
              ),
              itemCount: 4,
              separatorBuilder:
                  (_, __) => SizedBox(height: context.dsSpacing.sp400),
              itemBuilder: (context, index) {
                return RoundedRectangleShimmerWidget(
                  height: 50,
                  width: double.infinity,
                  borderRadius: context.dsRadius.rd200,
                  baseColor: context.dsColors.surfaceNeutralContainer3,
                  highlightColor: context.dsColors.surfaceNeutralContainer2,
                );
              },
            ),
            DSSpacingWidget.vertical(spacing: context.dsSpacing.sp400),
          ],
        ),
      ),
    );
  }
}
