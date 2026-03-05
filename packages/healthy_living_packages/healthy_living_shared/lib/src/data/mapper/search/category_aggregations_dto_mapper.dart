import 'package:healthy_living_shared/src/data/mapper/search/category_aggregation_dto_mapper.dart';
import 'package:healthy_living_shared/src/data/models/category_aggs/category_aggregations_dto.dart';
import 'package:healthy_living_shared/src/domain/models/category_aggs/category_aggregation_model.dart';
import 'package:healthy_living_shared/src/domain/models/category_aggs/category_aggregations_model.dart';

extension CategoryAggregationsDtoMapper on CategoryAggregationsDTO {
  CategoryAggregationsModel? toDomain() {
    final dto = this;
    return CategoryAggregationsModel(
      cleaners:
          dto.cleaners
              ?.map((e) => e.toDomain())
              .whereType<CategoryAggregationModel>()
              .toList() ??
          [],
      personalCare:
          dto.personalCare
              ?.map((e) => e.toDomain())
              .whereType<CategoryAggregationModel>()
              .toList() ??
          [],
      food:
          dto.food
              ?.map((e) => e.toDomain())
              .whereType<CategoryAggregationModel>()
              .toList() ??
          [],
    );
  }
}
