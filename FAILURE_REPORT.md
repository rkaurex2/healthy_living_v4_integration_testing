# Exhaustive Failure Report — 39 Remaining Test Failures

**Date:** March 4, 2026
**Verified from:** `flutter test` run across all packages
**Total:** 1,415 passing, **39 failing**, 5 skipped (97.3% pass rate)

---

## Summary by Root Cause

| # | Root Cause | Failure Type | Tests | Package | Fixable Without Source Changes? |
|---|-----------|--------------|-------|---------|-------------------------------|
| 1 | Missing `search_request_model.g.dart` | Compile-time | 13 | find | No — requires `build_runner` |
| 2 | HomeScreen RenderFlex overflow | Runtime (assertion) | 5 | home | No — requires source layout fix |
| 3 | HomeScreen accessibility violations | Runtime (assertion) | 4 | home | No — requires source widget fix |
| 4 | Missing `healthy_living_auth_micro_package.module.dart` | Compile-time | 5 | auth | No — requires `build_runner` |
| 5 | MyAccountScreen accessibility violations | Runtime (assertion) | 2 | account | No — requires source widget fix |
| 6 | SubscriptionDetailsBloc RevenueCat platform channel | Runtime (platform error) | 2 | account | No — requires RevenueCat SDK test config |
| 7 | MyItemsScreen / HistoryTabScreen accessibility violations | Runtime (assertion) | 4 | my_items | No — requires source widget fix |
| 8 | Missing `.g.dart` files (scan models) + SDK constraint | Compile-time | 4 | scan | No — requires SDK bump + `build_runner` |
| | **TOTAL** | | **39** | | |

---

## Category 1 — `healthy_living_find` (13 failures)

### Root Cause
Missing generated file: `lib/src/domain/models/search_request_model.g.dart`

The `SearchRequestModel` uses `json_serializable` with a `part 'search_request_model.g.dart'` directive. The `.g.dart` file was never generated (requires `build_runner`). Every test file that transitively imports `SearchRequestModel` fails at compile time.

### Error Message
```
lib/src/domain/models/search_request_model.dart:5:6: Error: Error when reading
'lib/src/domain/models/search_request_model.g.dart': No such file or directory
```

### Failing Test Files (13 unique files)

| # | Test File | Layer | Defined Tests | Status |
|---|-----------|-------|---------------|--------|
| 1 | `test/blocs/all_tab_bloc_test.dart` | BLoC | 10 | COMPILE FAIL |
| 2 | `test/blocs/brand_list_bloc_test.dart` | BLoC | 10 | COMPILE FAIL |
| 3 | `test/blocs/browse_bloc_test.dart` | BLoC | 14 | COMPILE FAIL |
| 4 | `test/blocs/category_list_bloc_test.dart` | BLoC | 10 | COMPILE FAIL |
| 5 | `test/blocs/ingredient_list_bloc_test.dart` | BLoC | 10 | COMPILE FAIL |
| 6 | `test/blocs/products_search_bloc_test.dart` | BLoC | 19 | COMPILE FAIL |
| 7 | `test/blocs/search_my_lists_bloc_test.dart` | BLoC | 10 | COMPILE FAIL |
| 8 | `test/repositories/universal_search_repository_test.dart` | Repository | 4 | COMPILE FAIL |
| 9 | `test/widgets/brand_list_screen_test.dart` | Widget | 8 | COMPILE FAIL |
| 10 | `test/widgets/browse_offline_test.dart` | Widget | ~3 | COMPILE FAIL |
| 11 | `test/widgets/browse_screen_test.dart` | Widget | 8 | COMPILE FAIL |
| 12 | `test/widgets/search_offline_test.dart` | Widget | ~3 | COMPILE FAIL |
| 13 | `test/widgets/search_screen_test.dart` | Widget | 8 | COMPILE FAIL |

**Passing file (not affected):** `test/blocs/universal_search_bloc_test.dart` (25 tests) — does not import `SearchRequestModel`

