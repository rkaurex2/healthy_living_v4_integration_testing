class BrowseProductCategoryUIModel {
  final int id;
  final String image;
  final String brand;
  final String title;
  final String? score;
  final bool isEWGVerified;

  const BrowseProductCategoryUIModel({
    required this.title,
    required this.id,
    required this.image,
    required this.isEWGVerified,
    required this.brand,
    this.score,
  });
}
