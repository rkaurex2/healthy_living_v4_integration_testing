import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class TopBarHeader extends StatelessWidget {
  final String? centerIcon;
  final String? trailIcon;
  final String? leadIcon;
  final bool hideBackButton;

  const TopBarHeader({
    super.key,
    this.trailIcon,
    this.centerIcon,
    this.leadIcon,
    this.hideBackButton = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 20.0,
        right: 20.0,
        top: 14.0,
        bottom: context.dsSpacing.sp200,
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          if (!hideBackButton) ...{
            Align(
              alignment: Alignment.centerLeft,
              child: GestureDetector(
                onTap: () {
                  try {
                    context.pop(context);
                  } catch (e) {
                    if (e.toString().contains(StringConstants.popGoErrorMessage)) {
                      context.go(AppRoutes.home.path);
                    }
                  }
                },
                child: DSImage.asset(
                  leadIcon ?? DSIcons.icArrowLeft,
                  height: 24,
                  width: 24,
                ),
              ),
            ),
          },
          if (centerIcon != null && centerIcon!.isNotEmpty)
            DSImage.asset(centerIcon!, width: 144),
          if (trailIcon != null && trailIcon!.isNotEmpty)
            Align(
              alignment: Alignment.centerRight,
              child: DSImage.asset(trailIcon!, height: 24, width: 24),
            ),
        ],
      ),
    );
  }
}
