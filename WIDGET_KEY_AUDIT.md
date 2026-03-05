# Widget Key Audit

> Session 01-GAP → SESSION GAP-B | Date: March 4, 2026
> bloc_test version confirmed in use: ^10.0.0
> **Status: COMPLETE — 96/98 keys wired (98%), 2 CANNOT WIRE**

## Summary

- **TestKeys constant file:** `apps/healthy_living/lib/src/core/test_keys.dart` (98 keys defined)
- **Keys wired to source widgets:** 96 / 98 (98%)
- **Keys marked CANNOT WIRE:** 2 (ewgVerifiedFilter, errorBanner)
- **Total source files modified across all sessions:** ~37
- **Widget test files with KEY INVENTORY:** 8
- **Source files with pre-existing keys:** ~14

## Keys Added This Session

| Widget | Source File | TestKey Applied | Integration Test Flow |
|---|---|---|---|
| Search text input | healthy_living_find/.../widgets/search_top_bar.dart | TestKeys.searchBar | Flow 02 |
| Three dots menu | healthy_living_find/.../widgets/search_top_bar.dart | TestKeys.threeDotsMenu | Flow 02 |
| Product detail wrapper | healthy_living_product_detail/.../screen/product_detail_screen.dart | TestKeys.productDetailScreen | Flow 03 |
| Compare products button | healthy_living_product_detail/.../widget/product_detail_bottom_action.dart | TestKeys.compareProductsButton | Flow 03 |
| Add to list button | healthy_living_product_detail/.../widget/product_detail_bottom_action.dart | TestKeys.addToListButton | Flow 03 |
| Buy now button | healthy_living_product_detail/.../widget/product_detail_bottom_action.dart | TestKeys.buyNowButton | Flow 03 |
| My items screen scaffold | healthy_living_my_items/.../screens/my_items_screen.dart | TestKeys.myItemsScreen | Flow 04 |
| List name text field | healthy_living_shared/.../widgets/list/create_list_sheet_widget.dart | TestKeys.listNameField | Flow 04 |
| Share list option | healthy_living_shared/.../widgets/list/my_list_options_widget.dart | TestKeys.shareListButton | Flow 04 |
| Delete list option | healthy_living_shared/.../widgets/list/my_list_options_widget.dart | TestKeys.deleteListButton | Flow 04 |
| Confirm delete button | healthy_living_shared/.../widgets/list/my_list_delete_widget.dart | TestKeys.confirmDeleteButton | Flow 04 |
| Add to list menu option | healthy_living_shared/.../widgets/list/product_options_sheet_view.dart | TestKeys.addToListFromMenu | Flow 02, 04 |
| Compare menu option | healthy_living_shared/.../widgets/list/product_options_sheet_view.dart | TestKeys.compareFromMenu | Flow 02 |

**Total keys added this session: 13**
**Source files modified this session: 8**

## Pre-Existing Keys (Already in Source)

These keys were found already applied by the dev team in prior work:

| Area | Keys Present | Source Files |
|---|---|---|
| Auth (Sign In) | signInEmailField, signInPasswordField, signInSubmitButton, forgotPasswordButton | signin_content_screen.dart |
| Auth (Create Account) | createAccEmailField, createAccPasswordField, createAccSubmitButton, createAccountButton, continueAsGuestButton | create_account_content_screen.dart, ft_ux_create_account_screen.dart |
| Auth (Forgot Password) | forgotEmailField, forgotSubmitButton | forgot_password_content_screen.dart |
| Bottom Navigation | homeTab, findTab, scanTab, myItemsTab, accountTab | app_bottom_navigation_bar.dart |
| Home Screen | homeScreen, homePremiumModal, homeRecentActivity, homeJustVerified, homeUserLists, homeBrowseByCategory, homeUserGuideCarousel, homeEwgGuides, homeSignInPrompt, homeDonate | home_screen.dart |
| Account Screen | accountScreen, editProfileButton, changePasswordButton, signOutButton, deleteAccountButton, subscriptionSection, premiumBannerAccount, newsletterLink, termsLink, privacyLink, copyIdButton | my_account_screen.dart + 5 widget files |

**Pre-existing keys: ~35**

## Dynamic List Key Pattern

For dynamically generated list items (search results, product lists, browse results), use:
```dart
Key('${TestKeys.productCard.value}_$index')
```

Applied to: search results list items, browse product grid items, list detail product items.

## Keys Deferred to Later Sessions

- **Session 04-GAP adds:** errorBanner (during offline test writing) — offlineErrorView and retryButton now wired via DSErrorView (SESSION GAP-A)
- **Session 05 adds:** remaining screen-specific keys for 12 priority screens (during screen widget test writing)
- **Session 06 adds:** any integration-test-specific keys discovered during POM creation

## Source Files Modified This Session

