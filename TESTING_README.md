# Testing — Start Here

> **EWG Healthy Living v4 — Flutter Test Suite**
> Last updated: March 4, 2026

This guide covers everything you need to run, write, and maintain tests in this monorepo.

---

## Quick Start

```bash
# 1. Install the git hooks (one-time setup)
git config core.hooksPath .githooks

# 2. Run all unit + widget tests across every package
melos test-coverage

# 3. Run tests for a single package
cd packages/healthy_living_packages/healthy_living_shared
flutter test

# 4. Run only BLoC tests (by tag)
melos test-coverage -- --tags=bloc

# 5. Run only widget tests (by tag)
melos test-coverage -- --tags=widget

# 6. Regenerate Mockito mocks after changing a repository or BLoC interface
melos build_mocks
```

### Integration Tests (requires staging environment)

```bash
# Option A — Use the helper script
./scripts/run_tests.sh integration smoke

# Option B — Manual invocation
cd apps/healthy_living
flutter test integration_test/ \
  --tags=smoke \
  --dart-define=ENVIRONMENT=stage \
  --dart-define=INTEGRATION_TESTS_APPROVED=true \
  --dart-define=TEST_ACCOUNT_EMAIL=<email> \
  --dart-define=TEST_ACCOUNT_PASSWORD=<password> \
  --dart-define=TEST_ACCOUNT_PREMIUM_EMAIL=<email> \
  --dart-define=TEST_ACCOUNT_PREMIUM_PASSWORD=<password>
```

See `scripts/run_tests.sh --help` for all modes and options.

---

## What's In This Test Suite

| Layer | Count | What It Tests |
|-------|-------|---------------|
| **Layer 1 — BLoC unit tests** | 22 files, 349 blocTests | Business logic controllers — event→state transitions |
| **Layer 2 — Repository unit tests** | 15 files, 162 tests | Data access — API calls, caching, error mapping |
| **Layer 3 — Widget tests** | 11 screen + 2 component files, 133 testWidgets | Screen rendering, device variants, dark mode, accessibility |
| **Layer 4 — Design system tests** | 11 files, 215 testWidgets | Reusable UI components (buttons, fields, sheets, etc.) |
| **Layer 4b — Network tests** | 2 files, 9 tests | DioRestClient and NetworkResult |
| **Layer 5 — Integration tests** | 13 flow files, 110 testWidgets | End-to-end user journeys on staging (gated) |

**Total: 77 test files, 981 test definitions.**

---

## Project Structure

```
healthy_living_v4-main/
├── apps/
│   └── healthy_living/
│       ├── lib/src/core/test_keys.dart      ← Centralised widget Key constants (98 keys)
│       ├── integration_test/
│       │   ├── flows/                       ← 13 end-to-end flow test files
│       │   ├── pages/                       ← 16 Page Object files
│       │   ├── helpers/
│       │   │   ├── integration_gate.dart    ← Skip-if-not-approved gate
│       │   │   ├── test_data.dart           ← Test account & product constants
│       │   │   ├── app_helper.dart          ← App launcher & disposable accounts
│       │   │   ├── network_helper.dart      ← Offline simulation
│       │   │   └── quarantine.dart          ← Flaky test quarantine wrapper
│       │   ├── STAGING_SETUP.md             ← Full staging activation guide
│       │   └── OUT_OF_SCOPE.md              ← Intentionally excluded test areas
│       └── test/                            ← App-level widget tests
├── packages/
│   ├── healthy_living_packages/
│   │   ├── healthy_living_shared/test/      ← BLoC, repo, widget tests (shared)
│   │   ├── healthy_living_auth/test/        ← Auth BLoC & repo tests
│   │   ├── healthy_living_find/test/        ← Search, browse, brand tests
│   │   ├── healthy_living_my_items/test/    ← Lists, history tests
│   │   ├── healthy_living_product_detail/test/
│   │   ├── healthy_living_account/test/
│   │   └── healthy_living_home/test/
│   └── shared_packages/
│       ├── design_system/test/              ← Design system component tests
│       └── network/test/                    ← Network layer tests
├── .github/
│   ├── workflows/
│   │   ├── app-pipeline.yaml                ← Main CI (lint, test, build, integration)
│   │   ├── browserstack.yml                 ← Cross-device testing (Android + iOS)
│   │   └── firebase_test_lab.yml            ← Firebase Test Lab (Android API levels)
│   └── CODEOWNERS                           ← PR review assignment
├── scripts/
│   ├── run_tests.sh                         ← Local test runner (unit/integration/mocks)
│   └── reseed_staging.sh                    ← Staging data reseed helper
├── .githooks/
│   └── pre-commit                           ← Stale mock detection hook
├── TESTING_README.md                        ← ⬅ You are here
├── TESTING_OWNERSHIP.md                     ← Team/area ownership map
├── FLAKINESS_POLICY.md                      ← Quarantine process & severity levels
├── TEST_COVERAGE.md                         ← Detailed coverage breakdown by layer
├── WIDGET_KEY_AUDIT.md                      ← Widget key wiring audit (96/98 = 98%)
└── .env.test.example                        ← Template for local integration test env
```

