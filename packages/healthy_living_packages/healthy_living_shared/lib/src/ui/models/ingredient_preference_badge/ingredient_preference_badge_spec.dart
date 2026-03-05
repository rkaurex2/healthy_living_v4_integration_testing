import 'package:design_system/design_system.dart' show DSTextStyleType;
import 'package:flutter/material.dart';

class IngredientPreferenceBadgeSpec {
  final EdgeInsets containerPadding;
  final double iconSize;
  final DSTextStyleType? textStyle;

  const IngredientPreferenceBadgeSpec({
    required this.containerPadding,
    required this.iconSize,
    this.textStyle,
  });
}