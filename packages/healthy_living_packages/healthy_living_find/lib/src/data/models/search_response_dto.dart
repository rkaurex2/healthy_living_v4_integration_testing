import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_find/src/data/models/search_pagination_dto.dart';
import 'package:healthy_living_find/src/data/models/search_results_dto.dart';


part 'search_response_dto.freezed.dart';
part 'search_response_dto.g.dart';

@freezed
sealed class SearchResponseDTO with _$SearchResponseDTO {
  const factory SearchResponseDTO({
    SearchResultsDTO? results,
    SearchPaginationDTO? pagination,
    @JsonKey(name: 'product_type_counts') Map<String, int>? productTypeCounts,
    @JsonKey(name: 'total_search_time') dynamic totalSearchTime,
  }) = _SearchResponseDTO;

  factory SearchResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$SearchResponseDTOFromJson(json);
}