### Fix Required
```bash
cd packages/healthy_living_packages/healthy_living_find
dart run build_runner build --delete-conflicting-outputs
```
This requires fixing the upstream `build_runner` cross-package asset resolution issue first. Alternatively, manually create a stub `.g.dart` file with the `fromJson`/`toJson` implementations.

---

## Category 2 — `healthy_living_home` (9 failures)

### Root Cause
All 9 failures are in **one file**: `test/widgets/home_screen_test.dart`. These are legitimate source-code bugs exposed by the tests — the tests are correct.

### Failing Tests — RenderFlex Overflow (5 tests)

These tests render `HomeScreen` at specific device viewport sizes. The `Column`/`Row` layout overflows on smaller screens.

| # | Test Name | Device | Error |
|---|-----------|--------|-------|
| 1 | `[HomeScreen] renders no crash on iPhone SE` | 375×667 | `A RenderFlex overflowed by 82 pixels on the bottom.` |
| 2 | `[HomeScreen] renders no crash on iPhone 16` | 393×852 | `A RenderFlex overflowed by 82 pixels on the bottom.` |
| 3 | `[HomeScreen] renders no crash on iPhone 16 Max` | 430×932 | `A RenderFlex overflowed by 63 pixels on the bottom.` |
| 4 | `[HomeScreen] renders no crash on Android S` | 360×800 | `A RenderFlex overflowed by 82 pixels on the bottom.` |
| 5 | `[HomeScreen] renders no crash on Android L` | 412×915 | `A RenderFlex overflowed by 63 pixels on the bottom.` |

**Passing viewport tests:** iPad 10th (820×1180), Pixel Tablet (1280×800) — larger screens have enough vertical space.

### Failing Tests — Accessibility Guideline Violations (3 tests)

| # | Test Name | Guideline | Error |
|---|-----------|-----------|-------|
| 6 | `[HomeScreen] accessibility meets androidTapTargetGuideline` | Android (≥48×48dp) | Interactive elements below minimum tap-target size |
| 7 | `[HomeScreen] accessibility meets iOSTapTargetGuideline` | iOS (≥44×44pt) | Interactive elements below minimum tap-target size |
| 8 | `[HomeScreen] accessibility meets labeledTapTargetGuideline` | Labeled (≥48×48dp) | Interactive elements missing accessible labels or below size |

### Failing Tests — Text Scale Overflow (1 test)

| # | Test Name | Error |
|---|-----------|-------|
| 9 | `[HomeScreen] accessibility renders without crash at 2.0x text scale` | `A RenderFlex overflowed by 263 pixels on the bottom.` |

### Fix Required
- **Overflow:** Wrap HomeScreen content in `SingleChildScrollView` or use `Flexible`/`Expanded` widgets to prevent overflow on smaller viewports
- **Accessibility:** Increase all interactive element sizes to ≥48×48dp (Android) / ≥44×44pt (iOS); ensure all tappable elements have semantic labels
- **Text scale:** Ensure layout accommodates `MediaQuery.textScaleFactor` up to 2.0x

---

## Category 3 — `healthy_living_auth` (5 failures)

### Root Cause
Missing generated file: `lib/src/core/di/healthy_living_auth_micro_package.module.dart`

The barrel file `lib/healthy_living_auth.dart` (line 18) exports this missing file:
```dart
export 'src/core/di/healthy_living_auth_micro_package.module.dart';
```

Any test file that transitively imports the barrel file `healthy_living_auth.dart` fails at compile time. Test files that import specific source files directly (e.g., `import 'package:healthy_living_auth/src/ui/blocs/...'`) are NOT affected — this is why `check_email_bloc_test.dart`, `create_new_password_bloc_test.dart`, and `ft_ux_bloc_test.dart` pass.

### Error Message
```
lib/healthy_living_auth.dart:18:1: Error: Error when reading
'lib/src/core/di/healthy_living_auth_micro_package.module.dart': No such file or directory
```

### Failing Test Files (5 files)

