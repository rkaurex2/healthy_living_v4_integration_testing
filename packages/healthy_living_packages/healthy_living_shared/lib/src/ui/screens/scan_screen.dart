import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class ScanScreen extends StatelessWidget {
  const ScanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox.expand(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              HeaderWithTitle(
                title: "Scan Screen",
                textStyle: DSTextStyleType.primarySubHeadingM,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
