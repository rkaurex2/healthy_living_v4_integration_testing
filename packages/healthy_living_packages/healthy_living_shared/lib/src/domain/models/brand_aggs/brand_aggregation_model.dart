import 'package:freezed_annotation/freezed_annotation.dart';

part 'brand_aggregation_model.freezed.dart';

@freezed
sealed class BrandAggregationModel with _$BrandAggregationModel {
  const factory BrandAggregationModel({
    required int id,
    required String name,
    required int count,
  }) = _BrandAggregationModel;
}