| # | Test File | Layer | Defined Tests | Why It Imports the Barrel |
|---|-----------|-------|---------------|--------------------------|
| 1 | `test/repositories/auth_repository_test.dart` | Repository | 15 | Imports `healthy_living_auth.dart` for `AuthRepository` |
| 2 | `test/blocs/sign_in_bloc_test.dart` | BLoC | 14 | Imports models transitively via barrel |
| 3 | `test/blocs/sign_up_bloc_test.dart` | BLoC | 23 | Imports models transitively via barrel |
| 4 | `test/blocs/auth_social_login_bloc_test.dart` | BLoC | 17 | Imports `AuthSocialLoginBloc` via barrel |
| 5 | `test/widgets/auth_screens_test.dart` | Widget | 8 | Imports screen widgets via barrel |

**Passing test files (NOT affected — use direct imports):**
- `test/blocs/check_email_bloc_test.dart` (6/6 ✅)
- `test/blocs/create_new_password_bloc_test.dart` (17/17 ✅)
- `test/blocs/ft_ux_bloc_test.dart` (6/6 ✅)
- `test/blocs/forgot_password_bloc_test.dart` (14/14 ✅)

### Fix Required
```bash
cd packages/healthy_living_packages/healthy_living_auth
dart run build_runner build --delete-conflicting-outputs
```
This generates the `injectable` module file. Alternatively, could refactor test imports to use direct paths instead of the barrel file, bypassing the missing export.

---

## Category 4 — `healthy_living_account` (4 failures)

### Subcategory 4a: SubscriptionDetailsBloc — RevenueCat Platform Channel (2 failures)

**File:** `test/blocs/subscription_details_bloc_test.dart`

The `SubscriptionDetailsBloc` calls `Purchases.getCustomerInfo()` from the RevenueCat SDK. In the test environment, the RevenueCat native platform channel is not initialized, causing a `PlatformException`. The `TestWidgetsFlutterBinding.ensureInitialized()` fix (GAP-E) resolved 8 of 10 tests, but these 2 tests specifically test the "fetch customer info" path which actually invokes the native SDK.

| # | Test Name | Error |
|---|-----------|-------|
| 1 | `SubscriptionDetailsFetched emits [LoadInProgress, LoadFailure] when RevenueCat is not configured` | `PlatformException` / `MissingPluginException` on `Purchases.getCustomerInfo()` |
| 2 | `SubscriptionDetailsFetched LoadFailure state contains the thrown exception` | Same — cascading from test 1 |

**Fix required:** Either mock the RevenueCat `Purchases` platform channel in test setup, or restructure the BLoC to accept an injectable `PurchaseService` wrapper that can be mocked.

### Subcategory 4b: MyAccountScreen — Accessibility Tap-Target (2 failures)

**File:** `test/widgets/account_screen_test.dart`

| # | Test Name | Guideline | Error |
|---|-----------|-----------|-------|
| 3 | `[MyAccountScreen] accessibility meets androidTapTargetGuideline` | Android (≥48×48dp) | Interactive elements below minimum size |
| 4 | `[MyAccountScreen] accessibility meets iOSTapTargetGuideline` | iOS (≥44×44pt) | Interactive elements below minimum size |

**Fix required:** Increase interactive element sizes in `MyAccountScreen` source widget to meet platform accessibility guidelines.

---

## Category 5 — `healthy_living_my_items` (4 failures)

### Root Cause
Accessibility tap-target size violations across 2 widget test files. The "Sign in" and "Create an Account" buttons in `MyListSignInWidget` are 42px tall; Android/iOS guidelines require ≥48px.

### Failing Tests

**File:** `test/widgets/my_items_screen_test.dart` (2 failures)

| # | Test Name | Guideline |
|---|-----------|-----------|
| 1 | `[MyItemsScreen] accessibility meets androidTapTargetGuideline` | Android (≥48×48dp) |
| 2 | `[MyItemsScreen] accessibility meets iOSTapTargetGuideline` | iOS (≥44×44pt) |

