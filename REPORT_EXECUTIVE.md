# Executive Report — EWG Healthy Living v4 Test Automation

**Date:** March 4, 2026
**Prepared for:** EWG Product & Engineering Leadership
**Status:** Session GAP-E + Utility Tests + my_items L10n + Home/Product Detail Fix + Auth & Account Fix Complete

---

## Summary

The EWG Healthy Living v4 Flutter application now has comprehensive automated test coverage across all test layers — from unit tests through end-to-end integration flows. The test suite was built across 8 structured sessions plus 5 hardening sessions (GAP-A through GAP-E), producing **~1,465 test definitions** across **116 test files** covering authentication, search, product detail, lists, browsing, account management, and navigation. A verified full local test run confirms **1,415 passing, 39 failing, 5 skipped** (97.3% pass rate). GAP-D added 37 new test files; GAP-D+/E resolved Mockito null-safety, Flutter API, and assertion issues across 18 test files plus 1 new repository test, recovering/adding 134 tests. Post-GAP-E added 3 new pure-logic utility test files contributing 124 new passing tests. A my_items localization fix recovered 29 additional tests. A subsequent home and product detail fix recovered 20 more tests by fixing Freezed constructors, mock overrides, missing providers, Mockito null-safety, and localization/theme delegates — and exposed 9 legitimate source-code bugs (layout overflow, accessibility violations) in HomeScreen that were previously hidden behind compilation errors. An auth & account fix applied Mockito `@override` + `super.noSuchMethod()` to 5 auth BLoC test files and `DesignSystemLocalizations` delegates to 3 account widget test files, recovering 45 more tests. Remaining failures are isolated to pre-existing build tooling blockers (missing generated code, cross-package resolution, SDK version constraints) and source-level layout/accessibility violations.

## Key Metrics

| Metric | Value |
|--------|-------|
| Test files created/updated | 116 |
| Test definitions (source) | ~1,465 |
| Tests passing (verified local run) | 1,415 ✅ |
| Tests failing (known blockers) | 39 ❌ |
| Tests skipped | 5 ⏭ |
| Pass rate | 97.3% |
| New tests added (GAP-D) | +567 passing |
| Tests recovered/added (GAP-D+/E) | +134 fixed/new |
| New utility tests (post-GAP-E) | +124 new |
| my_items localization fix | +29 recovered |
| Home & product detail fix | +20 recovered |
| Auth & account fix | +45 recovered |
| Integration flow test files | 13 |
| Integration testWidgets | 110 |
| Page object files | 16 |
| TestKeys wired to source | 96/98 (98%) |
| CI workflow files | 3 |
| Policy/governance documents | 4 |
| Developer scripts | 3 |

## What Was Delivered

### Unit Tests (Layers 1–2)
- **39 BLoC test files** (~530 blocTests) covering all business logic controllers across every package
- **15 Repository test files** (162 tests) covering data access patterns
- **13 utility/extension test files** (~309 tests) covering string, int, double, list extensions, network error parsing, JSON converters, DateTimeUtils, HazardLevelExtension, HealthyLivingSharedUtils
- Known blocker: Some tests in auth/find/scan packages require mock generation or Dart SDK bump

### Widget Tests (Layers 3–4)
- **11 screen widget test files** (87 testWidgets) covering all major screens with device variants and accessibility checks
- **21 design system test files** (~280 testWidgets) covering reusable UI components (buttons, carousel, modal, error view, text, radio, divider, badges, spacing)
- **2 additional widget test files** (46 tests) for home screen components
- **4 network test files** (~71 tests) covering API client layer, error parsing, and exception types

### Integration Tests (Layer 5)
- **13 end-to-end flow files** covering all user-facing features
- **16 page object files** implementing the Page Object Model pattern for maintainability
- **5 helper files** for test infrastructure (gating, data, network, quarantine)
- All integration tests are **gated** — they skip safely until staging environment is confirmed

### CI/CD Infrastructure
- Integration test jobs added to the app pipeline (smoke + full regression matrix)
- **BrowserStack** workflow for cross-device testing (Android + iOS)
- **Firebase Test Lab** workflow for Android API level testing
- Per-package coverage thresholds replacing the blanket 60% threshold
- Mock generation step added to CI pipeline

