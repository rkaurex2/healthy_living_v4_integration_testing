import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_shared/src/ui/models/browse_categories/browse_category_model.dart';

part 'browse_main_category_model.freezed.dart';

@freezed
sealed class BrowseMainCategoryModel with _$BrowseMainCategoryModel {
  const factory BrowseMainCategoryModel({
    int? id,
    String? name,
    int? productCount,
    int? verifiedProductCount,
    List<BrowseCategoryModel>? categories,
  }) = _BrowseMainCategoryModel;
}
