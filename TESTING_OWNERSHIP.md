# Testing Ownership

This document maps test layers and feature areas to their responsible owners. Every test file has exactly one owner who is responsible for maintaining, triaging failures, and fixing flakiness.

## Test Layer Ownership

| Layer | Scope | Owner | Review Required |
|---|---|---|---|
| Layer 1 — Unit (BLoC) | `packages/**/test/**_bloc_test.dart` | @AstralRider | Yes |
| Layer 2 — Unit (Repository) | `packages/**/test/**_repository_test.dart` | @AstralRider | Yes |
| Layer 3 — Widget | `apps/healthy_living/test/**_test.dart` | @AstralRider | Yes |
| Layer 4 — Design System | `packages/design_system/test/**_test.dart` | @AstralRider | Yes |
| Layer 5 — Integration | `apps/healthy_living/integration_test/**` | @AstralRider | Yes |

## Integration Test Flow Ownership

| Flow | File | Feature Area | Owner |
|---|---|---|---|
| 01 | `01_auth_flow_test.dart` | Authentication | @AstralRider |
| 02 | `02_search_flow_test.dart` | Search | @AstralRider |
| 03 | `03_product_detail_flow_test.dart` | Product Detail | @AstralRider |
| 04 | `04_lists_flow_test.dart` | Lists | @AstralRider |
| 05 | `05_home_flow_test.dart` | Home Screen | @AstralRider |
| 06 | `06_account_flow_test.dart` | Account / Settings | @AstralRider |
| 07 | `07_history_flow_test.dart` | History | @AstralRider |
| 08 | `08_browse_flow_test.dart` | Browse / Find | @AstralRider |
| 09 | `09_brands_flow_test.dart` | Brands | @AstralRider |
| 10 | `10_ingredients_detail_flow_test.dart` | Ingredient Detail | @AstralRider |
| 11 | `11_compare_flow_test.dart` | Compare Products | @AstralRider |
| 12 | `12_ingredient_preference_flow_test.dart` | Ingredient Preferences | @AstralRider |
| 13 | `13_navigation_flow_test.dart` | Navigation / Deep Links | @AstralRider |

## CI Infrastructure Ownership

| Component | File | Owner |
|---|---|---|
| App pipeline | `.github/workflows/app-pipeline.yaml` | @AstralRider |
| BrowserStack | `.github/workflows/browserstack.yml` | @AstralRider |
| Firebase Test Lab | `.github/workflows/firebase_test_lab.yml` | @AstralRider |
| Melos config | `melos.yaml` | @AstralRider |
| Coverage doc | `TEST_COVERAGE.md` | @AstralRider |

## Responsibilities

### Test Author
- Write tests following project conventions (TestKeys, Page Objects, IntegrationGate)
- Maintain tests when underlying feature code changes
- First responder when their tests fail or become flaky
- Follow the quarantine process defined in `FLAKINESS_POLICY.md`

### QA Lead
- Review quarantine queue weekly
- Ensure coverage thresholds are met per `TEST_COVERAGE.md`
- Approve integration test activation (setting `INTEGRATION_TESTS_APPROVED`)
- Validate staging environment health before test runs

### CI Maintainer
- Keep workflow files current with Flutter / tool version upgrades
- Monitor BrowserStack and Firebase Test Lab usage and quotas
- Triage infrastructure-level test failures (runner issues, timeouts, env config)

## Escalation Path

1. **Test fails on PR** — Test author investigates within 1 business day
2. **Flaky test identified** — Follow `FLAKINESS_POLICY.md` quarantine process
3. **Infrastructure failure** — CI maintainer triages within 4 hours during business hours
4. **Staging environment down** — Backend lead notified, integration tests auto-skip via gate
