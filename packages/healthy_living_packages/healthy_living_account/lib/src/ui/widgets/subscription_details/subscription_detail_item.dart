import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class SubscriptionDetailItem extends StatelessWidget {
  final String label;
  final String value;
  final bool isLoading;

  const SubscriptionDetailItem({
    required this.label,
    required this.value,
    required this.isLoading,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DSText(
          text: label,
          textStyle: DSTextStyleType.primaryCaption,
          textColor: context.dsColors.textNeutralSecondary,
        ),
        DSSpacingWidget.vertical(spacing: context.dsSpacing.sp100),
        if (isLoading) ...{
          RoundedRectangleShimmerWidget(height: 16),
        } else ...{
          DSText(
            text: value,
            textStyle: DSTextStyleType.primaryBodyMRegular,
            textColor: context.dsColors.textNeutralOnWhite,
          ),
        },
      ],
    );
  }
}
