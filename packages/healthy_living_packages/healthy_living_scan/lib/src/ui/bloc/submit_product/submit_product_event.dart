import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_scan/healthy_living_scan.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

part 'submit_product_event.freezed.dart';

@freezed
sealed class SubmitProductEvent with _$SubmitProductEvent {
  const factory SubmitProductEvent.started({
    required ProductCategory productCategory,
  }) = SubmitProductStarted;

  const factory SubmitProductEvent.submitProduct({
    required String submissionId,
    required SubmitProductInfoParams infoUIModel,
  }) = SubmitProduct;

  const factory SubmitProductEvent.pollingOcr({required String jobId}) = PollingOCR;

  const factory SubmitProductEvent.showSkipToInstantScoreCard() =
  ShowSkipToInstantScoreCard;

  const factory SubmitProductEvent.hideSkipToInstantScoreCard() =
  HideSkipToInstantScoreCard;

  const factory SubmitProductEvent.fetchSunscreenActiveIngredients() =
  FetchSunscreenActiveIngredients;
}
