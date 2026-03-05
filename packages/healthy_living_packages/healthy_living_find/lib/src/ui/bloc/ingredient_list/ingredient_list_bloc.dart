import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthy_living_find/src/analytics/search_analytics.dart';
import 'package:healthy_living_find/src/domain/models/search_request_model.dart';
import 'package:healthy_living_find/src/domain/models/search_response_model_main.dart';
import 'package:healthy_living_find/src/domain/repository/universal_search_repository.dart';
import 'package:healthy_living_find/src/ui/bloc/ingredient_list/ingredient_list_event.dart';
import 'package:healthy_living_find/src/ui/bloc/ingredient_list/ingredient_list_state.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:injectable/injectable.dart';
import 'package:network/network.dart';

@Injectable()
class IngredientListBloc
    extends Bloc<IngredientListEvent, IngredientListState> {
  final UniversalSearchRepository _repository;
  final SearchAnalytics _searchAnalytics;

  IngredientListBloc({
    required UniversalSearchRepository findRepository,
    required SearchAnalytics searchAnalytics,
  }) : _repository = findRepository,
       _searchAnalytics = searchAnalytics,
       super(const IngredientListState.ingredientsInitial()) {
    on<IngredientListInitialised>(_onInitialised);
    on<IngredientsSearched>(_onIngredientsSearched);
  }

  int _page = 1;
  final _perPage = IntegerConstants.defaultIngredientsPerPage;
  List<SearchIngredientModel> _ingredientList = [];
  bool _isFetchingIngredientList = false;
  bool _hasReachedMaxItems = false;

  List<SearchIngredientModel> get ingredientList => _ingredientList;

  int get page => _page;

  bool get isFetchingIngredientList => _isFetchingIngredientList;

  bool get hasReachedMaxItems => _hasReachedMaxItems;

  void _onInitialised(
    IngredientListInitialised event,
    Emitter<IngredientListState> emit,
  ) {
    _ingredientList = event.initialIngredientList;
    _page = (event.pagination?.currentPage ?? 0) + 1;

    if (event.pagination?.currentPage != null &&
        event.pagination?.totalPages != null) {
      _hasReachedMaxItems =
          (event.pagination?.currentPage) == (event.pagination?.totalPages);
    }

    if (event.initialIngredientList.isNotEmpty && event.pagination != null) {
      emit(
        IngredientListState.ingredientsLoadFromCacheSuccess(
          ingredients: event.initialIngredientList,
          pagination: event.pagination,
        ),
      );

      return;
    }

    emit(IngredientListState.ingredientsInitial());
  }

  Future<void> _onIngredientsSearched(
    IngredientsSearched event,
    Emitter<IngredientListState> emit,
  ) async {
    if (_isFetchingIngredientList) return;

    _isFetchingIngredientList = true;
    emit(const IngredientListState.ingredientsLoadInProgress());
    try {
      final request = SearchRequestModel(
        search: event.searchQuery,
        page: _page.toString(),
        perPage: _perPage.toString(),
        searchType: SearchType.substances.value,
      );

      /// Logs GA4 search event
      if (_page == 1 && event.searchQuery.isValidValue) {
        await _searchAnalytics.logSearch(
          searchTerm: event.searchQuery,
          source: StringConstants.ingredientList,
        );
      }

      final response = await _repository.universalSearch(request: request);
      _isFetchingIngredientList = false;
      if (response.isSuccess && response.data != null) {
        final ingredients =
            response.data!.results?.ingredients ?? <SearchIngredientModel>[];
        _ingredientList = [..._ingredientList, ...ingredients];
        final totalIngredients =
            response.data!.pagination?.ingredients?.totalEntries;
        if (_ingredientList.length == totalIngredients) {
          _hasReachedMaxItems = true;
        } else {
          _page += 1;
        }
        emit(
          IngredientListState.ingredientsLoadSuccess(
            ingredientList: _ingredientList,
            pagination: response.data!.pagination?.ingredients,
          ),
        );

        /// Logs GA4 search Results
        if (_page == 1 && event.searchQuery.isValidValue) {
          final responseData = response.data!;
          await _searchAnalytics.logViewSearchResults(
            searchTerm: event.searchQuery,
            resultCount: responseData.pagination?.totalEntries ?? 0,
            items: responseData.results?.products,
            source: StringConstants.ingredientList,
          );
        }
      } else {
        emit(
          IngredientListState.ingredientsLoadFailure(
            UnknownNetworkException(
              message: '',
              statusCode: null,
              originalError: null,
            ),
          ),
        );
      }
    } on Exception catch (exception) {
      _isFetchingIngredientList = false;
      emit(IngredientListState.ingredientsLoadFailure(exception));
    }
  }
}