1. `packages/healthy_living_packages/healthy_living_find/lib/src/ui/widgets/search_top_bar.dart`
2. `packages/healthy_living_packages/healthy_living_product_detail/lib/src/ui/screen/product_detail_screen.dart`
3. `packages/healthy_living_packages/healthy_living_product_detail/lib/src/ui/widget/product_detail_bottom_action.dart`
4. `packages/healthy_living_packages/healthy_living_my_items/lib/src/ui/screens/my_items_screen.dart`
5. `packages/healthy_living_packages/healthy_living_shared/lib/src/ui/widgets/list/create_list_sheet_widget.dart`
6. `packages/healthy_living_packages/healthy_living_shared/lib/src/ui/widgets/list/my_list_options_widget.dart`
7. `packages/healthy_living_packages/healthy_living_shared/lib/src/ui/widgets/list/my_list_delete_widget.dart`
8. `packages/healthy_living_packages/healthy_living_shared/lib/src/ui/widgets/list/product_options_sheet_view.dart`

## Resolved: Persistent Offline UI (SESSION GAP-A)

**Original finding (Session 04-GAP):** All 7 tested screens used transient `DSToast` messages for error states. No screen rendered a persistent error widget or retry button.

**Resolution (SESSION GAP-A — March 4, 2026):** Created `DSErrorView` widget in the design system and added it to 4 screens that have data-load failure states:

| Screen | BLoC | Failure State | Retry Event |
|--------|------|---------------|-------------|
| BrowseContentScreen | BrowseCategoriesBloc | BrowseCategoriesFailure, BrowseInternetFailure | `browseCategoriesInitialize(isEwgVerified: false)` |
| ProductDetailContentScreen | ProductDetailBloc | ProductDetailFailure | `initialized(product, isAuthenticated, isPremiumUser)` |
| HistoryContentScreen | HistoryListBloc | HistoryListLoadFailure (page == 1) | `initialized()` |
| MyAccountContentScreen | MyAccountBloc | MyAccountFailure | `AccountInitialized()` |

**3 screens NOT modified (no data-load failure state in their BLoC):**
- HomeScreen — `HomeBloc._onHomeInitialized` catches exceptions silently, always emits `HomeStarted`
- SearchScreen — `UniversalSearchState` has no failure variant
- MyItemsScreen — Tab container; delegates to child tab screens

**Impact on integration tests:** `TestKeys.offlineErrorView` and `TestKeys.retryButton` are now wired to DSErrorView in the 4 screens above. Integration tests can assert their presence when the BLoC emits a failure state. DSToast still fires alongside DSErrorView for transient notification.

## Keys Added in Session 05

| Widget | Source File | TestKey Applied |
|---|---|---|
| Product info card | healthy_living_product_detail/.../widget/product_info_card.dart | TestKeys.productCard |
| Hazard/rating badge | healthy_living_product_detail/.../widget/product_info_card.dart | TestKeys.hazardBadge |
| Share product header | healthy_living_product_detail/.../widget/product_detail_content_screen.dart | TestKeys.shareProductButton |
| Ingredient detail scaffold | healthy_living_product_detail/.../screen/ingredient_detail_content_screen.dart | TestKeys.ingredientDetailScreen |
| More about ingredient | healthy_living_product_detail/.../screen/ingredient_detail_content_screen.dart | TestKeys.ingredientMoreAbout |
| Browse landing scaffold | healthy_living_find/.../widgets/browse_content_screen.dart | TestKeys.findLandingScreen |
| Sunscreen banner | healthy_living_find/.../widgets/sunscreen_product_card.dart | TestKeys.sunscreenBanner |
| History screen root | healthy_living_my_items/.../screens/history_tab_content_screen.dart | TestKeys.historyScreen |
| Brand list screen | healthy_living_find/.../screens/brand_list/brand_list_content_screen.dart | TestKeys.brandsScreen |
| Compare screen root | healthy_living_product_detail/.../widget/product_comparison_content_screen.dart | TestKeys.compareScreen |
| Ingredient pref FTUX | healthy_living_account/.../screens/ft_ux_get_started_ingredient_preference_screen.dart | TestKeys.ingredientPrefFtux |
| Ingredient pref list | healthy_living_account/.../screens/ingredient_preference_list_content_screen.dart | TestKeys.ingredientAvoidList |

**Total keys added in Session 05: 12**
**Source files modified in Session 05: 9**
**Running total keys wired after Session 05: 60/98 (61%)**

### Session 05 Source Files Modified

