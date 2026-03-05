import 'dart:ui';

import 'package:healthy_living_home/src/utils/user_guide_slide_type_model.dart';

class UserGuideCarouselContentModel {
  final String title;
  final String mainText;
  final String learnMoreText;
  final Color? backgroundColor;
  final Color overlayColor;
  final String? badge;
  final String? backgroundImage;
  final UserGuideSlideType? userGuideSlideType;

  UserGuideCarouselContentModel({
    required this.title,
    required this.mainText,
    required this.learnMoreText,
    required this.overlayColor,
    this.backgroundColor,
    this.backgroundImage,
    this.userGuideSlideType,
    this.badge,
  });
}
