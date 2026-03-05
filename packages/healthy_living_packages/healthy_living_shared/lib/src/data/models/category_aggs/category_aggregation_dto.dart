import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_shared/src/data/models/category_aggs/category_dto.dart';

part 'category_aggregation_dto.freezed.dart';
part 'category_aggregation_dto.g.dart';

@freezed
sealed class CategoryAggregationDTO with _$CategoryAggregationDTO {
  const factory CategoryAggregationDTO({
    int? id,
    String? name,
    int? count,
    List<CategoryDTO>? categories,
  }) = _CategoryAggregationDTO;

  factory CategoryAggregationDTO.fromJson(Map<String, dynamic> json) =>
      _$CategoryAggregationDTOFromJson(json);
}
