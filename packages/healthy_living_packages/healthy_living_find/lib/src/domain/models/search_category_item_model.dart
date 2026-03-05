import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:healthy_living_find/src/domain/models/search_highlights_model.dart';

part 'search_category_item_model.freezed.dart';

@freezed
sealed class SearchCategoryItemModel with _$SearchCategoryItemModel {
  const factory SearchCategoryItemModel({
    int? id,
    String? type,
    String? subtype,
    String? name,
    String? description,
    int? productCount,
    String? imageUrl,
    String? productType,
    SearchHighlightsModel? highlights,
  }) = _SearchCategoryItemModel;
}
