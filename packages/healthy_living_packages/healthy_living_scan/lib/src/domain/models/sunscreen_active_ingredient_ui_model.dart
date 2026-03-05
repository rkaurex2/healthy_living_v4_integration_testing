import 'package:flutter/material.dart';

class SunscreenActiveIngredientUIModel {
  SunscreenActiveIngredientUIModel({
    required this.ingredient,
    required this.percentage,
  }) {
    ingredientController = TextEditingController(text: ingredient);
    percentageController = TextEditingController(text: percentage);
  }

  final Key key = UniqueKey();

  String ingredient;
  String percentage;

  bool hasSelectedIngredient = false;

  late TextEditingController ingredientController;
  late TextEditingController percentageController;
}
