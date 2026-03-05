import 'package:freezed_annotation/freezed_annotation.dart';

part 'browse_sub_category_model.freezed.dart';

@freezed
sealed class BrowseSubCategoryModel with _$BrowseSubCategoryModel {
  const factory BrowseSubCategoryModel({
    int? id,
    String? name,
    int? productCount,
    int? verifiedProductCount,
  }) = _BrowseSubCategoryModel;
}
