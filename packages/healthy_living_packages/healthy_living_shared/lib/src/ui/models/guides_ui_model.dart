import 'dart:ui';

import 'package:healthy_living_shared/src/ui/models/guides_type.dart';

class GuidesUiModel {
  final String image;
  final String title;
  final Color titleColor;
  final String url;
  final GuidesType type;
  final Color backgroundColor;
  final String webViewTitle;
  final double imageWidth;
  final double imageHeight;

  const GuidesUiModel({
    required this.image,
    required this.title,
    required this.titleColor,
    required this.url,
    required this.type,
    required this.backgroundColor,
    required this.webViewTitle,
    required this.imageWidth,
    required this.imageHeight,
  });
}
