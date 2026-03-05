import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_shared/src/data/models/search/search_cleaner_product_response_dto.dart';
part 'search_cleaners_response_dto.freezed.dart';
part 'search_cleaners_response_dto.g.dart';

@freezed
sealed class SearchCleanersResponseDTO with _$SearchCleanersResponseDTO {
  const factory SearchCleanersResponseDTO({
    @JsonKey(name: 'current_page') int? currentPage,
    @JsonKey(name: 'per_page') int? perPage,
    @JsonKey(name: 'total_entries') int? totalEntries,
    List<SearchCleanerProductResponseDTO>? cleaners,
  }) = _SearchCleanersResponseDTO;

  factory SearchCleanersResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$SearchCleanersResponseDTOFromJson(json);
}
