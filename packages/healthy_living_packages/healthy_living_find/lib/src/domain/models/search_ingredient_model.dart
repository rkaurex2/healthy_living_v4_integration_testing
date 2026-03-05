import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:healthy_living_find/src/domain/models/search_highlights_model.dart';

part 'search_ingredient_model.freezed.dart';

@freezed
sealed class SearchIngredientModel with _$SearchIngredientModel {
  const factory SearchIngredientModel({
    int? id,
    String? type,
    String? name,
    String? description,
    int? cosmeticsProductsCount,
    bool? verified,
    SearchHighlightsModel? highlights,
    int? countCleaners,
    double? personalCareScore,
    double? foodScore,
    String? cleanersScore,
    @Default(<String>[]) List<String?> synonyms,
    int? nProducts,
    bool? public,
  }) = _SearchIngredientModel;
}


