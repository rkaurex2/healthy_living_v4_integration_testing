import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_shared/src/ui/models/browse_categories/browse_main_category_model.dart';

part 'browse_universal_categories_model.freezed.dart';

@freezed
sealed class BrowseUniversalCategoriesModel
    with _$BrowseUniversalCategoriesModel {
  const factory BrowseUniversalCategoriesModel({
    List<BrowseMainCategoryModel>? personalCare,
    List<BrowseMainCategoryModel>? cleaners,
    List<BrowseMainCategoryModel>? food,
  }) = _BrowseUniversalCategoriesModel;
}
