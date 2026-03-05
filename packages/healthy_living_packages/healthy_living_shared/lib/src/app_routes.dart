enum AppRoutes {
  home(path: '/home', name: 'Home', eventName: 'home'),
  find(path: '/find', name: 'Find', eventName: 'find'),
  scan(path: '/scan', name: 'Scan', eventName: 'scan'),
  myItems(path: '/my-items', name: 'MyItems', eventName: 'my_items'),
  account(path: '/account', name: 'Account', eventName: 'account'),
  authScreen(
    path: '/auth-screen',
    name: 'AuthScreen',
    eventName: 'auth_screen',
  ),
  letsGetStarted(
    path: '/lets-get-start',
    name: 'LetsGetStarted',
    eventName: 'lets_get_started',
  ),
  ftUxWalkThrough(
    path: '/ft-ux-walk-through',
    name: 'FtUxWalkThrough',
    eventName: 'ft_ux_walkthrough',
  ),
  ftUxCreateAccount(
    path: '/ft-ux-create-account',
    name: 'FtUxCreateAccount',
    eventName: 'ft_ux_create_account',
  ),
  signIn(path: '/signIn', name: 'SignIn', eventName: 'sign_in'),
  forgotPassword(
    path: '/forgotPassword',
    name: 'ForgotPassword',
    eventName: 'forgot_password',
  ),
  signUp(path: '/signUp', name: 'SignUp', eventName: 'sign_up'),
  splashScreen(
    path: '/splash-screen',
    name: 'SplashScreen',
    eventName: 'splash_screen',
  ),
  createNewPassword(
    path: '/create-new-password',
    name: 'CreateNewPassword',
    eventName: 'create_new_password',
  ),
  checkYourEmail(
    path: '/check-your-email',
    name: 'CheckYourEmail',
    eventName: 'check_your_email',
  ),
  resetPasswordConfirm(
    path: '/reset-password-confirm',
    name: 'ResetPasswordConfirm',
    eventName: 'reset_password_confirm',
  ),
  browse(path: '/browse-screen', name: 'BrowseScreen', eventName: 'browse'),
  browseProductByCategory(
    path: 'browse-product',
    name: 'BrowseProductByCategoryScreen',
    eventName: 'browse_product_by_category',
  ),
  browseCategoryScreen(
    path: '/browse-category',
    name: 'BrowseCategoryScreen',
    eventName: 'browse_category',
  ),
  browseProductVerifiedScreen(
    path: '/browse-product-verified',
    name: 'BrowseProductVerifiedScreen',
    eventName: 'browse_product_verified',
  ),
  selectProductTypeScreen(
    path: '/select-product-type',
    name: 'SelectProductTypScreen',
    eventName: 'select_product_type',
  ),
  ewgGuides(
    path: 'ewg-guides',
    name: 'EwgGuidesScreen',
    eventName: 'ewg_guides',
  ),
  ewgGuidesWebview(
    path: '/ewg-guide-webview',
    name: 'EwgGuidesScreenWebview',
    eventName: 'ewg_guides_webview',
  ),
  productDetail(
    path: 'product-detail',
    name: 'ProductDetail',
    eventName: 'product_detail',
  ),
  findProductDetail(
    path: '/find-product-detail',
    name: 'FindProductDetail',
    eventName: 'find_product_detail',
  ),
  myItemsProductDetail(
    path: '/my-items-product-detail',
    name: 'MyItemsProductDetail',
    eventName: 'my_items_product_detail',
  ),
  topFindingDetail(
    path: 'top-finding-detail',
    name: 'TopFindingDetail',
    eventName: 'top_finding_detail',
  ),
  nutritionFacts(
    path: '/nutrition-facts',
    name: 'NutritionFactsScreen',
    eventName: 'nutrition_facts',
  ),
  ingredientDetails(
    path: '/ingredient-details',
    name: 'IngredientDetails',
    eventName: 'ingredient_details',
  ),
  searchIngredientDetails(
    path: '/search-ingredient-details',
    name: 'SearchIngredientDetails',
    eventName: 'search_ingredient_details',
  ),
  myItemsIngredientDetails(
    path: '/my-items-ingredient-details',
    name: 'MyItemsIngredientDetails',
    eventName: 'my_items_ingredient_details',
  ),
  productComparisonScreen(
    path: '/product-comparison',
    name: 'ProductComparisonScreen',
    eventName: 'product_comparison',
  ),
  submitProductScreen(
    path: '/submit_product',
    name: 'SubmitProduct',
    eventName: 'submit_product',
  ),
  submitProductTypeIntroScreen(
    path: '/submit-product-type-intro',
    name: 'SubmitProductTypeIntroScreen',
    eventName: 'submit_product_type_intro',
  ),
  submitProductInfo(
    path: '/submit-product-info',
    name: 'SubmitProductInfo',
    eventName: 'submit_product_info',
  ),
  submitProductCategorySelectionScreen(
    path: '/submit-product-category-selection',
    name: 'SubmitProductCategorySelectionScreen',
    eventName: 'submit_product_category_selection',
  ),
  pcpSubCategorySelectionScreen(
    path: '/pcp-sub-category-selection',
    name: 'PCPSubCategorySelectionScreen',
    eventName: 'pcp_sub_category_selection',
  ),
  sunscreenDetailInfoScreen(
    path: '/sunscreen-detail-info',
    name: 'SunscreenDetailInfoScreen',
    eventName: 'sunscreen_detail_info',
  ),
  submitProductFormScreen(
    path: '/submit-product-form',
    name: 'SubmitProductFormScreen',
    eventName: 'submit_product_form',
  ),
  reviewSubmissionScreen(
    path: '/review-submission',
    name: 'ReviewSubmissionScreen',
    eventName: 'review_submission',
  ),
  submissionConfirmationScreen(
    path: '/submission-confirmation',
    name: 'SubmissionConfirmationScreen',
    eventName: 'submission_confirmation',
  ),
  productSubmitCameraScreen(
    path: '/product-submit-camera',
    name: 'ProductSubmitCameraScreen',
    eventName: 'product_submit_camera',
  ),
  myItemMyListDetail(
    path: '/my-item-my-list-detail',
    name: 'MyItemsMyListDetail',
    eventName: 'my_items_list_detail',
  ),
  homeMyListDetail(
    path: '/home-my-list-detail',
    name: 'HomeMyListDetail',
    eventName: 'home_list_detail',
  ),
  webView(path: '/web-view', name: 'WebView', eventName: 'web_view'),
  newsletter(path: '/newsletter', name: 'Newsletter', eventName: 'newsletter'),
  aboutEWG(path: '/about-ewg', name: 'AboutEWG', eventName: 'about_ewg'),
  aboutScores(
    path: '/about-scores',
    name: 'AboutScores',
    eventName: 'about_scores',
  ),
  myAccountDetail(
    path: 'my-account-detail',
    name: 'MyAccountDetail',
    eventName: 'my_account_detail',
  ),
  justVerifiedDetail(
    path: '/just-verified-detail',
    name: 'JustVerifiedDetail',
    eventName: 'just_verified_detail',
  ),
  recentActivityDetail(
    path: '/recent-activity-detail',
    name: 'RecentActivityDetail',
    eventName: 'recent_activity_detail',
  ),
  entitlementVerificationScreen(
    path: '/entitlement-verification',
    name: 'EntitlementVerificationScreen',
    eventName: 'entitlement_verification',
  ),
  subscriptionDetailScreen(
    path: '/subscription-detail',
    name: 'SubscriptionDetailScreen',
    eventName: 'subscription_detail',
  ),
  instantScoreProcessingScreen(
    path: '/instant-score-processing',
    name: 'InstantScoreProcessingScreen',
    eventName: 'instant_score_processing',
  ),
  instantHazardScoreScreen(
    path: '/instant-hazard-score',
    name: 'InstantHazardScoreScreen',
    eventName: 'instant_hazard_score',
  ),
  instantScoreIngredientDetails(
    path: '/instant-score-ingredient-details',
    name: 'InstantScoreIngredientDetails',
    eventName: 'instant_score_ingredient_details',
  ),
  instantHazardScoreHistoryScreen(
    path: '/instant-hazard-score-history',
    name: 'InstantHazardScoreHistoryScreen',
    eventName: 'instant_hazard_score_history',
  ),
  ftUxAccountAboutIngredientPreference(
    path: '/ft-ux-account-about-ingredient-preference',
    name: 'FtUxAccountAboutIngredientPreference',
    eventName: 'ft_ux_account_about_ingredient_preference',
  ),
  ftUxAccountGetStartedIngredientPreference(
    path: '/ft-ux-account-get-started-ingredient-preference',
    name: 'FtUxAccountGetStartedIngredientPreference',
    eventName: 'ft_ux_account_get_started_ingredient_preference',
  ),
  accountIngredientPreferenceCategory(
    path: '/ingredient-preference-category',
    name: 'AccountIngredientPreferenceCategory',
    eventName: 'account_ingredient_preference_category',
  ),
  accountIngredientPreferenceList(
    path: '/ingredient-preference-list',
    name: 'AccountIngredientPreferenceList',
    eventName: 'account_ingredient_preference_list',
  ),
  submitProductsAdditionalInfoScreen(
    path: '/submit-product-additional-info',
    name: 'SubmitProductsAdditionalInfoScreen',
    eventName: 'submit_products_additional_info',
  ),
  learnAboutPremium(
    path: '/learn-about-premium',
    name: 'LearnAboutPremiumScreen',
    eventName: 'learn_about_premium',
  ),
  subscriptionEndedScreen(
    path: '/subscription-ended',
    name: 'SubscriptionEndedScreen',
    eventName: 'subscription_ended_screen',
  );

  final String path;
  final String name;
  final String eventName;

  const AppRoutes({
    required this.path,
    required this.name,
    required this.eventName,
  });
}