### Governance
- **CODEOWNERS** file for automated PR review assignment
- **FLAKINESS_POLICY.md** defining quarantine process and severity levels
- **TESTING_OWNERSHIP.md** mapping all test areas to responsible owners

### Hardening Sessions (GAP-A through GAP-D)

**GAP-A — Error View Wiring:**
- Created `DSErrorView` reusable widget for persistent error states
- Added to 4 screens (Browse, Product Detail, History, My Account)
- Updated 7 offline widget tests to use new error views

**GAP-B — Widget Key Wiring:**
- Audited all 98 TestKeys; wired 96 to source widgets (98%)
- 2 keys marked CANNOT WIRE (no corresponding UI element exists)
- Modified 20 source files and 8 test files

**GAP-C — Turnkey Hardening:**
- **`TESTING_README.md`** — single "Start Here" guide for new developers
- **`.githooks/pre-commit`** — stale mock detection (warning-only, never blocks)
- **CI artifact capture** — screenshots/video on failure for all CI jobs
- **`scripts/reseed_staging.sh`** — staging data reseed automation
- **`scripts/run_tests.sh`** — local test runner with `.env.test` support
- **`.env.test.example`** — credential template for integration tests
- Fixed account package l10n generation (added `flutter: generate: true`)
- Ran full test suite locally; documented results in all reports

**GAP-D — Coverage Gap Closure:**
- **37 new test files** created across all packages, more than doubling passing test count (496 → 1,063)
- **17 new BLoC test files**: 4 Home (HomeBloc, JustVerifiedBloc, RecentActivityBloc, YourListBloc), 4 Shared (BrowseCategories, CategoryFilter, CreateList, Filter), 2 Product Detail (IngredientDetails, ProductCompare), 2 Account (IngredientPreference, SubscriptionDetails), 5 Auth (SignIn, SignUp, CheckEmail, CreateNewPassword, FtUx)
- **10 new utility/extension test files**: string, double, int, list extensions + SafeDoubleConverter, SafeMapIntConverter + network error parser + exception types
- **10 new design system test files**: DSErrorView, DSPremiumBadge, DSDivider, DSRadio, DSText, DSSpacing, DSButtonSecondary, DSButtonIcon, DSCarousel, DSModal
- **6 previously-failing tests fixed**: 4 my_items widget tests (wrong Freezed constructors), 1 home_offline test (MockBloc setup), 1 home pubspec (missing bloc_test dependency)

**GAP-D+ / GAP-E — Null-Safety, Assertion, & API Fixes (Verified):**
- **18 test files fixed + 1 new** (DeepLinkRepository) across all packages; **+134 tests recovered/added**
- **Mockito `@override` + `super.noSuchMethod()` pattern** applied to all manual mock classes using `anyNamed()` with non-nullable parameters: home_bloc_test, your_list_bloc_test, just_verified_bloc_test, recent_activity_bloc_test, create_list_bloc_test, filter_bloc_test, browse_categories_bloc_test
- **`provideDummy<T>()`** added for Freezed request/response model types in 5 additional files
- **ds_text_field_test.dart**: Fixed Flutter 3.29 API change (`TextFormField.obscureText` → `EditableText.obscureText`)
- **ds_button_icon_test.dart**: Fixed `pumpAndSettle` timeout (loading animation) → `pump()`
- **ds_premium_badge_test.dart**: Fixed text assertion casing (`'Premium'` → `'PREMIUM'` matching localization)
- **category_filter_bloc_test.dart**: Fixed BLoC seed/initial state emission expectation
- **string_extension_test.dart**: Fixed "upon" capitalization expectation (not in preposition set)
- **subscription_details_bloc_test.dart**: Added `TestWidgetsFlutterBinding.ensureInitialized()` for RevenueCat platform channel
- **New test**: `deep_link_repository_test.dart` (17 tests) — fills previously missing repository coverage gap
- **Verified result**: 1,197 passing, 83 failing, 5 skipped (93.5% pass rate)

