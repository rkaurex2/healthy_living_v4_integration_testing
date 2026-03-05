import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_shared/src/ui/models/browse_categories/browse_sub_category_model.dart';

part 'browse_category_model.freezed.dart';

@freezed
sealed class BrowseCategoryModel with _$BrowseCategoryModel {
  const factory BrowseCategoryModel({
    int? id,
    String? name,
    int? productCount,
    int? verifiedProductCount,
    List<BrowseSubCategoryModel>? subCategories,
  }) = _BrowseCategoryModel;
}
