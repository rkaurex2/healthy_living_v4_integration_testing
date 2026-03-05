import 'dart:io';

import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class CapturedImageItemWidget extends StatelessWidget {
  final String capturedImage;

  const CapturedImageItemWidget({required this.capturedImage, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 104,
      width: 104,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(context.dsRadius.rd300)),
        border: Border.all(color: context.dsColors.strokeNeutralDisabled),
        image: DecorationImage(
          image: FileImage(File(capturedImage)),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

