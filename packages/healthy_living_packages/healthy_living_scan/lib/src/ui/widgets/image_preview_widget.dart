import 'dart:io';

import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class ImagePreviewWidget extends StatelessWidget {
  final List<String> photos;
  final int selectedPhotoIndex;

  const ImagePreviewWidget({
    required this.photos,
    required this.selectedPhotoIndex,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final safeIndex = selectedPhotoIndex.clamp(0, photos.length - 1);

    return Container(
      width: 343,
      height: 343,
      decoration: BoxDecoration(
        border: Border.all(
          color: context.dsColors.strokeNeutralDefault,
          width: 2,
        ),
        image: DecorationImage(
          image: FileImage(File(photos[safeIndex])),
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
