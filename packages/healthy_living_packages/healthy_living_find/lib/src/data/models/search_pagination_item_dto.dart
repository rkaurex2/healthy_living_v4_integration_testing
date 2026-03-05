import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_pagination_item_dto.freezed.dart';
part 'search_pagination_item_dto.g.dart';

@freezed
sealed class SearchPaginationItemDTO with _$SearchPaginationItemDTO {
  const factory SearchPaginationItemDTO({
    @JsonKey(name: 'current_page') int? currentPage,
    @JsonKey(name: 'total_pages') int? totalPages,
    @JsonKey(name: 'total_entries') int? totalEntries,
  }) = _SearchPaginationItemDTO;

  factory SearchPaginationItemDTO.fromJson(Map<String, dynamic> json) =>
      _$SearchPaginationItemDTOFromJson(json);
}


