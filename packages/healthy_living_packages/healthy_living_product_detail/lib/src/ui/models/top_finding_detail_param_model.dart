import 'dart:ui';

class TopFindingDetailParamModel {
  final String title;
  final String summaryText;
  final String readMoreText;
  final String score;
  final Color findingsTypeColor;

  TopFindingDetailParamModel({
    required this.title,
    required this.score,
    required this.readMoreText,
    required this.summaryText,
    required this.findingsTypeColor,
  });
}
