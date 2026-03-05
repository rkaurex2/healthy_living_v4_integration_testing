import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:healthy_living_find/src/data/models/search_highlights_dto.dart';

part 'search_lists_dto.freezed.dart';
part 'search_lists_dto.g.dart';

@freezed
sealed class SearchListsDTO with _$SearchListsDTO {
  const factory SearchListsDTO({
    int? id,
    String? type,
    String? name,
    String? description,
    @JsonKey(name: 'owner_name') String? ownerName,
    @JsonKey(name: 'items_count') int? itemsCount,
    SearchHighlightsDTO? highlights,
  }) = _SearchListsDTO;

  factory SearchListsDTO.fromJson(Map<String, dynamic> json) =>
      _$SearchListsDTOFromJson(json);
}

