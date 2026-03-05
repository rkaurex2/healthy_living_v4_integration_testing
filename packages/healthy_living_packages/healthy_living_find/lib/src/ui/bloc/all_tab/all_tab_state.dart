import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_find/src/domain/models/search_response_model_main.dart';

part 'all_tab_state.freezed.dart';

@freezed
sealed class AllTabState with _$AllTabState {
  const factory AllTabState.allTabInitial() = AllTabInitial;

  const factory AllTabState.allTabLoadInProgress() = AllTabLoadInProgress;

  const factory AllTabState.allTabLoadSuccess({
    required SearchResponseModel? allTabData,
    required bool isRetrievedFromCache,
    required bool isEmptyResults,
  }) = AllTabLoadSuccess;

  const factory AllTabState.allTabLoadFailure(Exception exception) =
      AllTabLoadFailure;
}
