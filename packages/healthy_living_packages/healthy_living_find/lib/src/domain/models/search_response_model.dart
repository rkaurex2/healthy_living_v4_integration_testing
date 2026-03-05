import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:healthy_living_find/src/domain/models/search_pagination_model.dart';
import 'package:healthy_living_find/src/domain/models/search_results_model.dart';

part 'search_response_model.freezed.dart';

@freezed
sealed class SearchResponseModel with _$SearchResponseModel {
  const factory SearchResponseModel({
    SearchResultsModel? results,
    SearchPaginationModel? pagination,
    Map<String, int>? productTypeCounts,
    dynamic totalSearchTime,
  }) = _SearchResponseModel;
}
