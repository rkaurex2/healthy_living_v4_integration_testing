import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_shared/src/data/models/subcategory/sub_category_dto.dart';

part 'category_dto.freezed.dart';
part 'category_dto.g.dart';

@freezed
sealed class CategoryDTO with _$CategoryDTO {
  const factory CategoryDTO({
    int? id,
    String? name,
    int? count,
    @JsonKey(name: 'sub_categories') List<SubCategoryDTO>? subCategories,
  }) = _CategoryDTO;

  factory CategoryDTO.fromJson(Map<String, dynamic> json) =>
      _$CategoryDTOFromJson(json);
}
