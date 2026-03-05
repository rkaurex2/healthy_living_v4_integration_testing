import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:healthy_living_find/src/data/models/search_highlights_dto.dart';

part 'search_ingredient_dto.freezed.dart';
part 'search_ingredient_dto.g.dart';

@freezed
sealed class SearchIngredientDTO with _$SearchIngredientDTO {
  const factory SearchIngredientDTO({
    int? id,
    String? type,
    String? name,
    String? description,
    @JsonKey(name: 'cosmetics_products_count') int? cosmeticsProductsCount,
    bool? verified,
    SearchHighlightsDTO? highlights,
    @JsonKey(name: 'count_cleaners') int? countCleaners,
    //score can be int, double or a string
    dynamic score,
    @Default(<String>[]) List<String?> synonyms,
    @JsonKey(name: 'nproducts') int? nProducts,
    bool? public,
  }) = _SearchIngredientDTO;

  factory SearchIngredientDTO.fromJson(Map<String, dynamic> json) =>
      _$SearchIngredientDTOFromJson(json);
}

