import 'package:healthy_living_shared/src/data/mapper/search/sub_category_dto_mapper.dart';
import 'package:healthy_living_shared/src/data/models/category_aggs/category_dto.dart';
import 'package:healthy_living_shared/src/domain/models/category_aggs/category_model.dart';
import 'package:healthy_living_shared/src/domain/models/subcategory/sub_category_model.dart';

extension CategoryMapper on CategoryDTO {
  CategoryModel? toDomain() {
    final dto = this;
    return CategoryModel(
      id: id ?? -1,
      name: dto.name ?? "",
      count: dto.count ?? 0,
      subCategories:
          dto.subCategories
              ?.map((e) => e.toDomain())
              .whereType<SubCategoryModel>()
              .toList(),
    );
  }
}
