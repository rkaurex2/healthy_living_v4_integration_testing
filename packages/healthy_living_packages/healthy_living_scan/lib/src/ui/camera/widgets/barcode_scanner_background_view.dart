import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class BarcodeScannerBackgroundView extends StatelessWidget {
  const BarcodeScannerBackgroundView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.dsColors.surfacePrimaryDefault,
      body: const SizedBox.expand(),
    );
  }
}
