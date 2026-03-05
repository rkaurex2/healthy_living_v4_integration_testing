import 'package:healthy_living_shared/healthy_living_shared.dart';

enum SubmitProgressSteps {
  selectProductType(personalCare: 1, sunscreen: 1, cleaner: 1, food: 1),
  info(personalCare: 4, sunscreen: 4, cleaner: 6, food: 5),
  categorySelection(personalCare: 5, sunscreen: 5, cleaner: 7, food: 6),
  subCategorySelection(personalCare: 6, sunscreen: 0, cleaner: 0, food: 7),
  form(personalCare: 7, sunscreen: 7, cleaner: 0, food: 0),
  additionalInfo(personalCare: 8, sunscreen: 8, cleaner: 8, food: 8),
  sunscreenDetail(personalCare: 0, sunscreen: 6, cleaner: 0, food: 0),
  reviewSubmission(personalCare: 9, sunscreen: 9, cleaner: 9, food: 9);

  static const int totalSteps = 9;

  const SubmitProgressSteps({
    required this.personalCare,
    required this.sunscreen,
    required this.cleaner,
    required this.food,
  });

  final int personalCare;
  final int sunscreen;
  final int cleaner;
  final int food;

  int progressFor(ProductCategory category) {
    switch (category) {
      case ProductCategory.personalCare:
        return personalCare;
      case ProductCategory.sunscreen:
        return sunscreen;
      case ProductCategory.cleaner:
        return cleaner;
      case ProductCategory.food:
        return food;
    }
  }
}
