import 'package:design_system/theme/colors/base_colors.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_shared/src/ui/shimmer/shimmer.dart';

class WrapInShimmer extends StatelessWidget {
  final Widget child;
  final Color? baseColor;
  final Color? highlightColor;

  const WrapInShimmer({
    required this.child, super.key,
    this.baseColor, this.highlightColor,
  });

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: baseColor ?? DSBaseColors.opacityNeutralOpacity300,
      highlightColor: highlightColor ?? DSBaseColors.opacityNeutralOpacity100,
      child: child,
    );
  }
}
