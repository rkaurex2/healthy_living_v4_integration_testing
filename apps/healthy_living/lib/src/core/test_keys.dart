import 'package:flutter/foundation.dart';

/// Centralised widget Key constants for integration test locators.
/// All integration tests must reference keys from this file — never hardcode key strings inline.
///
/// Dynamic list pattern: Key('${TestKeys.productCard.value}_$index')
class TestKeys {
  TestKeys._();

  // ── Navigation / Bottom Bar ──────────────────────────────────────────────
  static const homeTab = Key('home_tab');
  static const findTab = Key('find_tab');
  static const scanTab = Key('scan_tab');
  static const myItemsTab = Key('my_items_tab');
  static const accountTab = Key('account_tab');

  // ── Auth ─────────────────────────────────────────────────────────────────
  static const signInEmailField = Key('sign_in_email_field');
  static const signInPasswordField = Key('sign_in_password_field');
  static const signInSubmitButton = Key('sign_in_submit_button');
  static const continueAsGuestButton = Key('continue_as_guest_button');
  static const forgotPasswordButton = Key('forgot_password_button');
  static const createAccountButton = Key('create_account_button');
  static const createAccEmailField = Key('create_acc_email_field');
  static const createAccPasswordField = Key('create_acc_password_field');
  static const createAccSubmitButton = Key('create_acc_submit_button');
  static const forgotEmailField = Key('forgot_email_field');
  static const forgotSubmitButton = Key('forgot_submit_button');
  static const forgotSuccessView = Key('forgot_success_view');

  // ── Search ───────────────────────────────────────────────────────────────
  static const searchBar = Key('search_bar');
  static const searchResultsList = Key('search_results_list');
  static const searchAllProductsTab = Key('search_all_products_tab');
  static const searchProductsTab = Key('search_products_tab');
  static const searchBrandsTab = Key('search_brands_tab');
  static const searchIngredientsTab = Key('search_ingredients_tab');
  static const searchListsTab = Key('search_lists_tab');
  static const filterButton = Key('filter_button');
  static const sortByDropdown = Key('sort_by_dropdown');
  static const ewgVerifiedFilter = Key('ewg_verified_filter');
  static const noResultsView = Key('no_results_view');
  static const threeDotsMenu = Key('three_dots_menu');
  static const addToListFromMenu = Key('add_to_list_from_menu');
  static const compareFromMenu = Key('compare_from_menu');

  // ── Product Detail ───────────────────────────────────────────────────────
  static const productDetailScreen = Key('product_detail_screen');
  static const findingsTab = Key('findings_tab');
  static const ingredientsTabPD = Key('ingredients_tab_pd');
  static const labelInfoTab = Key('label_info_tab');
  static const shareProductButton = Key('share_product_button');
  static const addToListButton = Key('add_to_list_button');
  static const buyNowButton = Key('buy_now_button');
  static const compareProductsButton = Key('compare_products_button');
  static const hazardBadge = Key('hazard_badge');
  static const productCard = Key('product_card');

  // ── Lists ────────────────────────────────────────────────────────────────
  static const listsScreen = Key('lists_screen');
  static const createListButton = Key('create_list_button');
  static const listNameField = Key('list_name_field');
  static const renameListButton = Key('rename_list_button');
  static const deleteListButton = Key('delete_list_button');
  static const shareListButton = Key('share_list_button');
  static const listItemCard = Key('list_item_card');
  static const confirmDeleteButton = Key('confirm_delete_button');

  // ── Home ─────────────────────────────────────────────────────────────────
  static const homeScreen = Key('home_screen');
  static const homePremiumModal = Key('home_premium_modal');
  static const homeRecentActivity = Key('home_recent_activity');
  static const homeJustVerified = Key('home_just_verified');
  static const homeUserLists = Key('home_user_lists');
  static const homeBrowseByCategory = Key('home_browse_by_category');
  static const homeDonate = Key('home_donate');
  static const homeUserGuideCarousel = Key('home_user_guide_carousel');
  static const homeEwgGuides = Key('home_ewg_guides');
  static const homeSignInPrompt = Key('home_sign_in_prompt');

  // ── Account / Settings ───────────────────────────────────────────────────
  static const accountScreen = Key('account_screen');
  static const editProfileButton = Key('edit_profile_button');
  static const changePasswordButton = Key('change_password_button');
  static const signOutButton = Key('sign_out_button');
  static const deleteAccountButton = Key('delete_account_button');
  static const subscriptionSection = Key('subscription_section');
  static const premiumBannerAccount = Key('premium_banner_account');
  static const newsletterLink = Key('newsletter_link');
  static const termsLink = Key('terms_link');
  static const privacyLink = Key('privacy_link');
  static const copyIdButton = Key('copy_id_button');

  // ── Browse / Find ─────────────────────────────────────────────────────────
  static const findLandingScreen = Key('find_landing_screen');
  static const browseByCategory = Key('browse_by_category');
  static const categoryGrid = Key('category_grid');
  static const subcategoryList = Key('subcategory_list');
  static const sunscreenBanner = Key('sunscreen_banner');
  static const browseFilterButton = Key('browse_filter_button');
  static const browseAddToList = Key('browse_add_to_list');
  static const browseCompareProducts = Key('browse_compare_products');

  // ── History ───────────────────────────────────────────────────────────────
  static const historyScreen = Key('history_screen');
  static const historyAllFilter = Key('history_all_filter');
  static const historyViewedFilter = Key('history_viewed_filter');
  static const historySubmittedFilter = Key('history_submitted_filter');

  // ── Ingredient Preference ─────────────────────────────────────────────────
  static const ingredientPrefFtux = Key('ingredient_pref_ftux');
  static const ingredientPrefCats = Key('ingredient_pref_cats');
  static const ingredientAvoidList = Key('ingredient_avoid_list');
  static const ingredientPreferList = Key('ingredient_prefer_list');

  // ── Compare Products ──────────────────────────────────────────────────────
  static const compareScreen = Key('compare_screen');
  static const compareProductCard = Key('compare_product_card');

  // ── Ingredient Detail ─────────────────────────────────────────────────────
  static const ingredientDetailScreen = Key('ingredient_detail_screen');
  static const ingredientMoreAbout = Key('ingredient_more_about');

  // ── Brands ────────────────────────────────────────────────────────────────
  static const brandsScreen = Key('brands_screen');
  static const brandCard = Key('brand_card');

  // ── My Items ──────────────────────────────────────────────────────────────
  static const myItemsScreen = Key('my_items_screen');
  static const myItemsFilterAll = Key('my_items_filter_all');
  static const myItemsEmptyState = Key('my_items_empty_state');

  // ── Error / Offline States ────────────────────────────────────────────────
  static const offlineErrorView = Key('offline_error_view');
  static const retryButton = Key('retry_button');
  static const errorBanner = Key('error_banner');
}
