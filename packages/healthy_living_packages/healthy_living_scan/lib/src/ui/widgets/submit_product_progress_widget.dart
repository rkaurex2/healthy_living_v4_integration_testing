import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class SubmitProductProgressWidget extends StatelessWidget {
  const SubmitProductProgressWidget({
    required this.currentStep,
    required this.totalSteps,
    super.key,
  }) : assert(currentStep >= 0),
       assert(totalSteps > 0),
       assert(currentStep <= totalSteps);

  final int currentStep;
  final int totalSteps;

  @override
  Widget build(BuildContext context) {
    final remaining = (totalSteps - currentStep).clamp(0, totalSteps);

    return Padding(
      padding: EdgeInsets.only(top: context.dsSpacing.sp400),
      child: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.70,
          height: 6,
          decoration: BoxDecoration(
            color: context.dsColors.surfaceNeutralContainer3,
            borderRadius: BorderRadius.circular(context.dsRadius.rd1000),
          ),
          child: Row(
            children: [
              if (currentStep > 0)
                Expanded(
                  flex: currentStep,
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          context.dsColors.surfaceBrandDefault,
                          context.dsColors.surfaceCategoriesEwgVerified1,
                        ],
                      ),
                      borderRadius: BorderRadius.circular(
                        context.dsRadius.rd1000,
                      ),
                    ),
                  ),
                ),
              if (remaining > 0)
                Expanded(
                  flex: remaining,
                  child: Container(),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
