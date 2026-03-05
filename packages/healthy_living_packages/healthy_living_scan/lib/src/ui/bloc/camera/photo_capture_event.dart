import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_scan/src/ui/model/photo_capture_step.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

part 'photo_capture_event.freezed.dart';

@freezed
class PhotoCaptureEvent with _$PhotoCaptureEvent {
  const factory PhotoCaptureEvent.started({required bool isIngredientsStep}) =
      PhotoCaptureStarted;

  const factory PhotoCaptureEvent.setProductDetails({
    required String upc,
    required String productType,
    required String uuid,
    required ProductCategory productCategory,
    String? name,
    String? description,
  }) = SetProductDetails;

  const factory PhotoCaptureEvent.photoCaptured({required String photoPath}) =
      PhotoCaptured;

  const factory PhotoCaptureEvent.photoRemoved({
    required int index,
    required bool isIngredientsStep,
  }) = PhotoRemoved;

  const factory PhotoCaptureEvent.photoSelected({required int index}) =
      PhotoSelected;

  const factory PhotoCaptureEvent.addPhotoRequested({
    required bool isIngredientsStep,
  }) = AddPhotoRequested;

  const factory PhotoCaptureEvent.navigateToPreview({
    required bool isIngredientsStep,
  }) = NavigateToPreview;

  const factory PhotoCaptureEvent.navigateToCamera({
    required bool isIngredientsStep,
  }) = NavigateToCamera;

  const factory PhotoCaptureEvent.navigateToNextStep() = NavigateToNextStep;

  const factory PhotoCaptureEvent.submitPhotos({required bool isGuestUser}) =
      SubmitPhotos;

  const factory PhotoCaptureEvent.resetFlow() = ResetFlow;

  const factory PhotoCaptureEvent.uploadPhoto({
    required String photoPath,
    required bool isGuestUser,
  }) = UploadPhoto;

  const factory PhotoCaptureEvent.skipStep(PhotoCaptureStep step) = SkipStep;

  const factory PhotoCaptureEvent.pollingOcr({required String jobId}) =
      PollingOCR;

  const factory PhotoCaptureEvent.retakePhotos() = RetakePhotos;
}
