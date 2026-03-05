import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_shared/src/data/models/search/search_food_product_dto.dart';
part 'search_food_response_dto.freezed.dart';
part 'search_food_response_dto.g.dart';

@freezed
sealed class SearchFoodResponseDTO with _$SearchFoodResponseDTO {
  const factory SearchFoodResponseDTO({
    @JsonKey(name: 'current_page') int? currentPage,
    @JsonKey(name: 'per_page') int? perPage,
    @JsonKey(name: 'total_entries') int? totalEntries,
    List<SearchFoodProductDTO>? foods,
  }) = _SearchFoodResponseDTO;

  factory SearchFoodResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$SearchFoodResponseDTOFromJson(json);
}
