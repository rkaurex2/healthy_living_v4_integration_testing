import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthy_living_find/src/analytics/search_analytics.dart';
import 'package:healthy_living_find/src/domain/models/search_request_model.dart';
import 'package:healthy_living_find/src/domain/models/search_response_model_main.dart';
import 'package:healthy_living_find/src/domain/repository/universal_search_repository.dart';
import 'package:healthy_living_find/src/ui/bloc/brand_list/brand_list_event.dart';
import 'package:healthy_living_find/src/ui/bloc/brand_list/brand_list_state.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:injectable/injectable.dart';
import 'package:network/network.dart';

@Injectable()
class BrandListBloc extends Bloc<BrandListEvent, BrandListState> {
  final UniversalSearchRepository _repository;
  final SearchAnalytics _searchAnalytics;

  BrandListBloc({
    required UniversalSearchRepository findRepository,
    required SearchAnalytics searchAnalytics,
  }) : _repository = findRepository,
       _searchAnalytics = searchAnalytics,
       super(const BrandListState.brandsInitial()) {
    on<BrandListInitialised>(_onInitialised);
    on<BrandsSearched>(_onBrandsSearched);
  }

  int _page = 1;
  final _perPage = IntegerConstants.defaultBrandsPerPage;
  List<SearchBrandModel> _brandList = [];
  bool _isFetchingBrandList = false;
  bool _hasReachedMaxItems = false;

  List<SearchBrandModel> get brandList => _brandList;

  int get page => _page;

  bool get isFetchingBrandList => _isFetchingBrandList;

  bool get hasReachedMaxItems => _hasReachedMaxItems;

  void _onInitialised(
    BrandListInitialised event,
    Emitter<BrandListState> emit,
  ) {
    _brandList = event.initialBrandList;
    _page = (event.pagination?.currentPage ?? 0) + 1;

    if (event.pagination?.currentPage != null &&
        event.pagination?.totalPages != null) {
      _hasReachedMaxItems =
          (event.pagination?.currentPage) == (event.pagination?.totalPages);
    }

    if (event.initialBrandList.isNotEmpty && event.pagination != null) {
      emit(
        BrandListState.brandsLoadFromCacheSuccess(
          brands: event.initialBrandList,
          pagination: event.pagination,
        ),
      );
      return;
    }

    emit(BrandListState.brandsInitial());
  }

  Future<void> _onBrandsSearched(
    BrandsSearched event,
    Emitter<BrandListState> emit,
  ) async {
    if (_isFetchingBrandList) return;

    _isFetchingBrandList = true;
    emit(const BrandListState.brandsLoadInProgress());
    try {
      final request = SearchRequestModel(
        search: event.searchQuery,
        page: _page.toString(),
        perPage: _perPage.toString(),
        searchType: SearchType.brands.value,
      );

      /// Logs GA4 search event
      if (_page == 1 && event.searchQuery.isValidValue) {
        await _searchAnalytics.logSearch(
          searchTerm: event.searchQuery,
          source: StringConstants.brandList,
        );
      }

      final response = await _repository.universalSearch(request: request);
      _isFetchingBrandList = false;
      if (response.isSuccess && response.data != null) {
        final brands = response.data!.results?.brands ?? <SearchBrandModel>[];
        _brandList = [..._brandList, ...brands];
        final totalBrands = response.data!.pagination?.brands?.totalEntries;
        if (_brandList.length == totalBrands) {
          _hasReachedMaxItems = true;
        } else {
          _page += 1;
        }
        emit(
          BrandListState.brandsLoadSuccess(
            brands: _brandList,
            pagination: response.data!.pagination?.brands,
          ),
        );

        /// Logs GA4 search Results
        if (_page == 1 && event.searchQuery.isValidValue) {
          final responseData = response.data!;
          await _searchAnalytics.logViewSearchResults(
            searchTerm: event.searchQuery,
            resultCount: responseData.pagination?.totalEntries ?? 0,
            items: responseData.results?.products,
            source: StringConstants.brandList,
          );
        }
      } else {
        emit(
          BrandListState.brandsLoadFailure(
            UnknownNetworkException(
              message: '',
              statusCode: null,
              originalError: null,
            ),
          ),
        );
      }
    } on Exception catch (exception) {
      _isFetchingBrandList = false;
      emit(BrandListState.brandsLoadFailure(exception));
    }
  }
}
