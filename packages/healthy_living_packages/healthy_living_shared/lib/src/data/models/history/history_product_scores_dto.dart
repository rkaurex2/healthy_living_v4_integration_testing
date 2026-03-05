import 'package:freezed_annotation/freezed_annotation.dart';

part 'history_product_scores_dto.freezed.dart';
part 'history_product_scores_dto.g.dart';

@freezed
sealed class HistoryProductScoresDTO
    with _$HistoryProductScoresDTO {
  const factory HistoryProductScoresDTO({double? overall}) =
  _HistoryProductScoresDTO;

  factory HistoryProductScoresDTO.fromJson(Map<String, dynamic> json) =>
      _$HistoryProductScoresDTOFromJson(json);
}