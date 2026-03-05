class ProductSubmissionApiEndpoints {
  const ProductSubmissionApiEndpoints._();

  static const String productSubmissions = "crowd_sourced/product_submissions/";
  static const String ocrExtractions = "crowd_sourced/ocr_extractions/";

  static String productSubmissionsWithID(String id) => '$productSubmissions$id';

  static String ocrExtractionsWithID(String id) => '$ocrExtractions$id';
  static const String sunscreenActiveIngredients =
      "crowd_sourced/sunscreen_active_ingredients";
}
