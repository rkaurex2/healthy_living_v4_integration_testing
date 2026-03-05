import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class CircleBadgeShimmerWidget extends StatelessWidget {
  final double size;
  final Color? baseColor;
  final Color? highlightColor;

  const CircleBadgeShimmerWidget({
    required this.size,
    super.key,
    this.baseColor = DSBaseColors.neutral100,
    this.highlightColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
        color: baseColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(context.dsRadius.rd400),
          topRight: Radius.circular(context.dsRadius.rd800),
          bottomLeft: Radius.circular(context.dsRadius.rd800),
          bottomRight: Radius.circular(context.dsRadius.rd800),
        ),
        border: Border.all(color: Colors.transparent, width: 0),
      ),
    );
  }
}
