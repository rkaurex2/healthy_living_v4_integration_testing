import 'package:healthy_living_shared/healthy_living_shared.dart';

class BrowseProductByCategoryParam {
  final BrowseProductByCategoryType type;
  final String categoryGroupTitle;
  String? categoryGroupId;
  int? categoryId;
  int? subCategoryId;
  String? categoryName;
  bool? isEWGVerified;

  BrowseProductByCategoryParam({
    required this.type,
    required this.categoryGroupTitle,
    this.categoryGroupId,
    this.categoryId,
    this.subCategoryId,
    this.categoryName,
    this.isEWGVerified,
  });
}
