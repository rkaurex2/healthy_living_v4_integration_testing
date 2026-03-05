import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_scan/src/ui/model/photo_capture_step.dart';
import 'package:healthy_living_scan/src/ui/model/picture_upload_status.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

part 'photo_capture_state.freezed.dart';

@freezed
class PhotoCaptureState with _$PhotoCaptureState {
  const factory PhotoCaptureState.initial() = PhotoCaptureInitial;

  const factory PhotoCaptureState.active({
    required PhotoCaptureStep currentStep,
    required List<String> frontLabelPhotos,
    required List<String> ingredientsPhotos,
    required int selectedPhotoIndex,
    required int maxPhotos,
    @Default({}) Map<String, PictureUploadStatus> photoUploadStatus,
    @Default([]) List<String> currentStepPhotos,
  }) = PhotoCaptureActive;

  const factory PhotoCaptureState.loading({
    required List<String> frontLabelPhotos,
    required List<String> ingredientsPhotos,
  }) = PhotoCaptureLoading;

  const factory PhotoCaptureState.success({
    required List<String> frontLabelPhotos,
    required List<String> ingredientsPhotos,
    String? submissionId,
    String? jobId,
  }) = PhotoCaptureSuccess;

  const factory PhotoCaptureState.error({
    required String message,
    required PhotoCaptureStep currentStep,
    required List<String> frontLabelPhotos,
    required List<String> ingredientsPhotos,
    required int selectedPhotoIndex,
    required int maxPhotos,
    required Map<String, PictureUploadStatus> photoUploadStatus,
  }) = PhotoCaptureError;

  const factory PhotoCaptureState.pollingOCRSuccess({
    required String productName,
    required String productBrand,
    required String productIngredients,
    required ProductCategory productCategory,
    required Map<String, List<String>> photosByRole,
    required String submissionId,
    required String jobId,
  }) = PollingOCRSuccess;

  const factory PhotoCaptureState.polling({required String ocrMessage}) =
      PhotoCapturePolling;

  const factory PhotoCaptureState.failure(Exception? exception) =
      PhotoCaptureFailure;

  const factory PhotoCaptureState.pollingFailed({
    required String submissionId,
    required String jobId,
    required String pollingStage,
    required Map<String, List<String>> photosByRole,
    required String failedMessage,
  }) = PhotoPollingFailed;
}