1. `packages/healthy_living_packages/healthy_living_product_detail/lib/src/ui/widget/product_info_card.dart`
2. `packages/healthy_living_packages/healthy_living_product_detail/lib/src/ui/widget/product_detail_content_screen.dart`
3. `packages/healthy_living_packages/healthy_living_product_detail/lib/src/ui/screen/ingredient_detail_content_screen.dart`
4. `packages/healthy_living_packages/healthy_living_find/lib/src/ui/widgets/browse_content_screen.dart`
5. `packages/healthy_living_packages/healthy_living_find/lib/src/ui/widgets/sunscreen_product_card.dart`
6. `packages/healthy_living_packages/healthy_living_my_items/lib/src/ui/screens/history_tab_content_screen.dart`
7. `packages/healthy_living_packages/healthy_living_find/lib/src/ui/screens/brand_list/brand_list_content_screen.dart`
8. `packages/healthy_living_packages/healthy_living_product_detail/lib/src/ui/widget/product_comparison_content_screen.dart`
9. `packages/healthy_living_packages/healthy_living_account/lib/src/ui/screens/ft_ux_get_started_ingredient_preference_screen.dart`

## Keys Added in SESSION GAP-B (March 4, 2026)

All previously deferred keys have been wired to their source widgets. This session completes the TestKeys wiring effort.

| Widget | Source File | TestKey Applied | Key Pattern |
|--------|------------|----------------|-------------|
| No search results | healthy_living_find/.../widgets/search_product_content_widget.dart | TestKeys.noResultsView | static |
| Search results list | healthy_living_find/.../widgets/search_product_content_widget.dart | TestKeys.searchResultsList | static (KeyedSubtree wrap) |
| Search tab (×5) | healthy_living_find/.../widgets/search_tabs_widget.dart | search_${tab.type.name}_tab | dynamic per SearchTabType |
| Browse filter button | healthy_living_find/.../widgets/browse_product_category_content_screen.dart | TestKeys.browseFilterButton | static |
| Sort by dropdown | healthy_living_find/.../widgets/browse_product_category_content_screen.dart | TestKeys.sortByDropdown | static |
| Browse add-to-list sheet | healthy_living_find/.../widgets/browse_product_category_content_screen.dart | TestKeys.browseAddToList | static |
| Browse compare sheet | healthy_living_find/.../widgets/browse_product_category_content_screen.dart | TestKeys.browseCompareProducts | static |
| Browse by category | healthy_living_find/.../widgets/browse_product_by_category_content_screen.dart | TestKeys.browseByCategory | static |
| Subcategory list | healthy_living_find/.../widgets/browse_product_by_category_content_screen.dart | subcategory_list_$index | dynamic per section |
| Category grid | healthy_living_find/.../widgets/gradient_grid_section.dart | TestKeys.categoryGrid | static |
| History sort filter (×3) | healthy_living_my_items/.../widgets/history_sort_by_bottom_sheet_widget.dart | history_${sortType.name}_filter | dynamic per HistorySortType |
| My items filter all | healthy_living_my_items/.../screens/history_tab_content_screen.dart | TestKeys.myItemsFilterAll | static |
| My items empty state | healthy_living_my_items/.../widgets/no_my_list_widget.dart | TestKeys.myItemsEmptyState | static |
| Create list button | healthy_living_my_items/.../widgets/my_items_lists_widget.dart | TestKeys.createListButton | static |
| Lists screen | healthy_living_my_items/.../screens/list_tab_screen.dart | TestKeys.listsScreen | static |
| Product detail tab (×3) | healthy_living_product_detail/.../widget/tab_bar.dart | ${tab.tabType.name}_tab | dynamic per ProductDetailTab |
| Compare product card | healthy_living_shared/.../widgets/compare_product/compare_product_card.dart | TestKeys.compareProductCard | static |
| Forgot success view | healthy_living_auth/.../widgets/check_your_email_content_screen.dart | TestKeys.forgotSuccessView | static |
| Ingredient pref cats | healthy_living_account/.../widgets/ingredient_preference_category_widget.dart | TestKeys.ingredientPrefCats | static |
| Ingredient prefer list | healthy_living_account/.../screens/ingredient_preference_list_content_screen.dart | TestKeys.ingredientPreferList | static |
| Rename list button | healthy_living_shared/.../widgets/list/my_list_options_widget.dart | TestKeys.renameListButton | static |
| Brand card | healthy_living_find/.../screens/brand_list/brand_list_content_screen.dart | brand_card_${brand.id} | dynamic per brand |
| Search filter button | healthy_living_find/.../widgets/category_product_widget.dart | TestKeys.filterButton | static |
| List item card | healthy_living_shared/.../screens/my_list_detail/my_list_detail_content_screen.dart | list_item_card_$index | dynamic per list item |

**Total keys wired in SESSION GAP-B: 32** (including 5 dynamic search tabs, 3 dynamic history filters, 3 dynamic PD tabs)
**Source files modified: 20**
**Test files updated with KEY INVENTORY: 8**

### SESSION GAP-B Source Files Modified

