import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthy_living_scan/l10n/healthy_living_scan_localizations.dart';
import 'package:healthy_living_scan/src/ui/bloc/camera/photo_capture_bloc.dart';
import 'package:healthy_living_scan/src/ui/bloc/camera/photo_capture_event.dart';
import 'package:healthy_living_scan/src/ui/bloc/camera/photo_capture_state.dart';
import 'package:healthy_living_scan/src/ui/model/image_thumbnail_ui_model.dart';
import 'package:healthy_living_scan/src/ui/model/photo_capture_step.dart';
import 'package:healthy_living_scan/src/ui/model/picture_upload_status.dart';
import 'package:healthy_living_scan/src/ui/model/submit_progress_steps.dart';
import 'package:healthy_living_scan/src/ui/widgets/image_preview_widget.dart';
import 'package:healthy_living_scan/src/ui/widgets/image_thumbnail_widget.dart';
import 'package:healthy_living_scan/src/ui/widgets/product_submission_exit_popup_widget.dart';
import 'package:healthy_living_scan/src/ui/widgets/submit_product_progress_widget.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class PhotoPreviewScreen extends StatefulWidget {
  const PhotoPreviewScreen({super.key});

  @override
  State<PhotoPreviewScreen> createState() => _PhotoPreviewScreenState();
}

