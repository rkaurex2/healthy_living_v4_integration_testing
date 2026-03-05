import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_shared/src/domain/models/category_aggs/category_model.dart';

part 'category_aggregation_model.freezed.dart';

@freezed
sealed class CategoryAggregationModel with _$CategoryAggregationModel {
  const factory CategoryAggregationModel({
    required int id,
    required String name,
    required int count,
    required List<CategoryModel> categories,
  }) = _CategoryAggregationModel;
}
