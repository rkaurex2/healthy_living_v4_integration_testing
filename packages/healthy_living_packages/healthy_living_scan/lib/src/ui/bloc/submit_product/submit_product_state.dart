import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

part 'submit_product_state.freezed.dart';

@freezed
class SubmitProductState with _$SubmitProductState {
  const factory SubmitProductState.initial() = SubmitProductInitial;

  const factory SubmitProductState.loading() = SubmitProductLoading;

  const factory SubmitProductState.success() = SubmitProductSuccess;

  const factory SubmitProductState.failure(Exception? exception) =
      SubmitProductFailure;

  const factory SubmitProductState.error(String? message) = SubmitProductError;

  const factory SubmitProductState.polling({required String jobId}) =
      PhotoCapturePolling;

  const factory SubmitProductState.pollingInstantScoreSuccess({
    required OcrProvisionalScoreResponseDTO provisionalScore,
  }) = PollingInstantScoreSuccess;

  const factory SubmitProductState.loadInstantScore({
    required String loadingInstantScoreMessage,
  }) = LoadInstantScore;

  const factory SubmitProductState.showSkipToInstantScoreCard() =
      ShowSkipToInstantScoreCardState;

  const factory SubmitProductState.hideSkipToInstantScoreCard() =
      HideSkipToInstantScoreCardState;

  const factory SubmitProductState.sunscreenActiveIngredientsLoaded(
    List<String> ingredients,
  ) = SunscreenActiveIngredientsLoaded;
}