1. `packages/healthy_living_packages/healthy_living_find/lib/src/ui/widgets/search_product_content_widget.dart`
2. `packages/healthy_living_packages/healthy_living_find/lib/src/ui/widgets/search_tabs_widget.dart`
3. `packages/healthy_living_packages/healthy_living_find/lib/src/ui/widgets/browse_product_category_content_screen.dart`
4. `packages/healthy_living_packages/healthy_living_find/lib/src/ui/widgets/browse_product_by_category_content_screen.dart`
5. `packages/healthy_living_packages/healthy_living_find/lib/src/ui/widgets/gradient_grid_section.dart`
6. `packages/healthy_living_packages/healthy_living_find/lib/src/ui/widgets/category_product_widget.dart`
7. `packages/healthy_living_packages/healthy_living_find/lib/src/ui/screens/brand_list/brand_list_content_screen.dart`
8. `packages/healthy_living_packages/healthy_living_my_items/lib/src/ui/widgets/history_sort_by_bottom_sheet_widget.dart`
9. `packages/healthy_living_packages/healthy_living_my_items/lib/src/ui/screens/history_tab_content_screen.dart`
10. `packages/healthy_living_packages/healthy_living_my_items/lib/src/ui/widgets/no_my_list_widget.dart`
11. `packages/healthy_living_packages/healthy_living_my_items/lib/src/ui/widgets/my_items_lists_widget.dart`
12. `packages/healthy_living_packages/healthy_living_my_items/lib/src/ui/screens/list_tab_screen.dart`
13. `packages/healthy_living_packages/healthy_living_product_detail/lib/src/ui/widget/tab_bar.dart`
14. `packages/healthy_living_packages/healthy_living_shared/lib/src/ui/widgets/compare_product/compare_product_card.dart`
15. `packages/healthy_living_packages/healthy_living_shared/lib/src/ui/widgets/product_list_item.dart`
16. `packages/healthy_living_packages/healthy_living_shared/lib/src/ui/widgets/list/my_list_options_widget.dart`
17. `packages/healthy_living_packages/healthy_living_shared/lib/src/ui/screens/my_list_detail/my_list_detail_content_screen.dart`
18. `packages/healthy_living_packages/healthy_living_auth/lib/src/ui/widgets/check_your_email_content_screen.dart`
19. `packages/healthy_living_packages/healthy_living_account/lib/src/ui/widgets/ingredient_preference_category_widget.dart`
20. `packages/healthy_living_packages/healthy_living_account/lib/src/ui/screens/ingredient_preference_list_content_screen.dart`

### SESSION GAP-B Test Files Updated (KEY INVENTORY blocks)

1. `packages/healthy_living_packages/healthy_living_find/test/widgets/browse_screen_test.dart`
2. `packages/healthy_living_packages/healthy_living_find/test/widgets/search_screen_test.dart`
3. `packages/healthy_living_packages/healthy_living_find/test/widgets/brand_list_screen_test.dart`
4. `packages/healthy_living_packages/healthy_living_my_items/test/widgets/my_items_screen_test.dart`
5. `packages/healthy_living_packages/healthy_living_my_items/test/widgets/history_screen_test.dart`
6. `packages/healthy_living_packages/healthy_living_product_detail/test/widgets/product_detail_screen_test.dart`
7. `packages/healthy_living_packages/healthy_living_auth/test/widgets/auth_screens_test.dart`
8. `packages/healthy_living_packages/healthy_living_account/test/widgets/ingredient_preference_screen_test.dart`

### Keys Marked CANNOT WIRE

| TestKey | Reason |
|---------|--------|
| ewgVerifiedFilter | No dedicated UI toggle/checkbox widget exists. EWG Verified status is passed as a navigation parameter (`isEWGVerified: true`), not an interactive filter control in the search/browse UI. |
| errorBanner | No banner-style error widget exists in the codebase. Persistent errors use `DSErrorView` (with `offlineErrorView` + `retryButton` keys, wired in SESSION GAP-A). Transient errors use `DSToast`. |

## Final Coverage Summary

| Metric | Count |
|--------|-------|
| TestKeys defined in test_keys.dart | 98 |
| Keys wired to source widgets | **96** |
| Keys marked CANNOT WIRE | **2** (ewgVerifiedFilter, errorBanner) |
| Coverage | **98%** (96/98) |

### Wiring Breakdown by Session

| Session | Keys Added | Running Total |
|---------|-----------|--------------|
| Pre-existing (dev team) | ~35 | 35 |
| Session 01-GAP | 13 | 48 |
| Session 05 | 12 | 60 |
| SESSION GAP-A | 2 (offlineErrorView, retryButton) | 62 |
| SESSION GAP-B | 32 | **96** (+ 2 CANNOT WIRE) |
