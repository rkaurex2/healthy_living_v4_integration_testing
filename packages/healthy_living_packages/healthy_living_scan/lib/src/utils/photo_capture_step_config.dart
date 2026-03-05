import 'package:healthy_living_scan/src/ui/model/photo_capture_step.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class PhotoCaptureStepConfig {
  final ProductCategory category;

  PhotoCaptureStepConfig(this.category);

  /// Get ordered steps based on product category
  List<PhotoCaptureStep> get orderedSteps {
    switch (category) {
      case ProductCategory.personalCare:
        // Personal Care: Front → Ingredients
        return [
          PhotoCaptureStep.frontLabelCamera,
          PhotoCaptureStep.frontLabelPreview,
          PhotoCaptureStep.ingredientsCamera,
          PhotoCaptureStep.ingredientsPreview,
        ];

      case ProductCategory.food:
        // Food: Front → Ingredients → Nutrition Facts
        return [
          PhotoCaptureStep.frontLabelCamera,
          PhotoCaptureStep.frontLabelPreview,
          PhotoCaptureStep.ingredientsCamera,
          PhotoCaptureStep.ingredientsPreview,
          PhotoCaptureStep.nutritionFactsCamera,
          PhotoCaptureStep.nutritionFactsPreview,
        ];

      case ProductCategory.sunscreen:
        // Sunscreen: Front → Drug Facts Panel
        return [
          PhotoCaptureStep.frontLabelCamera,
          PhotoCaptureStep.frontLabelPreview,
          PhotoCaptureStep.drugFactsPanelCamera,
          PhotoCaptureStep.drugFactsPanelPreview,
        ];

      case ProductCategory.cleaner:
        // Cleaners: Front → Ingredients → Directions → Warnings
        return [
          PhotoCaptureStep.frontLabelCamera,
          PhotoCaptureStep.frontLabelPreview,
          PhotoCaptureStep.ingredientsCamera,
          PhotoCaptureStep.ingredientsPreview,
          PhotoCaptureStep.directionsCamera,
          PhotoCaptureStep.directionsPreview,
          PhotoCaptureStep.warningsCamera,
          PhotoCaptureStep.warningsPreview,
        ];
    }
  }

  /// Get initial step
  PhotoCaptureStep getInitialStep() => orderedSteps.first;

  /// Get next step or null if no more steps
  PhotoCaptureStep? getNextStep(PhotoCaptureStep currentStep) {
    final currentIndex = orderedSteps.indexOf(currentStep);
    if (currentIndex == -1 || currentIndex >= orderedSteps.length - 1) {
      return null;
    }
    return orderedSteps[currentIndex + 1];
  }

  /// Check if step is camera step
  bool isCameraStep(PhotoCaptureStep step) {
    return step == PhotoCaptureStep.frontLabelCamera ||
        step == PhotoCaptureStep.ingredientsCamera ||
        step == PhotoCaptureStep.nutritionFactsCamera ||
        step == PhotoCaptureStep.drugFactsPanelCamera ||
        step == PhotoCaptureStep.directionsCamera ||
        step == PhotoCaptureStep.warningsCamera;
  }

  /// Check if step is preview step
  bool isPreviewStep(PhotoCaptureStep step) => !isCameraStep(step);

  /// Get camera step from preview step
  PhotoCaptureStep getCameraStepForPreview(PhotoCaptureStep previewStep) {
    if (isCameraStep(previewStep)) return previewStep;

    final index = orderedSteps.indexOf(previewStep);
    if (index > 0 && isCameraStep(orderedSteps[index - 1])) {
      return orderedSteps[index - 1];
    }
    return previewStep;
  }

  /// Get the role for API upload
  String getPhotoRole(PhotoCaptureStep step) {
    switch (step) {
      case PhotoCaptureStep.frontLabelCamera:
      case PhotoCaptureStep.frontLabelPreview:
        return StringConstants.front;

      case PhotoCaptureStep.ingredientsCamera:
      case PhotoCaptureStep.ingredientsPreview:
        return StringConstants.singleIngredientsPanel;

      case PhotoCaptureStep.nutritionFactsCamera:
      case PhotoCaptureStep.nutritionFactsPreview:
        return StringConstants.nutritionPanel;

      case PhotoCaptureStep.drugFactsPanelCamera:
      case PhotoCaptureStep.drugFactsPanelPreview:
        return StringConstants.drugFactsPanel;

      case PhotoCaptureStep.directionsCamera:
      case PhotoCaptureStep.directionsPreview:
        return StringConstants.directions;

      case PhotoCaptureStep.warningsCamera:
      case PhotoCaptureStep.warningsPreview:
        return StringConstants.warnings;
    }
  }

  /// Get progress count (5 points per camera+preview pair)
  int getProgressCount(PhotoCaptureStep step) {
    final stepIndex = orderedSteps.indexOf(step);
    if (stepIndex == -1) return 5;
    return ((stepIndex ~/ 2) + 1) * 5;
  }

  /// Check if current step is for ingredients
  bool isIngredientsStep(PhotoCaptureStep step) {
    return step == PhotoCaptureStep.ingredientsCamera ||
        step == PhotoCaptureStep.ingredientsPreview;
  }

  /// Get current photos for the step
  List<String> getCurrentPhotos(
    PhotoCaptureStep step,
    Map<String, List<String>> photosByRole,
  ) {
    final role = getPhotoRole(step);
    return photosByRole[role] ?? [];
  }
}
