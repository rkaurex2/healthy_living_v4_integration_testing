import 'dart:ui';

import 'package:healthy_living_account/src/ui/model/about_scores_type.dart';

class AboutScoresUiModel {
  final String title;
  final String description;
  final Color titleColor;
  final Color descriptionColor;
  final String url;
  final AboutScoresType type;
  final Color backgroundColor;

  const AboutScoresUiModel({
    required this.title,
    required this.description,
    required this.titleColor,
    required this.descriptionColor,
    required this.url,
    required this.type,
    required this.backgroundColor,
  });
}
