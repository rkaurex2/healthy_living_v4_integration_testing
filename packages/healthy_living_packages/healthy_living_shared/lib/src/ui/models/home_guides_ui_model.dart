import 'dart:ui';

import 'package:healthy_living_shared/src/ui/models/guides_type.dart';

class HomeGuidesUiModel {
  final String image;
  final String title;
  final Color titleColor;
  final Color borderColor;
  final String url;
  final GuidesType type;
  final Color backgroundColor;
  final String webViewTitle;

  const HomeGuidesUiModel({
    required this.image,
    required this.title,
    required this.titleColor,
    required this.borderColor,
    required this.url,
    required this.type,
    required this.backgroundColor,
    required this.webViewTitle,
  });
}
