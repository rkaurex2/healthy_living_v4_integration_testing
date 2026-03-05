import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_shared/resources/healthy_living_shared_icons.dart';

class HeaderEwgVerifiedBadge extends StatelessWidget {
  const HeaderEwgVerifiedBadge({super.key, this.size = 32});

  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: context.dsColors.surfaceBrandDefault,
      ),
      child: ClipOval(
        child: Padding(
          padding: EdgeInsets.all(context.dsSpacing.sp100),
          child: DSImage.asset(
            HealthyLivingSharedIcons.icEwgVerified,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
