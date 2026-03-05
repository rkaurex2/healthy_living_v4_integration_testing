# BrowserStack Integration Readiness Assessment

**Date:** March 4, 2026
**Status:** Test code ready; environment configuration pending

---

## Summary

All integration test code and the Android BrowserStack pipeline are fully ready. All 13 flow files (110 `testWidgets`) are written, gated, resilient (`@Retry(2)`), and properly structured with the Page Object Model pattern. The Android workflow correctly builds both APKs and uses BrowserStack's Espresso API. One iOS workflow issue was identified (missing XCUITest test suite upload), and all environment secrets/variables must be provisioned before activation.

---

## ✅ What's Ready — Test Code & Infrastructure

### Integration Test Code

| Component | Count | Status |
|-----------|-------|--------|
| End-to-end flow test files | 13 | ✅ Written, gated |
| Page Object files | 16 | ✅ POM pattern |
| Helper files (gate, data, network, quarantine, app) | 5 | ✅ Complete |
| `IntegrationGate.skipIfNotApproved()` | All 13 flows | ✅ Safe skip |
| `@Retry(2)` resilience annotation | All 13 flows | ✅ Applied |
| `@Tags(['smoke'])` / `@Tags(['full'])` | All test groups | ✅ Categorized |
| Test data via `--dart-define` (no hardcoded creds) | `test_data.dart` | ✅ Secure |
| Quarantine wrapper for flaky tests | `quarantine.dart` | ✅ Ready |
| `BasePage` with `waitFor`, `tap`, `enterText`, `scrollUntilVisible` | `base_page.dart` | ✅ Consistent |

### CI Workflow Files

| Workflow | File | Schedule |
|----------|------|----------|
| BrowserStack | `.github/workflows/browserstack.yml` | Nightly 2am UTC + manual dispatch |
| Firebase Test Lab | `.github/workflows/firebase_test_lab.yml` | Nightly 3am UTC + manual dispatch |

### BrowserStack Device Matrix

| Platform | API | Devices |
|----------|-----|---------|
| Android | Espresso (`espresso/v2/build`) | Galaxy S23-13.0, Pixel 7-13.0, Galaxy S21-12.0 |
| iOS | XCUITest (`xcuitest/v2/build`) | iPhone 15-17, iPhone 14-16 |

### Workflow Gating & Security

- Job-level `if: vars.INTEGRATION_TESTS_APPROVED == 'true'` — won't even start until activated
- Build-time `--dart-define=INTEGRATION_TESTS_APPROVED=true` passed through
- Test credentials injected via `--dart-define` from GitHub Secrets — never hardcoded
- Stage `.env` file created dynamically from GitHub Variables/Secrets at build time
- Artifact capture for results (`upload-artifact@v4` with 7-day retention)

---

## ⚠️ Workflow Issue Found — iOS Test Suite Missing

While reviewing the BrowserStack workflow, a gap was identified in the **iOS job**.

### Android (Correct)

The Android job builds both the app APK *and* the instrumentation test APK, then uploads both to BrowserStack's Espresso API:

```yaml
# Uploads both app and test suite
"app": "$APP_URL",
"testSuite": "$TEST_URL"   # ← Both provided correctly
```

### iOS (Incomplete)

The iOS job builds and uploads only the app `.zip`, but does **not** build or upload a separate XCUITest test runner bundle. The `xcuitest/v2/build` API call is missing the `testSuite` parameter:

```yaml
# Only uploads the app — test suite is MISSING
"app": "$APP_URL"
#                          ← testSuite is NOT provided
```

BrowserStack's XCUITest API requires both an app and a test suite. Without the test runner, iOS tests won't execute on BrowserStack.

### Recommended Fix

Either:
1. **Build the XCUITest test runner** from the `ios/` directory and upload it as a test suite
2. **Switch to BrowserStack's Flutter-specific testing API** (if available for iOS)

This is a workflow configuration fix, not a test code issue.

---

## ❌ What's NOT Ready — Prerequisites Before Activation

These are all **environment/configuration** items, not code issues.

### BrowserStack Secrets

| # | Secret / Variable | Type | Status |
|---|-------------------|------|--------|
| 1 | `BROWSERSTACK_USERNAME` | GitHub Secret | ❌ Not set |
| 2 | `BROWSERSTACK_ACCESS_KEY` | GitHub Secret | ❌ Not set |

### Integration Test Gate

| # | Secret / Variable | Type | Status |
|---|-------------------|------|--------|
| 3 | `INTEGRATION_TESTS_APPROVED` | GitHub Variable | ❌ Not set |

### Test Account Credentials

| # | Secret / Variable | Type | Status |
|---|-------------------|------|--------|
| 4 | `TEST_ACCOUNT_EMAIL` | GitHub Secret | ❌ Not set |
| 5 | `TEST_ACCOUNT_PASSWORD` | GitHub Secret | ❌ Not set |
| 6 | `TEST_ACCOUNT_PREMIUM_EMAIL` | GitHub Secret | ❌ Not set |
| 7 | `TEST_ACCOUNT_PREMIUM_PASSWORD` | GitHub Secret | ❌ Not set |

### Stage Environment Variables

| # | Secret / Variable | Type | Status |
|---|-------------------|------|--------|
| 8 | `ENV_NAME` | GitHub Variable | ❌ Not set |
| 9 | `API_URL` | GitHub Variable | ❌ Not set |
| 10 | `ANDROID_GOOGLE_CLIENT_ID` | GitHub Variable | ❌ Not set |
| 11 | `IOS_GOOGLE_CLIENT_ID` | GitHub Variable | ❌ Not set |
| 12 | `SERVER_GOOGLE_CLIENT_ID` | GitHub Variable | ❌ Not set |
| 13 | `ANDROID_REVENUECAT_API_KEY` | GitHub Secret | ❌ Not set |
| 14 | `IOS_REVENUECAT_API_KEY` | GitHub Secret | ❌ Not set |

