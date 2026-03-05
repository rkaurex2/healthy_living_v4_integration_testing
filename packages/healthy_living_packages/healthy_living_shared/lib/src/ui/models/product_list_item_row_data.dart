import 'package:healthy_living_shared/healthy_living_shared.dart';

class ProductItemRowData {
  final int? id;
  final String imageUrl;
  final String brand;
  final String? categoryType;
  final String title;
  final String? highLightText;
  final String? score;
  final bool isEWGVerified;
  ProductSelectionType? productSelectionType;

  ProductItemRowData({
    required this.imageUrl,
    required this.brand,
    required this.title,
    required this.isEWGVerified,
    this.highLightText,
    this.id,
    this.score,
    this.categoryType,
    this.productSelectionType = ProductSelectionType.none,
  });
}