**File:** `test/widgets/history_screen_test.dart` (2 failures)

| # | Test Name | Guideline |
|---|-----------|-----------|
| 3 | `[HistoryTabScreen] accessibility meets androidTapTargetGuideline` | Android (≥48×48dp) |
| 4 | `[HistoryTabScreen] accessibility meets iOSTapTargetGuideline` | iOS (≥44×44pt) |

### Fix Required
Increase the height of "Sign in" and "Create an Account" buttons in `MyListSignInWidget` from 42px to ≥48px. This widget is shared between both screens.

---

## Category 6 — `healthy_living_scan` (4 failures)

### Root Cause
Missing `.g.dart` files for multiple `json_serializable` models. The `json_serializable` code generator requires Dart SDK `^3.8.0` (uses null-aware-elements syntax `?instance.name`), but the monorepo constraint is `>=3.7.2 <4.0.0`.

### Error Message
```
lib/src/domain/models/submit_product/submit_product_request_model.dart:
Error: Method not found: '_$SubmitProductRequestModelFromJson'.
```

### Missing Generated Files
- `submit_product_request_model.g.dart`
- `cleaner_details_attribute_request_model.g.dart`
- `crowd_sourced_product_submission_request_model.g.dart`
- `food_details_attribute_request_model.g.dart`
- `personal_care_details_attribute_request_model.g.dart`
- `product_image_attribute_request_model.g.dart`
- `sunscreen_details_attribute_request_model.g.dart`

### Failing Test Files (4 files)

| # | Test File | Layer | Defined Tests |
|---|-----------|-------|---------------|
| 1 | `test/blocs/photo_capture_bloc_test.dart` | BLoC | 28 |
| 2 | `test/blocs/submit_product_bloc_test.dart` | BLoC | 22 |
| 3 | `test/blocs/scan_bloc_test.dart` | BLoC | 15 |
| 4 | `test/repositories/upload_picture_repository_test.dart` | Repository | 10 |

### Fix Required
1. Bump SDK constraint in `pubspec.yaml` files: `sdk: ">=3.8.0 <4.0.0"`
2. Run `dart run build_runner build --delete-conflicting-outputs` in the scan package
3. This is a coordinated change across the monorepo — all packages share the SDK constraint

---

## Resolution Priority Matrix

| Priority | Category | Tests | Effort | Impact |
|----------|----------|-------|--------|--------|
| 🔴 High | `build_runner` fix (find + auth + scan) | 22 | Medium (infra) | Unblocks 22 compile failures, ~200 test definitions |
| 🟡 Medium | HomeScreen layout overflow | 5+1 | Low-Medium (UI) | Fixes real user-facing overflow bugs |
| 🟡 Medium | Accessibility tap-target (home + account + my_items) | 4+2+4 = 10 | Low (CSS/layout) | Improves accessibility compliance |
| 🟠 Lower | RevenueCat test mocking | 2 | Medium (architecture) | Requires either platform channel mocking or PurchaseService wrapper |
| 🔵 Deferred | SDK bump for scan | 4 | High (coordination) | Requires monorepo-wide Dart SDK bump |

---

## Test-Only vs Source-Code Fixes

| Fix Type | Tests Affected | Files to Change |
|----------|---------------|-----------------|
| **Tooling only** (run `build_runner`) | 18 (find 13 + auth 5) | 0 source files — just run code generation |
| **SDK bump + tooling** | 4 (scan) | `pubspec.yaml` SDK constraint across monorepo |
| **Source code — layout** | 6 (home overflow) | `HomeScreen` widget — wrap in `SingleChildScrollView` or use `Flexible` |
| **Source code — accessibility** | 10 (home 4 + account 2 + my_items 4) | Increase tap-target sizes in `HomeScreen`, `MyAccountScreen`, `MyListSignInWidget` |
| **Source code — architecture** | 2 (account RevenueCat) | Either mock RevenueCat platform channel or wrap in injectable service |
