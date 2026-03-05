import 'package:healthy_living_shared/src/data/mapper/search/category_dto_mapper.dart';
import 'package:healthy_living_shared/src/data/models/category_aggs/category_aggregation_dto.dart';
import 'package:healthy_living_shared/src/domain/models/category_aggs/category_aggregation_model.dart';
import 'package:healthy_living_shared/src/domain/models/category_aggs/category_model.dart';

extension CategoryAggregationDtoMapper on CategoryAggregationDTO {
  CategoryAggregationModel? toDomain() {
    final dto = this;
    return CategoryAggregationModel(
      id: id ?? -1,
      name: dto.name ?? "",
      count: dto.count ?? 0,
      categories:
          dto.categories
              ?.map((e) => e.toDomain())
              .whereType<CategoryModel>()
              .toList() ??
          [],
    );
  }
}
