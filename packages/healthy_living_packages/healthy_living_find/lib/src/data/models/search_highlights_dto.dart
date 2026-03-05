import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_highlights_dto.freezed.dart';
part 'search_highlights_dto.g.dart';

@freezed
sealed class SearchHighlightsDTO with _$SearchHighlightsDTO {
  const factory SearchHighlightsDTO({String? name}) = _SearchHighlightsDTO;

  factory SearchHighlightsDTO.fromJson(Map<String, dynamic> json) =>
      _$SearchHighlightsDTOFromJson(json);
}

