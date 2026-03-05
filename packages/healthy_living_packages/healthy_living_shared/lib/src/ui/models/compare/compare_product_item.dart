import 'package:healthy_living_shared/healthy_living_shared.dart';

class CompareProductItem {
  final int? id;
  final int? skinDeepId;
  final String? imageUrl;
  final String? brand;
  final SearchType? categoryType;
  final String? title;
  final String? score;
  final bool isEwgVerified;
  final String? highLightText;

  const CompareProductItem({
    this.imageUrl,
    this.brand,
    this.title,
    this.highLightText,
    this.score,
    this.isEwgVerified = false,
    this.id,
    this.categoryType,
    this.skinDeepId,
  });
}
