import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

part 'instant_hazard_state.freezed.dart';

@freezed
sealed class InstantHazardState with _$InstantHazardState {
  const factory InstantHazardState.initial() = InstantHazardInitial;

  const factory InstantHazardState.ocrPollingSuccess({
    required OcrProvisionalScoreResponseDTO ocrExtractedData,
    required ProductCategory productCategory,
  }) = OCRPollingSuccess;

  const factory InstantHazardState.ocrPollingLoading() = OCRPollingLoading;

  const factory InstantHazardState.updateFindingsTab({required int tabIndex}) =
      UpdateFindingsTab;

  const factory InstantHazardState.failure(Exception exception) =
      InstantHazarFailure;
}
