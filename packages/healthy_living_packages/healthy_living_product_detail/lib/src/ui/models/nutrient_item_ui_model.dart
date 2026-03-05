class NutrientItemUIModel {
  final String label;
  final String value;
  final String? percent;

  const NutrientItemUIModel({
    required this.label,
    required this.value,
    this.percent,
  });
}
