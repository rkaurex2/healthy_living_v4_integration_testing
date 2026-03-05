import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_shared/src/domain/models/browse_categories/browse_main_category_dto.dart';
part 'browse_universal_categories_dto.freezed.dart';
part 'browse_universal_categories_dto.g.dart';

@freezed
sealed class BrowseUniversalCategoriesDTO
    with _$BrowseUniversalCategoriesDTO {
  const factory BrowseUniversalCategoriesDTO({
    @JsonKey(name: 'personal_care') List<BrowseMainCategoryDTO>? personalCare,
    List<BrowseMainCategoryDTO>? cleaners,
    List<BrowseMainCategoryDTO>? food,
  }) = _BrowseUniversalCategoriesDTO;

  factory BrowseUniversalCategoriesDTO.fromJson(Map<String, dynamic> json) =>
      _$BrowseUniversalCategoriesDTOFromJson(json);
}
