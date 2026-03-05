import 'dart:ui';

class IngredientItemUIModel {
  final int? id;
  final String name;
  final String? score;
  final Color? scoreBackgroundColor;
  final String? hazardText;
  final String? dataText;
  final bool? isPrefer;
  final bool? isAvoid;

  const IngredientItemUIModel({
    required this.name,
    this.id,
    this.score,
    this.scoreBackgroundColor,
    this.hazardText,
    this.isPrefer,
    this.isAvoid,
    this.dataText,
  });
}
