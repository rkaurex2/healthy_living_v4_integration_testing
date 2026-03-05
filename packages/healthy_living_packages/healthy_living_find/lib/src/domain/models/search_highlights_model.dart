import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_highlights_model.freezed.dart';

@freezed
sealed class SearchHighlightsModel with _$SearchHighlightsModel {
  const factory SearchHighlightsModel({required String name}) = _SearchHighlightsModel;
}