**Post-GAP-E — Pure-Logic Utility Tests:**
- **3 new test files** covering testable static/pure-logic utility methods with no framework dependencies
- **`date_time_utils_test.dart`** (12 tests) — formatDateTimeString with ISO 8601 dates, null/empty/invalid inputs, various format patterns
- **`hazard_level_extension_test.dart`** (49 tests) — String→HazardLevel mapping: named strings, normalisation (underscores/hyphens/case), letter grades A-F, integer scores 1-10, double scores 1.0-10.0, HazardLevelMapper.fromScore
- **`healthy_living_shared_utils_test.dart`** (63 tests) — formatCountSimple, isPdfDoc, formatFoodScore, formatFoodScoreDecimal, getScoreAndDataAvailability, extractFirstPath, extractLastPath, isExternalLink, removeHtmlTags, removeNulls
- **Verified result**: 1,321 passing, 83 failing, 5 skipped (93.8% pass rate)

**my_items Localization Fix:**
- **4 widget test files fixed** — added missing `DesignSystemLocalizations.localizationsDelegates` to test `MaterialApp` setup
- **2 dark mode tests fixed** — replaced bare `ThemeData.dark()` with `dsTheme.copyWith(brightness: Brightness.dark)` to preserve theme extensions
- Files: `my_items_screen_test.dart`, `history_screen_test.dart`, `my_items_offline_test.dart`, `history_offline_test.dart`
- Root cause: `DSButtonPrimary` calls `DesignSystemLocalizations.of(context)!` for loading text; tests only registered my_items and shared localizations, not design_system localizations
- **+29 tests recovered** (33 → 4 remaining; 4 are legitimate accessibility tap-target violations in source)
- **Verified result**: 1,350 passing, 54 failing, 5 skipped (95.8% pass rate)

**Home & Product Detail Fix:**
- **2 home widget test files fixed** — replaced non-existent Freezed constructors (`homeInitial`→`homeStarted`, `justVerifiedInitial`→`justVerifiedListLoadInProgress`), added missing `isAuthenticated` override on MockHomeBloc, added `BrowseCategoriesBloc` mock provider, added `HomeScreen` import, added `DesignSystemLocalizations` delegate, fixed dark mode theme
- **2 product detail BLoC test files fixed** — applied Mockito `@override` + `super.noSuchMethod()` pattern on `MockProductDetailRepository` for `getIngredientInfo`, `cleanersProductCompare`, `foodProductCompare`, `cosmeticProductCompare` methods with non-nullable `request` parameters
- Files: `home_screen_test.dart`, `home_offline_test.dart`, `ingredient_details_bloc_test.dart`, `product_compare_bloc_test.dart`
- Product detail: **+13 tests recovered** (3 → 0 remaining) — now 100% passing
- Home: **+7 tests recovered**, 9 new failures exposed (were hidden behind compilation errors) — all are source-code issues: 5 RenderFlex overflow on mobile devices, 3 accessibility tap-target violations, 1 overflow at 2.0x text scale
- **Verified result**: 1,370 passing, 58 failing, 5 skipped (95.9% pass rate)

**Auth & Account Fix:**
- **5 auth BLoC test files fixed** — applied Mockito `@override` + `super.noSuchMethod()` pattern to MockAuthRepository, MockAuthAnalytics, MockSessionRepository, and MockKeyValueStorage across sign_in_bloc_test, sign_up_bloc_test, ft_ux_bloc_test, check_email_bloc_test, create_new_password_bloc_test
- **3 account widget test files fixed** — added `DesignSystemLocalizations.localizationsDelegates` and replaced `ThemeData.dark()` with `dsTheme.copyWith(brightness: Brightness.dark)` in account_screen_test, account_offline_test, ingredient_preference_screen_test
- Auth: **+29 tests recovered** (15→44 pass, 8→5 fail) — check_email (6/6), create_new_password (17/17), ft_ux (6/6) now fully passing; 5 remaining blocked on missing module.dart
- Account: **+16 tests recovered** (42→58 pass, 20→4 fail) — 4 remaining are accessibility tap-target source issues
- **Verified result**: 1,415 passing, 39 failing, 5 skipped (97.3% pass rate)

## Integration Test Activation

Integration tests are designed to be safe to merge immediately. They will **skip** (not fail) on every CI run until the staging environment is confirmed. To activate:

1. Confirm staging API is healthy
2. Create test accounts (standard + premium)
3. Seed required test data
4. Configure RevenueCat sandbox
5. Set `INTEGRATION_TESTS_APPROVED=true` in GitHub repository variables and secrets
6. Set test account credentials as GitHub secrets

Full instructions are in `apps/healthy_living/integration_test/STAGING_SETUP.md`.

## Remaining Items

### 39 Test Failures — Verified Breakdown by Root Cause

