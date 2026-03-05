import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_shared/src/data/models/search/search_cleaners_response_dto.dart';
import 'package:healthy_living_shared/src/data/models/search/search_food_response_dto.dart';
import 'package:healthy_living_shared/src/data/models/search/search_skin_deep_response_dto.dart';
import 'package:healthy_living_shared/src/data/models/search/search_sunscreen_response_dto.dart';

part 'search_response_dto.freezed.dart';
part 'search_response_dto.g.dart';

@freezed
sealed class SearchResponseDTO with _$SearchResponseDTO {
  const factory SearchResponseDTO({
    SearchCleanersResponseDTO? cleaners,
    SearchSkinDeepResponseDTO? skindeep,
    SearchSunscreenResponseDTO? sunscreens,
    SearchFoodResponseDTO? foodscores,
  }) = _SearchResponseDTO;

  factory SearchResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$SearchResponseDTOFromJson(json);
}
