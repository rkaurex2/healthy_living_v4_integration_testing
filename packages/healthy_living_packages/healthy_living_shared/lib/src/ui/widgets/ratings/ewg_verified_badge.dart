import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_shared/resources/healthy_living_shared_icons.dart';

class EwgVerifiedBadge extends StatelessWidget {
  const EwgVerifiedBadge({
    super.key,
    this.size = 72,
    this.onTap,
  });

  final double size;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final badge = Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: context.dsColors.surfaceBrandDefault,
        border: Border.all(
          color: context.dsColors.surfaceNeutralContainerWhite,
          width: context.dsRadius.rd300,
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(context.dsSpacing.sp0, context.dsSpacing.sp100),
            blurRadius: context.dsRadius.rd200,
            spreadRadius: context.dsSpacing.sp100,
            color: Colors.black.withValues(alpha: 0.08),
          ),
        ],
      ),
      child: ClipOval(
        child: Padding(
          padding: EdgeInsets.all(context.dsSpacing.sp200),
          child: DSImage.asset(
            HealthyLivingSharedIcons.icEwgVerified,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );

    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque, // ensures full area is tappable
      child: badge,
    );
  }
}
