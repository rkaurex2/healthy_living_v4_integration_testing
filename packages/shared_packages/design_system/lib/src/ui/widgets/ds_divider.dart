import 'package:design_system/theme/theme_data/theme_data.dart';
import 'package:flutter/material.dart';

class DSDivider extends StatelessWidget {
  const DSDivider({super.key, this.height, this.thickness, this.color});

  final double? height;
  final double? thickness;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Divider(
      height: height ?? 1,
      thickness: thickness ?? 1,
      color: context.dsColors.strokeNeutralDefault,
    );
  }
}
