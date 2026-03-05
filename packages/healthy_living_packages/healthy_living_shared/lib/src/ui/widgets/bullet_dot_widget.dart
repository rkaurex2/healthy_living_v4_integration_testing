import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class BulletDotWidget extends StatelessWidget {
  final double size;
  final Color? color;

  const BulletDotWidget({super.key, this.size = 6, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: color??context.dsColors.textNeutralOnWhite,
        shape: BoxShape.circle,
      ),
    );
  }
}
