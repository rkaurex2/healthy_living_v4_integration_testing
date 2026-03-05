class CategoryRowItemUiModel {
  final String name;
  final String highLightText;
  final String productType;
  final int subCategoryId;
  final int categoryId;

  const CategoryRowItemUiModel({
    required this.categoryId,
    required this.productType,
    required this.subCategoryId,
    required this.name,
    required this.highLightText,
  });
}
