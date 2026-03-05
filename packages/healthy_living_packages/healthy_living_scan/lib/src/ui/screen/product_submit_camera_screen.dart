import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_scan/healthy_living_scan.dart';
import 'package:healthy_living_scan/src/ui/bloc/camera/photo_capture_bloc.dart';
import 'package:healthy_living_scan/src/ui/bloc/camera/photo_capture_event.dart';
import 'package:healthy_living_scan/src/ui/bloc/camera/photo_capture_state.dart';
import 'package:healthy_living_scan/src/ui/model/photo_capture_step.dart';
import 'package:healthy_living_scan/src/ui/screen/capture_image_screen.dart';
import 'package:healthy_living_scan/src/ui/screen/photo_preview_screen.dart';
import 'package:healthy_living_scan/src/ui/widgets/ocr_failed_polling_processing_widget.dart';
import 'package:healthy_living_scan/src/ui/widgets/ocr_polling_processing_widget.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class ProductSubmitCameraScreen extends StatelessWidget {
  final CameraUIModel cameras;

  const ProductSubmitCameraScreen({required this.cameras, super.key});

  bool _isCameraStep(PhotoCaptureStep step) {
    return step == PhotoCaptureStep.frontLabelCamera ||
        step == PhotoCaptureStep.ingredientsCamera ||
        step == PhotoCaptureStep.nutritionFactsCamera ||
        step == PhotoCaptureStep.drugFactsPanelCamera ||
        step == PhotoCaptureStep.directionsCamera ||
        step == PhotoCaptureStep.warningsCamera;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: BlocProvider(
        create:
            (_) =>
                injector.get<PhotoCaptureBloc>()..add(
                  const PhotoCaptureEvent.started(isIngredientsStep: false),
                ),
        child: BlocConsumer<PhotoCaptureBloc, PhotoCaptureState>(
          listener: (context, state) {
            if (state is PollingOCRSuccess) {
              context.pushReplacementNamed(
                AppRoutes.submitProductInfo.name,
                extra: SubmitProductInfoParams(
                  productCategoryType: state.productCategory,
                  productName: state.productName,
                  brandName: state.productBrand,
                  ingredients: state.productIngredients,
                  photosByRole: state.photosByRole,
                  submissionId: state.submissionId,
                  jobId: state.jobId,
                ),
              );
            } else if (state is PhotoCaptureError) {
              DSToast.showErrorToast(context: context, title: state.message);
            } else if (state is PhotoPollingFailed) {
              if (state.pollingStage == StringConstants.stale) {
                DSToast.showErrorToast(
                  context: context,
                  title:
                      state.failedMessage.isValidValue
                          ? state.failedMessage
                          : "Processing timed out. Please try again.",
                );
              }
            }
          },
          listenWhen:
              (_, current) =>
                  current is PhotoCaptureSuccess ||
                  current is PollingOCRSuccess ||
                  current is PhotoPollingFailed ||
                  current is PhotoCaptureError,
          buildWhen:
              (_, current) =>
                  current is PhotoCaptureActive ||
                  current is PhotoCaptureLoading ||
                  current is PhotoCapturePolling ||
                  current is PhotoPollingFailed ||
                  current is PhotoCaptureError,

          builder: (context, state) {
            Widget child;

            if (state is PhotoCaptureActive) {
              final isCameraStep = _isCameraStep(state.currentStep);

              if (isCameraStep) {
                child = CaptureImageScreen(cameras: cameras);
              } else {
                child = const PhotoPreviewScreen();
              }
            } else if (state is PhotoCapturePolling) {
              child = PopScope(
                canPop: false,
                onPopInvokedWithResult: (_, _) {
                  return;
                },
                child: PhotoProcessingWidget(pollingStatus: state.ocrMessage),
              );
            } else if (state is PhotoPollingFailed) {
              child = PopScope(
                canPop: false,
                onPopInvokedWithResult: (_, _) {
                  return;
                },
                child: OcrFailedPollingProcessingWidget(
                  infoParams: SubmitProductInfoParams(
                    productCategoryType:
                        cameras.introUIModel.productCategoryType,
                    productName: "",
                    brandName: "",
                    ingredients: "",
                    photosByRole: state.photosByRole,
                    submissionId: state.submissionId,
                    jobId: state.jobId,
                  ),
                ),
              );
            } else if (state is PhotoCaptureError) {
              final isCameraStep = _isCameraStep(state.currentStep);

              if (isCameraStep) {
                child = CaptureImageScreen(cameras: cameras);
              } else {
                child = const PhotoPreviewScreen();
              }
            } else {
              child = CaptureImageScreen(cameras: cameras);
            }
            if (state is PhotoCaptureLoading) {
              return Stack(children: [child, Center(child: AppLoader())]);
            }
            return child;
          },
        ),
      ),
    );
  }
}
