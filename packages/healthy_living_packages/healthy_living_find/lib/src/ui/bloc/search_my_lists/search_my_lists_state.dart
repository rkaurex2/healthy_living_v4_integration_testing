import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_find/src/domain/models/search_lists_model.dart';
import 'package:healthy_living_find/src/domain/models/search_pagination_item_model.dart';

part 'search_my_lists_state.freezed.dart';

@freezed
sealed class SearchMyListsState with _$SearchMyListsState {
  const factory SearchMyListsState.myListsInitial() = MyListsInitial;

  const factory SearchMyListsState.myListsLoadInProgress() =
      MyListsLoadInProgress;

  const factory SearchMyListsState.myListsLoadSuccess({
    required List<SearchListsModel> lists,
    required SearchPaginationItemModel? pagination,
  }) = MyListsLoadSuccess;

  const factory SearchMyListsState.myListsLoadFailure(Exception exception) =
      MyListsLoadFailure;

  const factory SearchMyListsState.myListsLoadFromCacheSuccess({
    required List<SearchListsModel> lists,
    required SearchPaginationItemModel? pagination,
  }) = MyListsLoadFromCacheSuccess;
}
