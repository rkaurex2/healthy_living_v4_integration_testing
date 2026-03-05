import 'package:healthy_living_shared/healthy_living_shared.dart';

class FindingsHealthConcernUIModel {
  final String iconPath;
  final String title;
  final HazardLevel hazardLevel;
  final String? hazardType;

  const FindingsHealthConcernUIModel({
    required this.iconPath,
    required this.title,
    required this.hazardLevel,
    this.hazardType = "",
  });
}