---

## Running Tests

### Unit & Widget Tests (no staging needed)

| Command | What It Does |
|---------|-------------|
| `melos test-coverage` | Run all unit + widget tests across every package with coverage |
| `melos build_mocks` | Regenerate Mockito `.mocks.dart` files after interface changes |
| `flutter test` (in a package dir) | Run tests for a single package |
| `flutter test --tags=bloc` | Run only BLoC-tagged tests |
| `flutter test --tags=widget` | Run only widget-tagged tests |
| `flutter test --name="pattern"` | Run tests matching a name pattern |

### Integration Tests (requires staging)

| Command | What It Does |
|---------|-------------|
| `./scripts/run_tests.sh integration smoke` | Run smoke tests (~25 critical paths) |
| `./scripts/run_tests.sh integration full` | Run full regression (~85 scenarios) |
| `./scripts/run_tests.sh integration offline` | Run offline/error simulation tests |
| `./scripts/run_tests.sh mocks` | Regenerate mocks only |

Integration tests are **gated** — they skip (not fail) unless `INTEGRATION_TESTS_APPROVED=true`. See [Activating Integration Tests](#activating-integration-tests) below.

### CI Behaviour

On every pull request to `main`, CI runs:

1. **build-validations** — Lint → mock generation → unit tests → coverage thresholds → Android + iOS builds
2. **integration-tests** (if activated) — Smoke + Full regression matrix
3. **integration-tests-quarantine** — Flaky tests, `continue-on-error: true`

On schedule (nightly):
- **BrowserStack** — Cross-device tests on real Android and iOS devices
- **Firebase Test Lab** — Android API level matrix testing

---

## Adding New Tests

### BLoC Tests (Layer 1)

1. Create `<bloc_name>_bloc_test.dart` in the package's `test/` directory
2. Use `MockBloc` from `bloc_test` with `whenListen` for state stubbing
3. Use `blocTest<BlocType, StateType>()` for event→state assertions
4. Tag with `@Tags(['bloc'])`

### Repository Tests (Layer 2)

1. Create `<repo_name>_repository_test.dart` in the package's `test/` directory
2. Mock the `RestClient` and any data sources with Mockito
3. Run `melos build_mocks` if you add new mock annotations
4. Tag with `@Tags(['unit'])`

### Widget Tests (Layer 3)

1. Create `<screen_name>_test.dart` in the package's `test/widgets/` directory
2. Use the `buildScreen()` pattern with `MockBloc` + `whenListen`
3. Include device variant tests using `kTestDeviceSizes` from `test_helpers.dart`
4. Include dark mode and accessibility guideline tests
5. Add a `KEY INVENTORY` comment block listing TestKeys present in the screen
6. Tag with `@Tags(['widget'])`

### Integration Tests (Layer 5)

1. Create or extend a flow file in `apps/healthy_living/integration_test/flows/`
2. Use Page Objects from `integration_test/pages/` — never use raw finders
3. Reference keys from `test_keys.dart` — never hardcode key strings
4. Call `IntegrationGate.skipIfNotApproved()` at the top of `main()`
5. Tag with `@Tags(['smoke'])` or `@Tags(['full'])`
6. Use `@Retry(2)` annotation for network-dependent tests

### Adding a New Widget Key

1. Define the key in `apps/healthy_living/lib/src/core/test_keys.dart`
2. Wire it to the source widget: `key: const Key('my_key_name')`
3. Use `Key('prefix_$index')` for dynamic list items
4. Use `KeyedSubtree` wrapper if the widget already has a `PageStorageKey`
5. Update the `KEY INVENTORY` comment in the corresponding widget test file
6. Update `WIDGET_KEY_AUDIT.md` with the new key

---

## When a Test Fails

### On your local machine

1. Read the failure output — the test name and assertion message tell you what broke
2. Check if it's a mock issue: run `melos build_mocks` and re-run
3. Check if it's a timing issue: add `await tester.pumpAndSettle()` or increase pump duration

### On CI

1. Check the GitHub Actions log for the failing job
2. If the failure is in `integration-tests` — check staging health first
3. If it's intermittent — follow the [quarantine process](#when-a-test-becomes-flaky)

### When a test becomes flaky

A test is **flaky** if it fails intermittently without code changes.

| Severity | Criteria | Action |
|----------|----------|--------|
| Low | < 5% failure rate over 7 days | Monitor |
| Medium | 5–20% failure rate | File issue, fix within 1 sprint |
| High | > 20% or blocks merge | **Quarantine immediately** |

**To quarantine a test:**

```dart
import '../helpers/quarantine.dart';

quarantine(
  'test name here',
  issueUrl: 'https://github.com/AstralRider/healthy-living-v4/issues/XXX',
  (tester) async { /* test body */ },
);
```

Quarantined tests run in a separate CI job (`integration-tests-quarantine`) with `continue-on-error: true`. They never block PRs.

Full process: see `FLAKINESS_POLICY.md`.

---

## Activating Integration Tests

Integration tests are safe to merge right now — they **skip** until activated.

### Prerequisites

1. Staging API is healthy: `curl -s -o /dev/null -w "%{http_code}" <STAGING_API_URL>/health` → 200
2. Test accounts created (standard + premium)
3. Test data seeded (see `scripts/reseed_staging.sh`)
4. RevenueCat sandbox configured for premium account
5. GitHub secrets set: `TEST_ACCOUNT_EMAIL`, `TEST_ACCOUNT_PASSWORD`, `TEST_ACCOUNT_PREMIUM_EMAIL`, `TEST_ACCOUNT_PREMIUM_PASSWORD`
6. GitHub variable set: `INTEGRATION_TESTS_APPROVED=true`

Full step-by-step: `apps/healthy_living/integration_test/STAGING_SETUP.md`

---

## Ownership & Escalation

| Area | Owner | Escalation Path |
|------|-------|-----------------|
| All test layers (BLoC, repo, widget, integration) | @AstralRider | Test author → QA lead → CI maintainer |
| CI infrastructure (workflows, coverage thresholds) | @AstralRider | CI maintainer → backend lead |
| Staging environment health | Backend team | Backend lead, integration tests auto-skip |

Full ownership map: `TESTING_OWNERSHIP.md`

---

## Key Documents

| Document | Path | Purpose |
|----------|------|---------|
| **TESTING_README.md** | `./TESTING_README.md` | This file — start here |
| **STAGING_SETUP.md** | `apps/healthy_living/integration_test/STAGING_SETUP.md` | Staging environment activation guide |
| **FLAKINESS_POLICY.md** | `./FLAKINESS_POLICY.md` | Quarantine process and severity levels |
| **TESTING_OWNERSHIP.md** | `./TESTING_OWNERSHIP.md` | Test area → owner mapping |
| **TEST_COVERAGE.md** | `./TEST_COVERAGE.md` | Detailed coverage breakdown |
| **WIDGET_KEY_AUDIT.md** | `./WIDGET_KEY_AUDIT.md` | Widget key wiring audit (96/98 = 98%) |
| **CODEOWNERS** | `.github/CODEOWNERS` | Automated PR review assignment |
| **test_keys.dart** | `apps/healthy_living/lib/src/core/test_keys.dart` | Centralised widget Key constants |
| **.env.test.example** | `./.env.test.example` | Template for local integration test env vars |

---

## Known Blockers

| Item | Status | What To Do |
|------|--------|-----------|
| Mock generation for auth/find/scan packages | Blocked on `build_runner` cross-package resolution | CI step added — run `melos build_mocks` after fix lands |
| 2 unwirable TestKeys (`ewgVerifiedFilter`, `errorBanner`) | CANNOT WIRE | No matching UI widgets exist — see `WIDGET_KEY_AUDIT.md` |
| BrowserStack secrets | Pending | Add `BROWSERSTACK_USERNAME` + `BROWSERSTACK_ACCESS_KEY` to GitHub secrets |
| Firebase Test Lab setup | Pending | Configure GCP project + test results bucket |
