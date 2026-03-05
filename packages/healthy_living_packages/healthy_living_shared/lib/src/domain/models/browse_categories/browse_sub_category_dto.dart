import 'package:freezed_annotation/freezed_annotation.dart';

part 'browse_sub_category_dto.freezed.dart';
part 'browse_sub_category_dto.g.dart';

@freezed
sealed class BrowseSubCategoryDTO with _$BrowseSubCategoryDTO {
  const factory BrowseSubCategoryDTO({
    int? id,
    String? name,
    @JsonKey(name: 'product_count') int? productCount,
    @JsonKey(name: 'verified_product_count') int? verifiedProductCount,
  }) = _BrowseSubCategoryDTO;

  factory BrowseSubCategoryDTO.fromJson(Map<String, dynamic> json) =>
      _$BrowseSubCategoryDTOFromJson(json);
}
