import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_shared/src/domain/models/browse_categories/browse_category_dto.dart';

part 'browse_main_category_dto.freezed.dart';
part 'browse_main_category_dto.g.dart';
@freezed
sealed class BrowseMainCategoryDTO with _$BrowseMainCategoryDTO {
  const factory BrowseMainCategoryDTO({
    int? id,
    String? name,
    @JsonKey(name: 'product_count') int? productCount,
    @JsonKey(name: 'verified_product_count') int? verifiedProductCount,
    List<BrowseCategoryDTO>? categories,
  }) = _BrowseMainCategoryDTO;

  factory BrowseMainCategoryDTO.fromJson(Map<String, dynamic> json) =>
      _$BrowseMainCategoryDTOFromJson(json);
}