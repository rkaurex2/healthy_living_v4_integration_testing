import 'package:healthy_living_shared/healthy_living_shared.dart' show HazardLevel;

class HazardScoreFilterModel {
  final String title;
  final HazardLevel hazardLevel;
  final String? imagePath;

  const HazardScoreFilterModel({
    required this.title,
    required this.hazardLevel,
    this.imagePath,
  });
}
