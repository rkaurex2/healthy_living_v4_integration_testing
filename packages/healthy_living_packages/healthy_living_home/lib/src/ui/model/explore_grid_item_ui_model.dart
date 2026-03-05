import 'package:healthy_living_home/src/ui/model/explore_grid_item_type.dart';

class ExploreGridItemUiModel {
  final String imageUrl;
  final String title;
  final String description;
  final ExploreGridItemType type;

  const ExploreGridItemUiModel({
    required this.imageUrl,
    required this.title,
    required this.description,
    required this.type,
  });
}
