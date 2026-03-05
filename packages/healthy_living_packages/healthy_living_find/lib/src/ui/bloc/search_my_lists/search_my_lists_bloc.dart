import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthy_living_find/src/analytics/search_analytics.dart';
import 'package:healthy_living_find/src/domain/models/search_lists_model.dart';
import 'package:healthy_living_find/src/domain/models/search_request_model.dart';
import 'package:healthy_living_find/src/domain/repository/universal_search_repository.dart';
import 'package:healthy_living_find/src/ui/bloc/search_my_lists/search_my_lists_event.dart';
import 'package:healthy_living_find/src/ui/bloc/search_my_lists/search_my_lists_state.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:injectable/injectable.dart';
import 'package:network/network.dart';

@Injectable()
class SearchMyListsBloc extends Bloc<SearchMyListsEvent, SearchMyListsState> {
  final UniversalSearchRepository _repository;
  final SearchAnalytics _searchAnalytics;

  SearchMyListsBloc({
    required UniversalSearchRepository findRepository,
    required SearchAnalytics searchAnalytics,
  }) : _repository = findRepository,
       _searchAnalytics = searchAnalytics,
       super(const SearchMyListsState.myListsInitial()) {
    on<SearchMyListsInitialised>(_onInitialised);
    on<SearchMyListsSearched>(_onMyListsSearched);
  }

  int _page = 1;
  final _perPage = IntegerConstants.defaultListsPerPage;
  List<SearchListsModel> _listItems = [];
  bool _isFetchingList = false;
  bool _hasReachedMaxItems = false;

  List<SearchListsModel> get listItems => _listItems;

  int get page => _page;

  bool get isFetchingList => _isFetchingList;

  bool get hasReachedMaxItems => _hasReachedMaxItems;

  void _onInitialised(
    SearchMyListsInitialised event,
    Emitter<SearchMyListsState> emit,
  ) {
    _listItems = event.initialLists;
    _page = (event.pagination?.currentPage ?? 0) + 1;

    if (event.pagination?.currentPage != null &&
        event.pagination?.totalPages != null) {
      _hasReachedMaxItems =
          (event.pagination?.currentPage) == (event.pagination?.totalPages);
    }

    if (event.initialLists.isNotEmpty && event.pagination != null) {
      emit(
        SearchMyListsState.myListsLoadFromCacheSuccess(
          lists: event.initialLists,
          pagination: event.pagination,
        ),
      );
      return;
    }

    emit(SearchMyListsState.myListsInitial());
  }

  Future<void> _onMyListsSearched(
    SearchMyListsSearched event,
    Emitter<SearchMyListsState> emit,
  ) async {
    if (_isFetchingList) return;

    _isFetchingList = true;
    emit(const SearchMyListsState.myListsLoadInProgress());
    try {
      final request = SearchRequestModel(
        search: event.searchQuery,
        page: _page.toString(),
        perPage: _perPage.toString(),
        searchType: SearchType.userLists.value,
      );

      /// Logs GA4 search event
      if (_page == 1 && event.searchQuery.isValidValue) {
        await _searchAnalytics.logSearch(
          searchTerm: event.searchQuery,
          source: StringConstants.myItems,
        );
      }

      final response = await _repository.universalSearch(request: request);
      _isFetchingList = false;
      if (response.isSuccess && response.data != null) {
        final lists = response.data!.results?.lists ?? <SearchListsModel>[];
        _listItems = [..._listItems, ...lists];
        final totalLists = response.data!.pagination?.lists?.totalEntries;
        if (_listItems.length == totalLists) {
          _hasReachedMaxItems = true;
        } else {
          _page += 1;
        }
        emit(
          SearchMyListsState.myListsLoadSuccess(
            lists: _listItems,
            pagination: response.data!.pagination?.lists,
          ),
        );

        /// Logs GA4 search Results
        if (_page == 1 && event.searchQuery.isValidValue) {
          final responseData = response.data!;
          await _searchAnalytics.logViewSearchResults(
            searchTerm: event.searchQuery,
            resultCount: responseData.pagination?.totalEntries ?? 0,
            items: responseData.results?.products,
            source: StringConstants.myItems,
          );
        }
      } else {
        emit(
          SearchMyListsState.myListsLoadFailure(
            UnknownNetworkException(
              message: '',
              statusCode: null,
              originalError: null,
            ),
          ),
        );
      }
    } on Exception catch (exception) {
      _isFetchingList = false;
      emit(SearchMyListsState.myListsLoadFailure(exception));
    }
  }
}
