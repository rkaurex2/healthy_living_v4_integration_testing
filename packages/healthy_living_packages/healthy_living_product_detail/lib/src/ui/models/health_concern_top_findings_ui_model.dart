import 'package:healthy_living_product_detail/src/ui/models/health_concern_top_findings_ui_item_model.dart';

class HealthConcernTopFindingsUIModel {
  final String title;
  final String iconPath;
  final List<HealthConcernTopFindingsUIItemModel> topFindingList;

  const HealthConcernTopFindingsUIModel({
    required this.title,
    required this.iconPath,
    required this.topFindingList,
  });
}
