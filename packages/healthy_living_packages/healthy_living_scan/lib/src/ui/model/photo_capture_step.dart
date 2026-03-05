import 'package:healthy_living_shared/healthy_living_shared.dart';

enum PhotoCaptureStep {
  frontLabelCamera(
    personalCareProgress: 1,
    sunscreenProgress: 1,
    cleanerProgress: 1,
    foodProgress: 1,
  ),
  frontLabelPreview(
    personalCareProgress: 2,
    sunscreenProgress: 2,
    cleanerProgress: 2,
    foodProgress: 2,
  ),

  ingredientsCamera(
    personalCareProgress: 2,
    sunscreenProgress: 0,
    cleanerProgress: 2,
    foodProgress: 2,
  ),
  ingredientsPreview(
    personalCareProgress: 3,
    sunscreenProgress: 0,
    cleanerProgress: 3,
    foodProgress: 3,
  ),

  nutritionFactsCamera(
    personalCareProgress: 0,
    sunscreenProgress: 0,
    cleanerProgress: 0,
    foodProgress: 3,
  ),
  nutritionFactsPreview(
    personalCareProgress: 0,
    sunscreenProgress: 0,
    cleanerProgress: 0,
    foodProgress: 4,
  ),

  drugFactsPanelCamera(
    personalCareProgress: 0,
    sunscreenProgress: 2,
    cleanerProgress: 0,
    foodProgress: 0,
  ),
  drugFactsPanelPreview(
    personalCareProgress: 0,
    sunscreenProgress: 3,
    cleanerProgress: 0,
    foodProgress: 0,
  ),

  directionsCamera(
    personalCareProgress: 0,
    sunscreenProgress: 0,
    cleanerProgress: 3,
    foodProgress: 0,
  ),
  directionsPreview(
    personalCareProgress: 0,
    sunscreenProgress: 0,
    cleanerProgress: 4,
    foodProgress: 0,
  ),

  warningsCamera(
    personalCareProgress: 0,
    sunscreenProgress: 0,
    cleanerProgress: 4,
    foodProgress: 0,
  ),
  warningsPreview(
    personalCareProgress: 0,
    sunscreenProgress: 0,
    cleanerProgress: 5,
    foodProgress: 0,
  );

  const PhotoCaptureStep({
    required this.personalCareProgress,
    required this.sunscreenProgress,
    required this.cleanerProgress,
    required this.foodProgress,
  });

  final int personalCareProgress;
  final int sunscreenProgress;
  final int cleanerProgress;
  final int foodProgress;

  int progressFor(ProductCategory category) {
    switch (category) {
      case ProductCategory.personalCare:
        return personalCareProgress;
      case ProductCategory.sunscreen:
        return sunscreenProgress;
      case ProductCategory.cleaner:
        return cleanerProgress;
      case ProductCategory.food:
        return foodProgress;
    }
  }
}
