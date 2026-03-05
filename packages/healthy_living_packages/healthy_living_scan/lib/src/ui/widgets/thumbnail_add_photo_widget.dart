import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class ThumbnailAddPhotoWidget extends StatelessWidget {
  final VoidCallback onTap;

  const ThumbnailAddPhotoWidget({
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: CustomPaint(
        painter: DottedBorderPainterWidget(
          color: context.dsColors.strokePrimaryDefault,
          strokeWidth: 1,
          dashWidth: 2,
          dashSpace: 2,
          borderRadius: context.dsRadius.rd300,
        ),
        child: Container(
          width: 104,
          height: 104,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: context.dsColors.surfaceNeutralBackgroundMedium,
            borderRadius: BorderRadius.circular(context.dsRadius.rd300),
          ),
          child: DSImage.asset(
            DSIcons.icCircleAdd,
            color: context.dsColors.iconPrimary,
            width: context.dsSizes.sz500,
            height: context.dsSizes.sz500,
          ),
        ),
      ),
    );
  }
}