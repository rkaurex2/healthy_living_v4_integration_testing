import 'package:healthy_living_shared/healthy_living_shared.dart';

class IngredientDetailModel {
  const IngredientDetailModel({
    required this.id,
    required this.name,
    this.score,
    this.hazardLevel,
    this.dataText,
  });

  final int id;
  final String name;
  final String? score;
  final HazardLevel? hazardLevel;
  final String? dataText;
}
