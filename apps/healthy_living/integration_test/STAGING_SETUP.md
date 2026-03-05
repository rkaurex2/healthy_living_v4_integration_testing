# Integration Test Staging Setup

## Staging API Configuration

The app loads its API base URL from a `.env` file selected by the `ENVIRONMENT` dart-define key.

- **Dart define:** `--dart-define=ENVIRONMENT=stage`
- **Env file loaded:** `assets/env/stage.env`
- **Key variable:** `API_URL` (read by `EnvConfig().apiURL`)

The staging `.env` file is not committed to the repository. It must be available in the CI environment or injected as a build secret.

## Required Test Accounts

All credentials are injected via `--dart-define` at build time — never hardcoded.

| Account Type | Dart Define Key | Purpose |
|---|---|---|
| Standard | `TEST_ACCOUNT_EMAIL` / `TEST_ACCOUNT_PASSWORD` | Basic user flows (search, browse, lists, history) |
| Premium | `TEST_ACCOUNT_PREMIUM_EMAIL` / `TEST_ACCOUNT_PREMIUM_PASSWORD` | Premium-gated features (ingredient preferences, advanced filters) |

### Account Creation

- Accounts are created manually by the QA team in the staging environment
- Standard account: a registered user with no premium subscription
- Premium account: a registered user with an active RevenueCat sandbox entitlement
- Disposable accounts for delete-account tests are created programmatically (see `app_helper.dart`)

## Required Pre-Seeded Data

The following data must exist in the staging environment for tests to pass:

### Products
- At least 1 personal care product searchable by name or UPC
- At least 1 food product searchable by name or UPC
- At least 2 cleaner products (for comparison tests)
- At least 1 product with ingredient preference indicators

### Lists
- The standard test account must have at least 1 existing list with products
- A second list for multi-list tests

### Ingredient Preferences
- The premium test account should have the ingredient preference FTUX not yet completed (or it must be resettable)

### Browse Categories
- Personal care, cleaners, and food categories must be populated with at least 1 category group each

## RevenueCat Sandbox

- RevenueCat SDK keys are loaded from `ANDROID_REVENUECAT_API_KEY` / `IOS_REVENUECAT_API_KEY` in the `.env` file
- Sandbox mode is enabled by default in non-production builds
- The premium test account must have an active sandbox entitlement
- Entitlements are managed in the RevenueCat dashboard under the staging project

## Verifying Staging Health

Before running integration tests, verify:

1. **API is reachable:** `curl -s -o /dev/null -w "%{http_code}" <STAGING_API_URL>/health` returns 200
2. **Auth works:** The standard test account can sign in via the API
3. **Data exists:** A search for the test product name returns results
4. **RevenueCat responds:** The premium test account's entitlements are queryable

## CI Environment Variables

The following must be set in GitHub Actions secrets:

| Secret | Description |
|---|---|
| `INTEGRATION_TESTS_APPROVED` | Set to `true` to enable integration tests |
| `TEST_ACCOUNT_EMAIL` | Standard test account email |
| `TEST_ACCOUNT_PASSWORD` | Standard test account password |
| `TEST_ACCOUNT_PREMIUM_EMAIL` | Premium test account email |
| `TEST_ACCOUNT_PREMIUM_PASSWORD` | Premium test account password |

## Running Integration Tests Locally

```bash
cd apps/healthy_living
flutter test integration_test/ \
  --dart-define=ENVIRONMENT=stage \
  --dart-define=INTEGRATION_TESTS_APPROVED=true \
  --dart-define=TEST_ACCOUNT_EMAIL=<email> \
  --dart-define=TEST_ACCOUNT_PASSWORD=<password> \
  --dart-define=TEST_ACCOUNT_PREMIUM_EMAIL=<email> \
  --dart-define=TEST_ACCOUNT_PREMIUM_PASSWORD=<password>
```

## Activating Integration Tests

Integration tests are **gated by default** — they skip (not fail) until explicitly enabled. This prevents CI failures before the staging environment is confirmed.

### Step-by-step activation

1. **Confirm staging is healthy:**
   ```bash
   curl -s -o /dev/null -w "%{http_code}" <STAGING_API_URL>/health
   # Must return 200
   ```

2. **Create test accounts** in the staging environment (standard + premium).

3. **Seed required data** per the "Required Pre-Seeded Data" section above.

4. **Configure RevenueCat sandbox** entitlement for the premium test account.

5. **Set GitHub Secrets** in the repository:
   ```
   INTEGRATION_TESTS_APPROVED = true
   TEST_ACCOUNT_EMAIL = <standard email>
   TEST_ACCOUNT_PASSWORD = <standard password>
   TEST_ACCOUNT_PREMIUM_EMAIL = <premium email>
   TEST_ACCOUNT_PREMIUM_PASSWORD = <premium password>
   ```

6. **Set GitHub Variables:**
   ```
   INTEGRATION_TESTS_APPROVED = true
   ```
   (This is a repository variable, not a secret, so the CI `if:` condition can read it.)

7. **Open a PR** — the integration test jobs will now run alongside the existing build-validations job.

### What happens without activation

- All integration test files call `IntegrationGate.skipIfNotApproved()` at the top of `main()`
- When `INTEGRATION_TESTS_APPROVED` is not `true`, every `testWidgets` is individually marked as skipped
- The CI integration-tests job has an `if:` guard that prevents it from even starting
- Unit tests and build validations continue to run normally regardless of this gate

### Running specific test suites

```bash
# Smoke tests only (fastest feedback loop)
flutter test integration_test/ --tags=smoke \
  --dart-define=ENVIRONMENT=stage \
  --dart-define=INTEGRATION_TESTS_APPROVED=true \
  --dart-define=TEST_ACCOUNT_EMAIL=<email> \
  --dart-define=TEST_ACCOUNT_PASSWORD=<password>

# Full regression
flutter test integration_test/ --tags=full \
  --dart-define=ENVIRONMENT=stage \
  --dart-define=INTEGRATION_TESTS_APPROVED=true \
  --dart-define=TEST_ACCOUNT_EMAIL=<email> \
  --dart-define=TEST_ACCOUNT_PASSWORD=<password> \
  --dart-define=TEST_ACCOUNT_PREMIUM_EMAIL=<email> \
  --dart-define=TEST_ACCOUNT_PREMIUM_PASSWORD=<password>
```

## Reseeding Staging Data

If test data drifts or gets deleted, use the reseed script:

```bash
# Load credentials from .env.test and re-seed
./scripts/reseed_staging.sh --env .env.test

# Check staging health only (no data changes)
./scripts/reseed_staging.sh --env .env.test --check-only
```

The script will:
1. Verify the staging API is reachable
2. Authenticate both test accounts
3. Create missing test lists (`My Test List`, `My Second List`)
4. Verify test products are searchable by UPC
5. Verify the premium account's RevenueCat entitlement

Any items that cannot be auto-created will print a warning with manual steps.

## Contact

For staging environment issues, contact the QA team or the backend engineering lead.
