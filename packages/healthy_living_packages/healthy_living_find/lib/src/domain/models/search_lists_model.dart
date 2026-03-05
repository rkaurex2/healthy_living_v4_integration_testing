import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:healthy_living_find/src/domain/models/search_highlights_model.dart';

part 'search_lists_model.freezed.dart';

@freezed
sealed class SearchListsModel with _$SearchListsModel {
  const factory SearchListsModel({
    required int id,
    required String type,
    required String name,
    required String description,
    required String ownerName,
    required int itemsCount,
    required SearchHighlightsModel? highlights,
  }) = _SearchListsModel;
}
