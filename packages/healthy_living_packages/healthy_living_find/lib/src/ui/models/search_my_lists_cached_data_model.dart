import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_find/src/domain/models/search_lists_model.dart';
import 'package:healthy_living_find/src/domain/models/search_pagination_item_model.dart';

part 'search_my_lists_cached_data_model.freezed.dart';

@freezed
sealed class SearchMyListsCachedDataModel with _$SearchMyListsCachedDataModel {
  const factory SearchMyListsCachedDataModel({
    required List<SearchListsModel> myLists,
    required SearchPaginationItemModel? pagination,
  }) = _SearchMyListsCachedDataModel;
}
