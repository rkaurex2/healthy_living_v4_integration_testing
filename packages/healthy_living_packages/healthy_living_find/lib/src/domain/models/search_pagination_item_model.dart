import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_pagination_item_model.freezed.dart';

@freezed
sealed class SearchPaginationItemModel with _$SearchPaginationItemModel {
  const factory SearchPaginationItemModel({
    int? currentPage,
    int? totalPages,
    int? totalEntries,
  }) = _SearchPaginationItemModel;
}


