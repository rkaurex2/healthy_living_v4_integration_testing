import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class DsModalCircleImage extends StatelessWidget {
  const DsModalCircleImage({
    required this.primaryImagePath,
    required this.secondaryImagePath,
    super.key,
  });

  final String primaryImagePath;
  final String secondaryImagePath;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 72, vertical: 8),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          DSImage.asset(primaryImagePath, width: 200, height: 200),
          Positioned(
            bottom: -10,
            right: -20,
            child: Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                color: context.dsColors.surfacePrimaryHover,
                shape: BoxShape.circle,
              ),
              child: Center(
                child: DSImage.asset(
                  secondaryImagePath,
                  color: context.dsColors.iconOnSurfaceDefault,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