Every remaining failure is accounted for. None are unexplained. All are blocked on tooling, SDK versions, or pre-existing source issues — not on test logic. Numbers are from a verified `flutter test` run on March 4, 2026.

| # | Root Cause | Tests | Package(s) | Action Required |
|---|-----------|-------|-----------|-----------------|
| 1 | **Cross-package type failures (find)** — Missing `.g.dart` and `.freezed.dart` generated code for `SearchRequestModel` and related types | 13 | find | Run `build_runner` to generate missing code files |
| 2 | **Home widget source issues** — 5 RenderFlex overflow on smaller mobile devices (iPhone SE/16/16 Max, Android S/L), 3 accessibility tap-target guideline violations, 1 overflow at 2.0x text scale | 9 | home | Fix layout constraints in HomeScreen for smaller viewports; increase tap-target sizes to ≥48px |
| 3 | **Cross-package type failures (auth)** — Missing `healthy_living_auth_micro_package.module.dart` (injectable); 5 test files transitively import barrel file with missing generated code | 5 | auth | Run `build_runner` to generate `healthy_living_auth_micro_package.module.dart` |
| 4 | **Account issues** — 2 SubscriptionDetailsBloc RevenueCat platform channel not available in test env; 2 MyAccountScreen accessibility tap-target violations | 4 | account | Mock RevenueCat platform channel or wrap in injectable service; increase tap-target sizes to ≥48px |
| 5 | **Accessibility tap-target size (my_items)** — "Sign in" and "Create an Account" buttons in `MyListSignInWidget` are 42px tall; Android/iOS guidelines require ≥48px | 4 | my_items | Increase button height to ≥48px in source widget |
| 6 | **Scan SDK version** — Missing `.g.dart` files for `json_serializable` models; Dart SDK constraint mismatch | 4 | scan | Coordinated SDK bump to `^3.8.0` + run `build_runner` |
| | **TOTAL** | **39** | | |

### Per-Package Results (Verified)

| Package | Pass | Fail | Skip | Notes |
|---------|------|------|------|-------|
| design_system | 313 | 0 | 0 | ✅ 100% |
| network | 71 | 0 | 0 | ✅ 100% |
| storage | 15 | 0 | 0 | ✅ 100% |
| healthy_living_shared | 570 | 0 | 5 | ✅ 100% (5 skipped by design) |
| healthy_living_account | 58 | 4 | 0 | 2 RevenueCat + 2 accessibility tap-target |
| healthy_living_home | 113 | 9 | 0 | Source layout/accessibility issues |
| healthy_living_product_detail | 123 | 0 | 0 | ✅ 100% (Mockito fix) |
| healthy_living_auth | 44 | 5 | 0 | Missing .module.dart (5 files blocked) |
| healthy_living_find | 25 | 13 | 0 | Missing .g.dart / .freezed.dart |
| healthy_living_my_items | 83 | 4 | 0 | Accessibility tap-target size (source) |
| healthy_living_scan | 0 | 4 | 0 | Missing .g.dart + SDK constraint |
| **Total** | **1,415** | **39** | **5** | **97.3% pass rate** |

### Other Remaining Items

| Item | Status | Action Required |
|------|--------|-----------------|
| Mockito `any`/`anyNamed()` null-safety | ✅ RESOLVED | GAP-D+/E fixed all affected test files via `@override` + `super.noSuchMethod()` pattern |
| Integration test activation | Pending | Staging environment confirmation + client sign-off (see `STAGING_SETUP.md`) |
| BrowserStack setup | Pending | Add `BROWSERSTACK_USERNAME` and `BROWSERSTACK_ACCESS_KEY` secrets |
| Firebase Test Lab setup | Pending | Configure GCP project and test results bucket |
| Widget key wiring | ✅ Complete | 96/98 keys wired (98%). 2 marked CANNOT WIRE |

## Risk Assessment

| Risk | Mitigation |
|------|-----------|
| Integration tests fail on first activation | All flows use `@Retry(2)` annotation; quarantine process documented |
| Staging data drift | Test data constants centralized in `test_data.dart`; STAGING_SETUP.md documents requirements |
| Flaky tests blocking PRs | Quarantine job runs with `continue-on-error: true`; FLAKINESS_POLICY.md defines escalation |
| Cross-device failures | BrowserStack and Firebase Test Lab workflows test on real devices |
