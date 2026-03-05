import 'package:healthy_living_shared/src/data/models/subcategory/sub_category_dto.dart';
import 'package:healthy_living_shared/src/domain/models/subcategory/sub_category_model.dart';

extension SubCategoryMapper on SubCategoryDTO {
  SubCategoryModel? toDomain() {
    final dto = this;
    return SubCategoryModel(
      id: id ?? -1,
      name: dto.name ?? "",
      count: dto.count ?? 0,
    );
  }
}
