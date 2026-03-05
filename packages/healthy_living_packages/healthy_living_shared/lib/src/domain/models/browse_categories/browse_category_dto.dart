import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_shared/src/domain/models/browse_categories/browse_sub_category_dto.dart';

part 'browse_category_dto.freezed.dart';
part 'browse_category_dto.g.dart';
@freezed
sealed class BrowseCategoryDTO with _$BrowseCategoryDTO {
  const factory BrowseCategoryDTO({
    int? id,
    String? name,
    @JsonKey(name: 'product_count') int? productCount,
    @JsonKey(name: 'verified_product_count') int? verifiedProductCount,
    @JsonKey(name: 'sub_categories') List<BrowseSubCategoryDTO>? subCategories,
  }) = _BrowseCategoryDTO;

  factory BrowseCategoryDTO.fromJson(Map<String, dynamic> json) =>
      _$BrowseCategoryDTOFromJson(json);
}
