class SharedApiEndPoint {
  const SharedApiEndPoint._();

  static const refreshToken = "/mobile_users/tokens";
  static const userLists = "/user_lists";
  static const search = "/search";
  static const String _userListDetail = "/user_lists/";
  static const String _productListDetail = "/product_lists/";
  static const String userSignOut = "/mobile_users/sign_out";
  static const String userDelete = "/mobile_users/delete";
  static const recentlyViewedAdd = '/recently_viewed/add';
  static const String universalCategories = "/universal_categories";
  static const String entitlementsVerify = "/entitlements/verify";
  static const String history = "/history";

  static const String curatedIngredientPreferenceLists =
      "/curated_ingredient_preferences";
  static const String ocrExtractions = "crowd_sourced/ocr_extractions/";

  static String searchByBarcode(String id) => '$search/$id';

  static String userListDetail(String id) => '$_userListDetail$id';

  static String productListDetail(String id) => '$_productListDetail$id';

  static String renameUserList(String id) => '$_userListDetail$id';

  static String deleteUserList(String id) => '$_userListDetail$id';

  static String deleteProductsUserList(String id) => '$_userListDetail$id';

  static String ocrExtractionsWithID(String id) => '$ocrExtractions$id';

  static const curatedIngredientPreferencesListUserSelection =
      "/curated_ingredient_preference_list_user_selections";

  static String curatedIngredientPreferencesListUserSelectionId(String id) =>
      '$curatedIngredientPreferencesListUserSelection/$id';
}
