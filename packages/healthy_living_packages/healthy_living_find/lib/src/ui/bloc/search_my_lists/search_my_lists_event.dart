import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_find/src/domain/models/search_lists_model.dart';
import 'package:healthy_living_find/src/domain/models/search_pagination_item_model.dart';

part 'search_my_lists_event.freezed.dart';

@freezed
sealed class SearchMyListsEvent with _$SearchMyListsEvent {
  const factory SearchMyListsEvent.searchMyListsInitialised({
    required List<SearchListsModel> initialLists,
    required SearchPaginationItemModel? pagination,
  }) = SearchMyListsInitialised;

  const factory SearchMyListsEvent.searchMyListsSearched({
    required String searchQuery,
  }) = SearchMyListsSearched;
}
