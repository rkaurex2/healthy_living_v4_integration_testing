import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthy_living_find/src/analytics/search_analytics.dart';
import 'package:healthy_living_find/src/domain/models/search_request_model.dart';
import 'package:healthy_living_find/src/domain/models/search_response_model_main.dart';
import 'package:healthy_living_find/src/domain/repository/universal_search_repository.dart';
import 'package:healthy_living_find/src/ui/bloc/all_tab/all_tab_event.dart';
import 'package:healthy_living_find/src/ui/bloc/all_tab/all_tab_state.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:injectable/injectable.dart';
import 'package:network/network.dart';

@Injectable()
class AllTabBloc extends Bloc<AllTabEvent, AllTabState> {
  final UniversalSearchRepository _repository;
  final SearchAnalytics _searchAnalytics;

  AllTabBloc({
    required UniversalSearchRepository findRepository,
    required SearchAnalytics searchAnalytics,
  }) : _repository = findRepository,
       _searchAnalytics = searchAnalytics,
       super(AllTabState.allTabInitial()) {
    on<AllTabInitialised>(_onInitialised);
    on<AllTabSearched>(_onAllTabSearched);
  }

  final int _page = IntegerConstants.defaultPage;
  final _perPage = IntegerConstants.defaultPerPage;
  SearchResponseModel? _allTabData;
  bool _isFetching = false;
  String _searchQuery = '';

  SearchResponseModel? get allTabData => _allTabData;
  int get page => _page;
  bool get isFetching => _isFetching;
  String get searchQuery => _searchQuery;

  void _onInitialised(AllTabInitialised event, Emitter<AllTabState> emit) {
    _searchQuery = event.searchQuery;
    _allTabData = event.initialAllTabData;

    if (event.initialAllTabData != null) {
      emit(
        AllTabState.allTabLoadSuccess(
          allTabData: event.initialAllTabData,
          isRetrievedFromCache: true,
          isEmptyResults: getIsEmptyResults(
            paginationModel: event.initialAllTabData?.pagination,
          ),
        ),
      );
      return;
    }

    emit(AllTabState.allTabInitial());
  }

  Future<void> _onAllTabSearched(
    AllTabSearched event,
    Emitter<AllTabState> emit,
  ) async {
    _isFetching = true;
    emit(const AllTabState.allTabLoadInProgress());
    try {
      final request = SearchRequestModel(
        search: _searchQuery,
        page: _page.toString(),
        perPage: _perPage.toString(),
      );

      /// Logs GA4 search event
      if (_page == 1 && _searchQuery.isValidValue) {
        await _searchAnalytics.logSearch(
          searchTerm: _searchQuery,
          source: StringConstants.allTab,
        );
      }

      final response = await _repository.universalSearch(request: request);
      _isFetching = false;
      if (response.isSuccess && response.data != null) {
        final responseData = response.data!;
        _allTabData = responseData;
        emit(
          AllTabState.allTabLoadSuccess(
            allTabData: _allTabData,
            isRetrievedFromCache: false,
            isEmptyResults: getIsEmptyResults(
              paginationModel: responseData.pagination,
            ),
          ),
        );

        /// Logs GA4 search Results
        if (_page == 1 && _searchQuery.isValidValue) {
          await _searchAnalytics.logViewSearchResults(
            searchTerm: _searchQuery,
            resultCount: responseData.pagination?.totalEntries ?? 0,
            items: responseData.results?.products,
            source: StringConstants.allTab,
          );
        }
      } else {
        emit(
          AllTabState.allTabLoadFailure(
            UnknownNetworkException(
              message: '',
              statusCode: null,
              originalError: null,
            ),
          ),
        );
      }
    } on Exception catch (exception) {
      _isFetching = false;
      emit(AllTabState.allTabLoadFailure(exception));
    }
  }

  bool getIsEmptyResults({required SearchPaginationModel? paginationModel}) {
    return (paginationModel?.brands?.totalEntries ?? 0) == 0 &&
        (paginationModel?.categories?.totalEntries ?? 0) == 0 &&
        (paginationModel?.products?.totalEntries ?? 0) == 0 &&
        (paginationModel?.ingredients?.totalEntries ?? 0) == 0 &&
        (paginationModel?.lists?.totalEntries ?? 0) == 0;
  }
}
