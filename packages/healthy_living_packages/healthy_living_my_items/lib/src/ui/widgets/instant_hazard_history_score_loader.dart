import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class InstantHazardHistoryScoreLoader extends StatelessWidget {
  const InstantHazardHistoryScoreLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: context.dsSpacing.sp400,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          DSSpacingWidget.vertical(
                            spacing: context.dsSpacing.sp300,
                          ),

                          RoundedRectangleShimmerWidget(height: 60,width: double.infinity,),

                          DSSpacingWidget.vertical(
                            spacing: context.dsSpacing.sp400,
                          ),

                          RoundedRectangleShimmerWidget(height: 200,width: double.infinity),

                          DSSpacingWidget.vertical(
                            spacing: context.dsSpacing.sp400,
                          ),

                          RoundedRectangleShimmerWidget(
                            height: context.dsSizes.sz500,
                            width: 140,
                          ),

                          DSSpacingWidget.vertical(
                            spacing: context.dsSpacing.sp300,
                          ),

                          RoundedRectangleShimmerWidget(
                            height: 22,
                            width: double.infinity,
                          ),

                          DSSpacingWidget.vertical(
                            spacing: context.dsSpacing.sp800,
                          ),

                          Center(
                            child: Wrap(
                              spacing: context.dsSpacing.sp100,
                              children: List.generate(
                                2,
                                (_) => RoundedRectangleShimmerWidget(
                                  height: 38,
                                  width: 100,
                                  borderRadius: context.dsRadius.rd500,
                                ),
                              ),
                            ),
                          ),

                          DSSpacingWidget.vertical(
                            spacing: context.dsSpacing.sp500,
                          ),
                        ],
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.all(context.dsSpacing.sp400),
                      child: Column(
                        children: List.generate(
                          3,
                          (_) => Padding(
                            padding: EdgeInsets.only(
                              bottom: context.dsSpacing.sp300,
                            ),
                            child: RoundedRectangleShimmerWidget(height: 60,width: double.infinity),
                          ),
                        ),
                      ),
                    ),

                    Container(
                      color: context.dsColors.surfaceNeutralBackgroundLight,
                      padding: EdgeInsets.all(context.dsSpacing.sp300),
                      child: RoundedRectangleShimmerWidget(
                        height: context.dsSizes.sz300,
                        width: double.infinity,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
