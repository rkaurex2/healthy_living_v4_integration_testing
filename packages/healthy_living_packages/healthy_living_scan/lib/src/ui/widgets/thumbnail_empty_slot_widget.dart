import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class ThumbnailEmptySlotWidget extends StatelessWidget {
  const ThumbnailEmptySlotWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 104,
      height: 104,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(context.dsRadius.rd300),
        border: Border.all(
          color: context.dsColors.strokeNeutralDefault,
          width: 1,
        ),
        color: context.dsColors.surfaceNeutralBackgroundMedium,
      ),
    );
  }
}