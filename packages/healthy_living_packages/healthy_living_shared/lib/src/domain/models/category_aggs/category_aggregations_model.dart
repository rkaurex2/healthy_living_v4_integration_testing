import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_shared/src/domain/models/category_aggs/category_aggregation_model.dart';

part 'category_aggregations_model.freezed.dart';

@freezed
sealed class CategoryAggregationsModel with _$CategoryAggregationsModel {
  const factory CategoryAggregationsModel({
    required List<CategoryAggregationModel> cleaners,
    required List<CategoryAggregationModel> personalCare,
    required List<CategoryAggregationModel> food,
  }) = _CategoryAggregationsModel;
}
