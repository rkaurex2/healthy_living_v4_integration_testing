
import 'package:healthy_living_shared/healthy_living_shared.dart';

class ProductCategoryUIModel {
  final String imageAsset;
  final String title;
  final String subtitle;
  final bool isInstantScoring;
  final ProductCategory productByCategoryType;
  const ProductCategoryUIModel({
    required this.imageAsset,
    required this.title,
    required this.subtitle,
    required this.isInstantScoring,
    required this.productByCategoryType,
  });
}