class _PhotoPreviewScreenState extends State<PhotoPreviewScreen> {
  bool _isProcessingRemoval = false;
  String? _lastUploadedPhotoPath;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _triggerUploadForNewPhoto();
    });
  }

  void _triggerUploadForNewPhoto() {
    final bloc = context.read<PhotoCaptureBloc>();
    final appBloc = context.read<AppBloc>();
    final state = bloc.state;

    if (state is PhotoCaptureActive) {
      final currentPhotos = state.currentStepPhotos;
      if (currentPhotos.isEmpty) {
        return;
      }

      for (final photoPath in currentPhotos) {
        final status = state.photoUploadStatus[photoPath];
        if (status == PictureUploadStatus.uploading &&
            photoPath != _lastUploadedPhotoPath) {
          _lastUploadedPhotoPath = photoPath;
          bloc.add(
            PhotoCaptureEvent.uploadPhoto(
              photoPath: photoPath,
              isGuestUser: !appBloc.isAuthenticated,
            ),
          );
          break;
        }
      }
    }
  }

  bool _isIngredientsStep(PhotoCaptureStep step) {
    return step == PhotoCaptureStep.ingredientsCamera ||
        step == PhotoCaptureStep.ingredientsPreview;
  }

  String _getStepTitle({
    required PhotoCaptureStep step,
    required HealthyLivingScanLocalizations localization,
  }) {
    switch (step) {
      case PhotoCaptureStep.frontLabelCamera:
      case PhotoCaptureStep.frontLabelPreview:
        return localization.submitProduct_productSubmission_captureTheFront;
      case PhotoCaptureStep.ingredientsCamera:
      case PhotoCaptureStep.ingredientsPreview:
        return localization
            .submitProduct_productSubmission_captureTheIngredients;
      case PhotoCaptureStep.nutritionFactsCamera:
      case PhotoCaptureStep.nutritionFactsPreview:
        return localization
            .submitProduct_productSubmission_captureNutritionFacts;
      case PhotoCaptureStep.drugFactsPanelCamera:
      case PhotoCaptureStep.drugFactsPanelPreview:
        return localization
            .submitProduct_productSubmission_captureTheDrugFactsPanel;
      case PhotoCaptureStep.directionsCamera:
      case PhotoCaptureStep.directionsPreview:
        return localization
            .submitProduct_productSubmission_captureTheDirections;
      case PhotoCaptureStep.warningsCamera:
      case PhotoCaptureStep.warningsPreview:
        return localization
            .submitProduct_productSubmission_captureWarningsOrHazards;
    }
  }

  String _getStepLabel({
    required PhotoCaptureStep step,
    required HealthyLivingScanLocalizations localization,
  }) {
    switch (step) {
      case PhotoCaptureStep.frontLabelCamera:
      case PhotoCaptureStep.frontLabelPreview:
        return localization.submitProduct_productSubmission_frontLabel;
      case PhotoCaptureStep.ingredientsCamera:
      case PhotoCaptureStep.ingredientsPreview:
        return localization.submitProduct_productSubmission_ingredients;
      case PhotoCaptureStep.nutritionFactsCamera:
      case PhotoCaptureStep.nutritionFactsPreview:
        return localization.submitProduct_productSubmission_nutritionFacts;
      case PhotoCaptureStep.drugFactsPanelCamera:
      case PhotoCaptureStep.drugFactsPanelPreview:
        return localization.submitProduct_productSubmission_drugFactsPanel;
      case PhotoCaptureStep.directionsCamera:
      case PhotoCaptureStep.directionsPreview:
        return localization.submitProduct_info_directionForUse;
      case PhotoCaptureStep.warningsCamera:
      case PhotoCaptureStep.warningsPreview:
        return localization.submitProduct_info_warningsOrHazards;
    }
  }

  String _getStepDescription({
    required PhotoCaptureStep step,
    required HealthyLivingScanLocalizations localization,
  }) {
    switch (step) {
      case PhotoCaptureStep.frontLabelCamera:
      case PhotoCaptureStep.frontLabelPreview:
        return localization.submitProduct_productSubmission_makeSureTheBrand;
      case PhotoCaptureStep.ingredientsCamera:
      case PhotoCaptureStep.ingredientsPreview:
        return localization
            .submitProduct_productSubmission_makeSureAllIngredients;
      case PhotoCaptureStep.nutritionFactsCamera:
      case PhotoCaptureStep.nutritionFactsPreview:
        return localization
            .submitProduct_productSubmission_makeSureTheFullPanel;
      case PhotoCaptureStep.drugFactsPanelCamera:
      case PhotoCaptureStep.drugFactsPanelPreview:
        return localization
            .submitProduct_productSubmission_makeSureTheDrugFactsPanel;
      case PhotoCaptureStep.directionsCamera:
      case PhotoCaptureStep.directionsPreview:
        return localization
            .submitProduct_productSubmission_makeSureTheDirectionsForUse;
      case PhotoCaptureStep.warningsCamera:
      case PhotoCaptureStep.warningsPreview:
        return localization
            .submitProduct_productSubmission_captureTheFullWarning;
    }
  }

  String _getNextButtonText({
    required PhotoCaptureStep step,
    required HealthyLivingScanLocalizations localization,
    required PhotoCaptureBloc bloc,
  }) {
    final stepConfig = bloc.stepConfig;
    final productCategory = stepConfig?.category;

    if (stepConfig != null) {
      final nextStep = stepConfig.getNextStep(step);

      if (nextStep == null) {
        return localization.submitProduct_productSubmission_almostDone;
      }

      if (productCategory == ProductCategory.cleaner) {
        if (step == PhotoCaptureStep.directionsPreview) {
          return localization
              .submitProduct_productSubmission_nextAllWarningsAndHazards;
        }
        if (step == PhotoCaptureStep.warningsPreview) {
          return localization.submitProduct_productSubmission_almostDone;
        }
      }

      switch (nextStep) {
        case PhotoCaptureStep.ingredientsCamera:
          return localization.submitProduct_productSubmission_nowLetCapture;
        case PhotoCaptureStep.nutritionFactsCamera:
          return localization
              .submitProduct_productSubmission_nextWeCaptureNutritionFacts;
        case PhotoCaptureStep.drugFactsPanelCamera:
          return localization
              .submitProduct_productSubmission_nowLetCaptureTheDrugFactsPanel;
        case PhotoCaptureStep.directionsCamera:
          return localization
              .submitProduct_productSubmission_nowLetCaptureTheDirections;
        case PhotoCaptureStep.warningsCamera:
          return localization
              .submitProduct_productSubmission_nextAllWarningsAndHazards;
        default:
          return localization.submitProduct_productSubmission_nowLetCapture;
      }
    }
    return localization.submitProduct_productSubmission_nowLetCapture;
  }

  void _handleRemovePhoto(int index, PhotoCaptureStep currentStep) {
    if (_isProcessingRemoval) {
      return;
    }
    _isProcessingRemoval = true;
    if (!mounted) return;

    context.read<PhotoCaptureBloc>().add(
      PhotoCaptureEvent.photoRemoved(
        index: index,
        isIngredientsStep: _isIngredientsStep(currentStep),
      ),
    );

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _isProcessingRemoval = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final localization = HealthyLivingScanLocalizations.of(context)!;
    final PhotoCaptureBloc bloc = context.read<PhotoCaptureBloc>();
    final AppBloc appBloc = context.read<AppBloc>();
    return BlocConsumer<PhotoCaptureBloc, PhotoCaptureState>(
      listener: (context, state) {
        if (state is PhotoCaptureActive) {
          _triggerUploadForNewPhoto();
        }
      },
      listenWhen: (previous, current) {
        if (previous is PhotoCaptureActive && current is PhotoCaptureActive) {
          return current.currentStepPhotos.length >
              previous.currentStepPhotos.length;
        }
        return false;
      },
      buildWhen:
          (_, current) =>
              current is PhotoCaptureActive ||
              current is PhotoCaptureLoading ||
              current is PhotoCaptureError,
      builder: (context, state) {
        if (state is PhotoCaptureLoading) {
          return const Center(child: CircularProgressIndicator());
        }

        final PhotoCaptureStep currentStep;
        final List<String> currentStepPhotos;
        final int selectedIndex;
        final int maxPhotos;
        final Map<String, PictureUploadStatus> uploadStatus;

        if (state is PhotoCaptureActive) {
          currentStep = state.currentStep;
          currentStepPhotos = state.currentStepPhotos;
          selectedIndex = state.selectedPhotoIndex;
          maxPhotos = state.maxPhotos;
          uploadStatus = state.photoUploadStatus;
        } else {
          final errorState = state as PhotoCaptureError;
          currentStep = errorState.currentStep;
          currentStepPhotos =
              _isIngredientsStep(errorState.currentStep)
                  ? errorState.ingredientsPhotos
                  : errorState.frontLabelPhotos;
          selectedIndex = errorState.selectedPhotoIndex;
          maxPhotos = errorState.maxPhotos;
          uploadStatus = errorState.photoUploadStatus;
        }

        final hasMinimumPhotos = currentStepPhotos.isNotEmpty;

        final isUploading = uploadStatus.values.any(
          (status) => status == PictureUploadStatus.uploading,
        );

        final allCurrentPhotosUploaded = currentStepPhotos.every(
          (photo) => uploadStatus[photo] == PictureUploadStatus.uploaded,
        );
        final isUploadingCurrentStep = currentStepPhotos.any(
          (photo) => uploadStatus[photo] == PictureUploadStatus.uploading,
        );

        final showUploadingOverlay =
            isUploadingCurrentStep && !allCurrentPhotosUploaded;
        final canAddMorePhotos = currentStepPhotos.length < maxPhotos;

        return PopScope(
          canPop: false,
          onPopInvokedWithResult: (_, _) {
            return;
          },
          child: Scaffold(
            backgroundColor: context.dsColors.surfaceNeutralContainerWhite,
            body: Padding(
              padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
              child: Stack(
                children: [
                  AbsorbPointer(
                    absorbing: showUploadingOverlay,
                    child: Column(
                      children: [
                        HeaderWithTitle(
                          title: _getStepTitle(
                            step: currentStep,
                            localization: localization,
                          ),

                          trailIcon: DSIcons.icClose,
                          onTapTrailIcon: () {
                            DSBottomSheetWidget.showBottomSheet(
                              context: context,
                              child: ProductSubmissionExitPopupWidget(),
                              isFullScreen: true,
                            );
                          },
                        ),
                        SubmitProductProgressWidget(
                          currentStep: currentStep.progressFor(
                            bloc.stepConfig?.category ?? ProductCategory.food,
                          ),
                          totalSteps: SubmitProgressSteps.totalSteps,
                        ),
                        DSSpacingWidget.vertical(
                          spacing: context.dsSpacing.sp400,
                        ),

                        Expanded(
                          child: SingleChildScrollView(
                            padding: EdgeInsets.all(context.dsSpacing.sp400),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(
                                    vertical: 3,
                                    horizontal: context.dsSpacing.sp100,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                      context.dsRadius.rd200,
                                    ),
                                    color:
                                        context
                                            .dsColors
                                            .surfaceNeutralBackgroundLight,
                                  ),
                                  child: DSText(
                                    text: _getStepLabel(
                                      step: currentStep,
                                      localization: localization,
                                    ),
                                    textStyle:
                                        DSTextStyleType.primaryCaptionSemibold,
                                    textColor:
                                        context
                                            .dsColors
                                            .surfaceAdditionalGreen2,
                                  ),
                                ),
                                DSSpacingWidget.vertical(
                                  spacing: context.dsSpacing.sp100,
                                ),
                                DSText(
                                  text:
                                      localization
                                          .submitProduct_productSubmission_photoReview,
                                  textStyle: DSTextStyleType.primaryHeadingS,
                                  textColor:
                                      context.dsColors.textNeutralOnWhite,
                                ),
                                DSSpacingWidget.vertical(
                                  spacing: context.dsSpacing.sp100,
                                ),
                                DSText(
                                  text: _getStepDescription(
                                    step: currentStep,
                                    localization: localization,
                                  ),
                                  textStyle:
                                      DSTextStyleType.primaryBodySRegular,
                                  textColor:
                                      context.dsColors.textNeutralSecondary,
                                ),

                                if (currentStep ==
                                        PhotoCaptureStep.ingredientsPreview &&
                                    bloc.stepConfig?.category ==
                                        ProductCategory.cleaner) ...{
                                  DSSpacingWidget.vertical(
                                    spacing: context.dsSpacing.sp200,
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(
                                      context.dsSpacing.sp300,
                                    ),
                                    decoration: BoxDecoration(
                                      color:
                                          context
                                              .dsColors
                                              .surfaceNeutralBackgroundMedium,
                                      borderRadius: BorderRadius.circular(
                                        context.dsRadius.rd200,
                                      ),
                                    ),
                                    child: Row(
                                      children: [
                                        DSImage.asset(
                                          DSIcons.icOtherInformation,
                                        ),
                                        DSSpacingWidget.horizontal(
                                          spacing: context.dsSpacing.sp200,
                                        ),
                                        Expanded(
                                          child: DSText(
                                            text:
                                                localization
                                                    .submitProduct_productSubmission_cleanersForDisinfectants,
                                            textStyle:
                                                DSTextStyleType.primaryCaption,
                                            textColor:
                                                context
                                                    .dsColors
                                                    .textPrimaryDefault,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                },
                                if (currentStepPhotos.isNotEmpty) ...[
                                  DSSpacingWidget.vertical(
                                    spacing: context.dsSpacing.sp500,
                                  ),
                                  ImagePreviewWidget(
                                    photos: currentStepPhotos,
                                    selectedPhotoIndex: selectedIndex,
                                  ),
                                  DSSpacingWidget.vertical(
                                    spacing: context.dsSpacing.sp400,
                                  ),
                                ],

                                DSText(
                                  text:
                                      localization
                                          .submitProduct_productSubmission_addAnotherOnlyIfSomething,
                                  textStyle: DSTextStyleType.primaryCaption,
                                  textColor:
                                      context.dsColors.textNeutralSecondary,
                                ),
                                DSSpacingWidget.vertical(
                                  spacing: context.dsSpacing.sp400,
                                ),

                                if (currentStepPhotos.isNotEmpty)
                                  ImageThumbnailWidget(
                                    imageThumbnailUIModel: ImageThumbnailUIModel(
                                      photos: currentStepPhotos,
                                      maxPhotos: maxPhotos,
                                      selectedPhotoIndex: selectedIndex,
                                      onPhotoTap: (index) {
                                        bloc.add(
                                          PhotoCaptureEvent.photoSelected(
                                            index: index,
                                          ),
                                        );
                                      },
                                      onRemovePhoto:
                                          (index) => _handleRemovePhoto(
                                            index,
                                            currentStep,
                                          ),
                                      onAddPhoto: () {
                                        bloc.add(
                                          PhotoCaptureEvent.addPhotoRequested(
                                            isIngredientsStep:
                                                _isIngredientsStep(currentStep),
                                          ),
                                        );
                                      },
                                    ),
                                    photoUploadStatus: uploadStatus,
                                    canAddMore: canAddMorePhotos,
                                  ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(context.dsSpacing.sp400),
                          decoration: BoxDecoration(
                            color:
                                context.dsColors.surfaceNeutralContainerWhite,
                          ),
                          child: DSButtonPrimary(
                            text: _getNextButtonText(
                              step: currentStep,
                              localization: localization,
                              bloc: bloc,
                            ),
                            onPressed: () {
                              if (bloc.stepConfig?.getNextStep(currentStep) ==
                                  null) {
                                bloc.add(
                                  PhotoCaptureEvent.submitPhotos(
                                    isGuestUser: !appBloc.isAuthenticated,
                                  ),
                                );
                              } else {
                                if (hasMinimumPhotos &&
                                    allCurrentPhotosUploaded &&
                                    !isUploading) {
                                  bloc.add(
                                    const PhotoCaptureEvent.navigateToNextStep(),
                                  );
                                }
                                null;
                              }
                            },
                            size: DSButtonSize.small,
                          ),
                        ),
                      ],
                    ),
                  ),

                  if (isUploading) Positioned.fill(child: AppLoader()),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
