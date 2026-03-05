import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_find/src/data/models/search_brand_dto.dart';
import 'package:healthy_living_find/src/data/models/search_category_item_dto.dart';
import 'package:healthy_living_find/src/data/models/search_ingredient_dto.dart';
import 'package:healthy_living_find/src/data/models/search_lists_dto.dart';
import 'package:healthy_living_find/src/data/models/search_product_dto.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

part 'search_results_dto.freezed.dart';
part 'search_results_dto.g.dart';

@freezed
sealed class SearchResultsDTO with _$SearchResultsDTO {
  const factory SearchResultsDTO({
    @Default(<SearchProductDTO>[]) List<SearchProductDTO> products,
    @Default(<SearchIngredientDTO>[]) List<SearchIngredientDTO> ingredients,
    @Default(<SearchCategoryItemDTO>[]) List<SearchCategoryItemDTO> categories,
    @Default(<SearchBrandDTO>[]) List<SearchBrandDTO> brands,
    @Default(<SearchListsDTO>[]) List<SearchListsDTO> lists,
    @JsonKey(name: 'category_aggs') CategoryAggregationsDTO? categoryAggs,
    @JsonKey(name: 'brand_aggs')
    @Default(<BrandAggregationDTO>[])
    List<BrandAggregationDTO> brandAggs,
  }) = _SearchResultsModel;

  factory SearchResultsDTO.fromJson(Map<String, dynamic> json) =>
      _$SearchResultsDTOFromJson(json);
}