### Staging Infrastructure

| # | Prerequisite | Type | Status |
|---|-------------|------|--------|
| 15 | Staging API healthy (returns 200) | Infrastructure | ❌ Not confirmed |
| 16 | Test accounts created (standard + premium) | Staging data | ❌ Not confirmed |
| 17 | Test products/lists/categories seeded | Staging data | ❌ Not confirmed |
| 18 | RevenueCat sandbox entitlement for premium account | RevenueCat | ❌ Not confirmed |

### Firebase Test Lab Additional Prerequisites

| # | Prerequisite | Type | Status |
|---|-------------|------|--------|
| 19 | `GOOGLE_SERVICE_ACCOUNT_DATA` | GitHub Secret | ❌ Not set |
| 20 | `FIREBASE_PROJECT_ID` | GitHub Variable | ❌ Not set |
| 21 | GCS results bucket (`${FIREBASE_PROJECT_ID}-test-results`) | Infrastructure | ❌ Not confirmed |

---

## Step-by-Step Activation Sequence

Full instructions are documented in `apps/healthy_living/integration_test/STAGING_SETUP.md`.

### 1. Confirm Staging API Health

```bash
curl -s -o /dev/null -w "%{http_code}" <STAGING_API_URL>/health
# Must return 200
```

### 2. Create Test Accounts

- **Standard account:** Registered user with no premium subscription
- **Premium account:** Registered user with an active RevenueCat sandbox entitlement

### 3. Seed Test Data

Run the reseed script or create manually:

```bash
./scripts/reseed_staging.sh --env .env.test
```

Required data:
- At least 1 personal care product searchable by name or UPC
- At least 1 food product searchable by name or UPC
- At least 2 cleaner products (for comparison tests)
- At least 1 product with ingredient preference indicators
- Standard test account must have at least 2 lists with products
- Personal care, cleaners, and food browse categories populated

### 4. Configure RevenueCat Sandbox

- Ensure sandbox mode is enabled for staging builds
- Premium test account must have an active sandbox entitlement
- Verify via RevenueCat dashboard under the staging project

### 5. Set All GitHub Secrets and Variables

Set the 14 secrets/variables listed in the prerequisites section above in the GitHub repository settings.

### 6. Fix the iOS Workflow

Add XCUITest runner build & upload step to `.github/workflows/browserstack.yml` (iOS job).

### 7. Activate the Gate

Set `INTEGRATION_TESTS_APPROVED=true` as a GitHub **Variable** (not secret — so the CI `if:` condition can read it).

### 8. Trigger a Manual Smoke Run

```
GitHub Actions → browserstack-integration → Run workflow → tag: smoke
```

Validate that:
- APK builds succeed
- Upload to BrowserStack succeeds
- Tests execute on all 3 Android devices
- Results artifact is captured

### 9. Enable Nightly Schedule

Once smoke passes, the nightly cron (`0 2 * * *`) will automatically run smoke tests. Use `workflow_dispatch` with `full` for regression runs.

---

## Integration Test Flow Coverage

| # | Flow File | User Flows Covered | Tag |
|---|-----------|-------------------|-----|
| 01 | `01_auth_flow_test.dart` | FTUX, Create Account, Sign In, Guest, Forgot Password, Delete Account | smoke + full |
| 02 | `02_search_flow_test.dart` | All Products, Products, Brands, Ingredients, Lists tabs, Filters, No Results, Three-dot Menu | smoke + full |
| 03 | `03_product_detail_flow_test.dart` | Product detail screens, scores, ingredients | smoke + full |
| 04 | `04_lists_flow_test.dart` | Create, rename, delete lists, add/remove products | smoke + full |
| 05 | `05_home_flow_test.dart` | Home screen, recently verified, your lists | smoke + full |
| 06 | `06_account_flow_test.dart` | Account settings, profile management | smoke + full |
| 07 | `07_history_flow_test.dart` | Scan/view history | smoke + full |
| 08 | `08_browse_flow_test.dart` | Browse categories, category detail | smoke + full |
| 09 | `09_brands_flow_test.dart` | Brand list, brand detail | full |
| 10 | `10_ingredients_detail_flow_test.dart` | Ingredient detail screens | full |
| 11 | `11_compare_flow_test.dart` | Product comparison | full |
| 12 | `12_ingredient_preference_flow_test.dart` | Ingredient preferences (premium) | full |
| 13 | `13_navigation_flow_test.dart` | Bottom nav, tab switching, deep links | smoke + full |

---

## Bottom Line

| Area | Status |
|------|--------|
| Integration test code (13 flows, 110 testWidgets) | ✅ Ready |
| Page Object Model (16 page objects + BasePage) | ✅ Ready |
| Test helpers (gate, data, quarantine, network, app) | ✅ Ready |
| BrowserStack Android workflow | ✅ Ready |
| BrowserStack iOS workflow | ⚠️ Missing testSuite upload — needs fix |
| Firebase Test Lab workflow | ✅ Ready (pending secrets) |
| GitHub Secrets / Variables (14 items) | ❌ Must be provisioned |
| Staging environment (API, accounts, data, RevenueCat) | ❌ Must be confirmed |

**No test code changes are needed.** The integration tests will continue to safely skip in CI until `INTEGRATION_TESTS_APPROVED=true` is set. Once the environment prerequisites are met and the iOS workflow is patched, BrowserStack integration is ready to activate.
