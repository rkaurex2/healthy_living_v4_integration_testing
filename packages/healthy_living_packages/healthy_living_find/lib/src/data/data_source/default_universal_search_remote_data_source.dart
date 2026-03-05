import 'package:healthy_living_find/src/data/models/search_response_dto.dart';
import 'package:healthy_living_find/src/domain/data_source/universal_search_remote_data_source.dart';
import 'package:healthy_living_find/src/domain/models/search_request_model.dart';
import 'package:healthy_living_find/src/utils/find_api_endpoints.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart'
    show
        BrandFilterItemRequestModel,
        CategoryFilterItemRequestModel,
        FilterUtils,
        HazardLevel,
        IdentifierQueryParamRequest,
        IngredientPreferencesFilterModel,
        ListValidate,
        Validate,
        apiRestClient,
        unauthenticatedApiRestClient;
import 'package:injectable/injectable.dart';
import 'package:network/network.dart';

@LazySingleton(as: UniversalSearchRemoteDataSource)
class DefaultUniversalSearchRemoteDataSource
    implements UniversalSearchRemoteDataSource {
  final RestClient _restClient;
  final FilterUtils _filterUtils;
  static DefaultUniversalSearchRemoteDataSource? _instance;

  DefaultUniversalSearchRemoteDataSource._internal(
    this._restClient,
    this._filterUtils,
  );

  @factoryMethod
  factory DefaultUniversalSearchRemoteDataSource({
    @apiRestClient required RestClient restClient,
    required FilterUtils filterUtils,
  }) {
    _instance ??= DefaultUniversalSearchRemoteDataSource._internal(
      restClient,
      filterUtils,
    );
    return _instance!;
  }

  @override
  Future<NetworkResponse<SearchResponseDTO?>> universalSearch({
    required SearchRequestModel request,
  }) async {
    final identifierParams = await IdentifierQueryParamRequest.fromIdentifier();
    final queryParams = <String, String>{
      ...identifierParams.toJson(),
      ...request.toJson(),
    };

    return await _restClient.get<SearchResponseDTO>(
      getUniversalSearchEndpoint(
        hazardLevelList: request.hazardScoreRanges,
        categories: request.categories,
        brands: request.brands,
        ingredientPreferences: request.ingredientPreferences,
        searchType: request.searchType ?? "",
        isBrowseFilter: request.isBrowseFilter,
      ),
      queryParams: queryParams,
      fromJson: (json) => SearchResponseDTO.fromJson(json),
    );
  }

  String getUniversalSearchEndpoint({
    required String searchType,
    List<HazardLevel>? hazardLevelList,
    List<CategoryFilterItemRequestModel>? categories,
    List<BrandFilterItemRequestModel>? brands,
    IngredientPreferencesFilterModel? ingredientPreferences,
    bool isBrowseFilter = false,
  }) {
    String query = FindApiEndpoints.universalSearch;
    bool shouldAddQuestionMark = true;

    if (hazardLevelList.isValidList) {
      final hazardLevelStrings = _filterUtils.generateHazardLevelFilterQuery(
        hazardLevelList: hazardLevelList!,
      );
      query += '?$hazardLevelStrings';
      shouldAddQuestionMark = false;
    }
    if (categories?.isValidList == true) {
      final categoriesString = _filterUtils.generateCategoriesFilterQuery(
        categories: categories ?? [],
        searchType: searchType,
        isBrowseFilter: isBrowseFilter,
      );
      if (categoriesString.isValidValue) {
        query +=
            shouldAddQuestionMark ? '?$categoriesString' : '&$categoriesString';
        shouldAddQuestionMark = false;
      }
    }
    if (brands?.isValidList == true) {
      final brandsString = _filterUtils.generateBrandsFilterQuery(brands ?? []);
      if (brandsString.isValidValue) {
        query += shouldAddQuestionMark ? '?$brandsString' : '&$brandsString';
        shouldAddQuestionMark = false;
      }
    }
    if (ingredientPreferences != null) {
      final ingredientQueries = _filterUtils.getIngredientPreferencesQueries(
        ingredientPreferences,
      );

      if (ingredientQueries.isValidValue) {
        query +=
            shouldAddQuestionMark
                ? '?$ingredientQueries'
                : '&$ingredientQueries';
        shouldAddQuestionMark = false;
      }
    }
    return query;
  }
}
