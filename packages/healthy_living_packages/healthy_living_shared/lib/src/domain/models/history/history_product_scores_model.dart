import 'package:freezed_annotation/freezed_annotation.dart';

part 'history_product_scores_model.freezed.dart';

@freezed
sealed class HistoryProductScoresModel
    with _$HistoryProductScoresModel {
  const factory HistoryProductScoresModel({double? overall}) =
  _HistoryProductScoresModel;
}