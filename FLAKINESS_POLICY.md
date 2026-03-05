# Flakiness Policy

This document defines how the EWG Healthy Living project handles flaky tests — tests that pass and fail intermittently without code changes.

## Definition

A test is considered **flaky** if it fails on CI without a corresponding code change in two or more consecutive pipeline runs, or if it fails on retry but passes on a subsequent re-run of the same commit.

## Severity Levels

| Level | Criteria | Action |
|---|---|---|
| **Low** | Fails < 5% of runs over 7 days | Monitor — no immediate action |
| **Medium** | Fails 5–20% of runs over 7 days | File issue, investigate root cause within 1 sprint |
| **High** | Fails > 20% of runs, or blocks merge | Quarantine immediately, fix within 3 business days |

## Quarantine Process

1. **Identify** — A test that meets High severity criteria is flagged.
2. **Tag** — Wrap the test with the `quarantine()` helper from `integration_test/helpers/quarantine.dart`. This adds the `@Tags(['quarantine'])` annotation.
3. **File issue** — Create a GitHub issue with the `flaky-test` label linking the test file, line number, and failure logs.
4. **Isolate** — Quarantined tests run in a separate CI job (`integration-tests-quarantine`) that is `continue-on-error: true`. They do not block PRs.
5. **Fix** — The owning team investigates and fixes the root cause.
6. **Restore** — Once stable for 5 consecutive CI runs, remove the quarantine wrapper and close the issue.

## Using the Quarantine Helper

```dart
import '../helpers/quarantine.dart';

// Instead of:
testWidgets('flaky test', (tester) async { ... });

// Use:
quarantine(
  'flaky test',
  issueUrl: 'https://github.com/AstralRider/healthy-living-v4/issues/123',
  (tester) async { ... },
);
```

## Root Cause Categories

Common flakiness root causes and their fixes:

| Category | Example | Fix |
|---|---|---|
| **Timing** | Animation not settled, async not awaited | Add `pumpAndSettle()`, increase timeout |
| **Test isolation** | Shared state between tests | Reset state in `setUp`/`tearDown` |
| **Network** | Staging API timeout | Add `@Retry(2)`, check API health in CI |
| **Device variance** | Different screen sizes | Use `kTestDeviceSizes` device variants |
| **Data dependency** | Missing pre-seeded data | Document in STAGING_SETUP.md, verify in CI |

## Metrics

The team tracks:
- **Flaky test count** — number of tests currently quarantined
- **Mean time to fix** — average days from quarantine to restoration
- **Flakiness rate** — percentage of CI runs with at least one flaky failure

Target: **zero quarantined tests** at any given time. Maximum acceptable: 3 quarantined tests.

## Responsibility

- Test author is the first responder for flakiness in their tests
- QA lead reviews quarantine queue weekly
- See `TESTING_OWNERSHIP.md` for team assignments
