import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:healthy_living_find/src/data/models/search_pagination_item_dto.dart';

part 'search_pagination_dto.freezed.dart';
part 'search_pagination_dto.g.dart';

@freezed
sealed class SearchPaginationDTO with _$SearchPaginationDTO {
  const factory SearchPaginationDTO({
    SearchPaginationItemDTO? products,
    SearchPaginationItemDTO? ingredients,
    SearchPaginationItemDTO? categories,
    SearchPaginationItemDTO? brands,
    SearchPaginationItemDTO? lists,
    @JsonKey(name: 'total_entries') int? totalEntries,
  }) = _SearchPaginationDTO;

  factory SearchPaginationDTO.fromJson(Map<String, dynamic> json) =>
      _$SearchPaginationDTOFromJson(json);
}


