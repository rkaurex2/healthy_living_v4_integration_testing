import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

part 'history_list_state.freezed.dart';

@freezed
sealed class HistoryListState with _$HistoryListState {
  const factory HistoryListState.initial() = HistoryListInitial;

  const factory HistoryListState.loading() = HistoryListLoadInProgress;

  const factory HistoryListState.success({@Default(0) int selectedSortIndex}) =
      HistoryListLoadSuccess;

  const factory HistoryListState.failure(Exception exception) =
      HistoryListLoadFailure;

  const factory HistoryListState.ocrPollingSuccess({
    required OcrProvisionalScoreResponseModel ocrExtractedData,
    required ProductCategory productCategory,
  }) = OCRPollingSuccess;

  const factory HistoryListState.updateSortIndex({
    required int selectedSortIndex,
  }) = UpdateSortIndex;



}
