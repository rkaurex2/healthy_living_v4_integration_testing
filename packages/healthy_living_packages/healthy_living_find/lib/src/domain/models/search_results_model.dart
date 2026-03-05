import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:healthy_living_find/src/domain/models/search_brand_model.dart';
import 'package:healthy_living_find/src/domain/models/search_category_item_model.dart';
import 'package:healthy_living_find/src/domain/models/search_ingredient_model.dart';
import 'package:healthy_living_find/src/domain/models/search_lists_model.dart';
import 'package:healthy_living_find/src/domain/models/search_product_model.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

part 'search_results_model.freezed.dart';

@freezed
sealed class SearchResultsModel with _$SearchResultsModel {
  const factory SearchResultsModel({
    required List<SearchListsModel> lists,
    required List<BrandAggregationModel> brandAggs,
    @Default(<SearchProductModel>[]) List<SearchProductModel> products,
    @Default(<SearchIngredientModel>[]) List<SearchIngredientModel> ingredients,
    @Default(<SearchCategoryItemModel>[])
    List<SearchCategoryItemModel> categories,
    @Default(<SearchBrandModel>[]) List<SearchBrandModel> brands,
    CategoryAggregationsModel? categoryAggs,
  }) = _SearchResultsModel;
}
