import 'package:healthy_living_shared/healthy_living_shared.dart';

class BrowseProductByCategoryParams {
  final BrowseProductByCategoryType type;
  final List<BrowseMainCategoryModel>? categories;

  const BrowseProductByCategoryParams({
    required this.type,
    required this.categories,
  });
}
