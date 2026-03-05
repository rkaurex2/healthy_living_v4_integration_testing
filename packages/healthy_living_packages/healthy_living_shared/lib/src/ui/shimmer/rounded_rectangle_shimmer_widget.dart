import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_shared/src/ui/shimmer/shimmer_wrapper_widget.dart';

class RoundedRectangleShimmerWidget extends StatelessWidget {
  final double borderRadius;
  final double height;
  final double? width;
  final Color? baseColor;
  final Color? highlightColor;

  const RoundedRectangleShimmerWidget({
    super.key,
    this.borderRadius = DSRadius.rd200,
    this.height = DSSize.sz500,
    this.width,
    this.baseColor, this.highlightColor,
  });

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery
        .of(context)
        .size
        .width;
    return WrapInShimmer(
      baseColor: baseColor,
      highlightColor: highlightColor,
      child: Card(
        margin: EdgeInsets.zero,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: SizedBox(
          height: height,
          width: width ?? screenSize * 0.5,
        ),
      ),
    );
  }
}
