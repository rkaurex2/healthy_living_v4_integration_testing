import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:healthy_living_find/src/domain/models/search_pagination_item_model.dart';

part 'search_pagination_model.freezed.dart';

@freezed
sealed class SearchPaginationModel with _$SearchPaginationModel {
  const factory SearchPaginationModel({
    SearchPaginationItemModel? products,
    SearchPaginationItemModel? ingredients,
    SearchPaginationItemModel? categories,
    SearchPaginationItemModel? brands,
    SearchPaginationItemModel? lists,
    int? totalEntries,
  }) = _SearchPaginationModel;
}


