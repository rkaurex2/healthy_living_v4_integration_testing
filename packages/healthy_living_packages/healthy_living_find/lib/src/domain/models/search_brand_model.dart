import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:healthy_living_find/src/domain/models/search_highlights_model.dart';

part 'search_brand_model.freezed.dart';

@freezed
sealed class SearchBrandModel with _$SearchBrandModel {
  const factory SearchBrandModel({
    int? id,
    String? type,
    String? name,
    String? description,
    String? companyName,
    int? cosmeticsProductsCount,
    String? logoUrl,
    bool? verified,
    SearchHighlightsModel? highlights,
    int? countCleaners,
  }) = _SearchBrandModel;
}


