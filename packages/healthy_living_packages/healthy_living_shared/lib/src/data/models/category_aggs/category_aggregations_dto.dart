import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_shared/src/data/models/category_aggs/category_aggregation_dto.dart';

part 'category_aggregations_dto.freezed.dart';
part 'category_aggregations_dto.g.dart';

@freezed
sealed class CategoryAggregationsDTO with _$CategoryAggregationsDTO {
  const factory CategoryAggregationsDTO({
    @JsonKey(name: 'cleaners') List<CategoryAggregationDTO>? cleaners,
    @JsonKey(name: 'personal_care') List<CategoryAggregationDTO>? personalCare,
    @JsonKey(name: 'food') List<CategoryAggregationDTO>? food,
  }) = _CategoryAggregationsDTO;

  factory CategoryAggregationsDTO.fromJson(Map<String, dynamic> json) =>
      _$CategoryAggregationsDTOFromJson(json);
}
