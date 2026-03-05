import 'package:healthy_living_shared/src/data/models/brand_aggs/brand_aggregation_dto.dart';
import 'package:healthy_living_shared/src/domain/models/brand_aggs/brand_aggregation_model.dart';

extension BrandAggregationDTOMapper on BrandAggregationDTO {
  BrandAggregationModel toDomain() {
    return BrandAggregationModel(
      id: id ?? -1,
      name: name?.trim() ?? "",
      count: count ?? 0,
    );
  }
}
