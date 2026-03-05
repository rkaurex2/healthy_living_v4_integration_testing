import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_scan/l10n/healthy_living_scan_localizations.dart';
import 'package:healthy_living_scan/src/ui/model/photo_capture_step.dart';

class CameraHeaderCardWidget extends StatelessWidget {
  final PhotoCaptureStep currentStep;
  final List<String> currentPhotos;
  final bool isFlashOn;
  final VoidCallback onToggleFlash;
  final VoidCallback onQuestionTap;

  const CameraHeaderCardWidget({
    required this.currentStep,
    required this.currentPhotos,
    required this.isFlashOn,
    required this.onToggleFlash,
    required this.onQuestionTap,
    super.key,
  });

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
            .submitProduct_productSubmission_captureDrugFactsPanel;
      case PhotoCaptureStep.directionsCamera:
      case PhotoCaptureStep.directionsPreview:
        return localization
            .submitProduct_productSubmission_captureTheDirections;
      case PhotoCaptureStep.warningsCamera:
      case PhotoCaptureStep.warningsPreview:
        return localization.submitProduct_productSubmission_captureWarnings;
    }
  }

  @override
  Widget build(BuildContext context) {
    final HealthyLivingScanLocalizations localization =
        HealthyLivingScanLocalizations.of(context)!;
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 14 + MediaQuery.of(context).padding.top,
        ),
        child: SizedBox(
          height: context.dsSizes.sz600, // ensure enough height
          child: Stack(
            alignment: Alignment.center,
            children: [
              Center(
                child: DSText(
                  text: _getStepTitle(
                    step: currentStep,
                    localization: localization,
                  ),
                  textAlign: TextAlign.center,
                  textStyle: DSTextStyleType.primaryHeadingS,
                  textColor: context.dsColors.textOnSurfaceDefault,
                ),
              ),

              Align(
                alignment: Alignment.centerRight,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    GestureDetector(
                      onTap: onToggleFlash,
                      child: DSImage.asset(
                        isFlashOn ? DSIcons.icFlashOn : DSIcons.icFlashOff,
                        color: context.dsColors.iconOnSurfaceDefault,
                        height: context.dsSizes.sz500,
                        width: context.dsSizes.sz500,
                      ),
                    ),
                    DSSpacingWidget.horizontal(spacing: context.dsSizes.sz400),
                    GestureDetector(
                      onTap: onQuestionTap,
                      child: DSImage.asset(
                        DSIcons.icQuestion,
                        color: context.dsColors.iconOnSurfaceDefault,
                        height: context.dsSizes.sz500,
                        width: context.dsSizes.sz500,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
