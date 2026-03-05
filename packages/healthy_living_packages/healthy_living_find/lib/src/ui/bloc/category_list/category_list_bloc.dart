import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthy_living_find/src/analytics/search_analytics.dart';
import 'package:healthy_living_find/src/domain/models/search_request_model.dart';
import 'package:healthy_living_find/src/domain/models/search_response_model_main.dart';
import 'package:healthy_living_find/src/domain/repository/universal_search_repository.dart';
import 'package:healthy_living_find/src/ui/bloc/category_list/category_list_event.dart';
import 'package:healthy_living_find/src/ui/bloc/category_list/category_list_state.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:injectable/injectable.dart';
import 'package:network/network.dart';

@Injectable()
class CategoryListBloc extends Bloc<CategoryListEvent, CategoryListState> {
  final UniversalSearchRepository _repository;
  final SearchAnalytics _searchAnalytics;

  CategoryListBloc({
    required UniversalSearchRepository findRepository,
    required SearchAnalytics searchAnalytics,
  }) : _repository = findRepository,
       _searchAnalytics = searchAnalytics,
       super(const CategoryListState.categoriesInitial()) {
    on<CategoryListInitialised>(_onInitialised);
    on<CategoriesSearched>(_onCategoriesSearched);
  }

  int _page = 1;
  final _perPage = IntegerConstants.defaultCategoriesPerPage;
  List<SearchCategoryItemModel> _categoryList = [];
  bool _isFetchingCategoryList = false;
  bool _hasReachedMaxItems = false;

  List<SearchCategoryItemModel> get categoryList => _categoryList;
  int get page => _page;
  bool get isFetchingCategoryList => _isFetchingCategoryList;
  bool get hasReachedMaxItems => _hasReachedMaxItems;

  void _onInitialised(
    CategoryListInitialised event,
    Emitter<CategoryListState> emit,
  ) {
    _categoryList = event.initialCategoryList;
    _page = (event.pagination?.currentPage ?? 0) + 1;

    if (event.pagination?.currentPage != null &&
        event.pagination?.totalPages != null) {
      _hasReachedMaxItems =
          (event.pagination?.currentPage) == (event.pagination?.totalPages);
    }

    if (event.initialCategoryList.isNotEmpty && event.pagination != null) {
      emit(
        CategoryListState.categoriesLoadFromCacheSuccess(
          categories: event.initialCategoryList,
          pagination: event.pagination,
        ),
      );
      return;
    }

    emit(CategoryListState.categoriesInitial());
  }

  Future<void> _onCategoriesSearched(
    CategoriesSearched event,
    Emitter<CategoryListState> emit,
  ) async {
    if (_isFetchingCategoryList) return;

    _isFetchingCategoryList = true;
    emit(const CategoryListState.categoriesLoadInProgress());
    try {
      final request = SearchRequestModel(
        search: event.searchQuery,
        page: _page.toString(),
        perPage: _perPage.toString(),
        searchType: SearchType.categories.value,
      );

      /// Logs GA4 search event
      if (_page == 1 && event.searchQuery.isValidValue) {
        await _searchAnalytics.logSearch(searchTerm: event.searchQuery, source: StringConstants.categoryList,);
      }

      final response = await _repository.universalSearch(request: request);
      _isFetchingCategoryList = false;
      if (response.isSuccess && response.data != null) {
        final categories =
            response.data!.results?.categories ?? <SearchCategoryItemModel>[];
        _categoryList = [..._categoryList, ...categories];
        final totalCategories =
            response.data!.pagination?.categories?.totalEntries;
        if (_categoryList.length == totalCategories) {
          _hasReachedMaxItems = true;
        } else {
          _page += 1;
        }
        emit(
          CategoryListState.categoriesLoadSuccess(
            categoryList: _categoryList,
            pagination: response.data!.pagination?.categories,
          ),
        );

        /// Logs GA4 search Results
        if (_page == 1 && event.searchQuery.isValidValue) {
          final responseData = response.data!;
          await _searchAnalytics.logViewSearchResults(
            searchTerm: event.searchQuery,
            resultCount: responseData.pagination?.totalEntries ?? 0,
            items: responseData.results?.products,
            source: StringConstants.categoryList,
          );
        }
      } else {
        emit(
          CategoryListState.categoriesLoadFailure(
            UnknownNetworkException(
              message: '',
              statusCode: null,
              originalError: null,
            ),
          ),
        );
      }
    } on Exception catch (exception) {
      _isFetchingCategoryList = false;
      emit(CategoryListState.categoriesLoadFailure(exception));
    }
  }
}
