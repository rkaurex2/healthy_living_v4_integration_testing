import 'package:healthy_living_shared/healthy_living_shared.dart' show BrowseProductByCategoryType;

class BrowseFeatureCategoryListItemModel {
  final BrowseProductByCategoryType categoryType;
  final int categoryGroupId;
  final int? categoryId;
  final int? subCategoryId;
  final String name;
  final String nameForUi;

  const BrowseFeatureCategoryListItemModel({
    required this.categoryType,
    required this.categoryGroupId,
    required this.name,
    required this.nameForUi,
    this.categoryId,
    this.subCategoryId,
  });
}
