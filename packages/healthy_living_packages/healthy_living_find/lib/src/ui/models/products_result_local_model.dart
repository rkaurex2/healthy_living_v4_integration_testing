import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_find/src/domain/models/search_response_model_main.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

part 'products_result_local_model.freezed.dart';

@freezed
sealed class ProductsResultLocalModel with _$ProductsResultLocalModel {
  const factory ProductsResultLocalModel({
    required List<SearchProductModel>? foodSearchResultsList,
    required SearchPaginationModel? foodSearchPaginationModel,
    required List<SearchProductModel>? cleanersSearchResultsList,
    required SearchPaginationModel? cleanersSearchPaginationModel,
    required List<SearchProductModel>? personalCareSearchResultsList,
    required SearchPaginationModel? personalCareSearchPaginationModel,
    required SearchType? selectedCategoryType,
    required Map<String, int>? productTypeCount,
    Map<ProductCategory, ProductFiltersModel>? appliedFilters,
    Map<ProductCategory, List<CategoryAggregationModel>>?
    categoryAggregationsProductCategoryMap,
    Map<ProductCategory, List<BrandAggregationModel>>?
    brandAggregationsProductCategoryMap,
  }) = _ProductsResultLocalModel;
}
