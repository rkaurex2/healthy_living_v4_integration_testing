import 'package:freezed_annotation/freezed_annotation.dart';

part 'brand_aggregation_dto.freezed.dart';
part 'brand_aggregation_dto.g.dart';

@freezed
sealed class BrandAggregationDTO with _$BrandAggregationDTO {
  const factory BrandAggregationDTO({
    int? id,
    String? name,
    int? count,
  }) = _BrandAggregationDTO;

  factory BrandAggregationDTO.fromJson(Map<String, dynamic> json) =>
      _$BrandAggregationDTOFromJson(json);
}
