#!/usr/bin/env bash
# ──────────────────────────────────────────────────────────────────────────────
# run_tests.sh — Local test runner for EWG Healthy Living v4
# ──────────────────────────────────────────────────────────────────────────────
#
# Usage:
#   ./scripts/run_tests.sh unit                    # Run all unit + widget tests
#   ./scripts/run_tests.sh unit <package>          # Run tests for a specific package
#   ./scripts/run_tests.sh integration smoke       # Run smoke integration tests
#   ./scripts/run_tests.sh integration full        # Run full regression
#   ./scripts/run_tests.sh integration offline     # Run offline simulation tests
#   ./scripts/run_tests.sh mocks                   # Regenerate Mockito mocks
#   ./scripts/run_tests.sh --help                  # Show this help
#
# Environment:
#   Integration tests load credentials from .env.test (see .env.test.example).
#   Override with: --env <path>
# ──────────────────────────────────────────────────────────────────────────────

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"
APP_DIR="$PROJECT_ROOT/apps/healthy_living"
ENV_FILE="$PROJECT_ROOT/.env.test"

# ─── Colour helpers ──────────────────────────────────────────────────────────
if [ -t 1 ]; then
  GREEN='\033[0;32m'; RED='\033[0;31m'; YELLOW='\033[1;33m'; CYAN='\033[0;36m'; BOLD='\033[1m'; RESET='\033[0m'
else
  GREEN=''; RED=''; YELLOW=''; CYAN=''; BOLD=''; RESET=''
fi

ok()    { echo -e "${GREEN}✓${RESET} $1"; }
fail()  { echo -e "${RED}✗${RESET} $1"; }
info()  { echo -e "${CYAN}→${RESET} $1"; }
header() { echo -e "\n${BOLD}$1${RESET}\n"; }

# ─── Usage ───────────────────────────────────────────────────────────────────
usage() {
  cat <<EOF
EWG Healthy Living — Local Test Runner

Usage:
  $(basename "$0") <mode> [options]

Modes:
  unit [package]          Run unit + widget tests (all packages or one)
  integration <suite>     Run integration tests (smoke | full | offline)
  mocks                   Regenerate Mockito .mocks.dart files

Options:
  --env <path>            Path to env file (default: .env.test)
  --verbose               Show full test output (no summary)
  --help, -h              Show this help

Examples:
  $(basename "$0") unit                                # All unit tests
  $(basename "$0") unit healthy_living_shared           # Single package
  $(basename "$0") integration smoke                    # Smoke tests
  $(basename "$0") integration full --env .env.staging  # Full with custom env
  $(basename "$0") mocks                                # Regenerate mocks

Environment:
  Integration tests require a .env.test file with staging credentials.
  Copy .env.test.example and fill in values. See TESTING_README.md.
EOF
  exit 0
}

# ─── Parse arguments ─────────────────────────────────────────────────────────
MODE=""
SUITE=""
PACKAGE=""
VERBOSE=false

while [[ $# -gt 0 ]]; do
  case "$1" in
    unit)
      MODE="unit"
      if [[ $# -gt 1 ]] && [[ "$2" != --* ]]; then
        PACKAGE="$2"; shift
      fi
      shift
      ;;
    integration)
      MODE="integration"
      if [[ $# -gt 1 ]] && [[ "$2" != --* ]]; then
        SUITE="$2"; shift
      else
        fail "Integration mode requires a suite: smoke | full | offline"
        exit 1
      fi
      shift
      ;;
    mocks)
      MODE="mocks"; shift
      ;;
    --env)
      ENV_FILE="$2"; shift 2
      ;;
    --verbose)
      VERBOSE=true; shift
      ;;
    --help|-h)
      usage
      ;;
    *)
      fail "Unknown argument: $1"
      echo "Run with --help for usage."
      exit 1
      ;;
  esac
done

if [ -z "$MODE" ]; then
  usage
fi

# ─── Mode: mocks ─────────────────────────────────────────────────────────────
if [ "$MODE" = "mocks" ]; then
  header "Regenerating Mockito mocks..."
  cd "$PROJECT_ROOT"
  melos build_mocks
  ok "Mock generation complete"
  exit 0
fi

# ─── Mode: unit ──────────────────────────────────────────────────────────────
if [ "$MODE" = "unit" ]; then
  cd "$PROJECT_ROOT"

  if [ -n "$PACKAGE" ]; then
    header "Running tests for package: $PACKAGE"

    # Find the package directory
    PKG_DIR=$(find packages apps -maxdepth 4 -type d -name "$PACKAGE" 2>/dev/null | head -1)
    if [ -z "$PKG_DIR" ]; then
      fail "Package not found: $PACKAGE"
      echo "  Available packages:"
      find packages -maxdepth 3 -name pubspec.yaml -exec dirname {} \; | sort | while read -r d; do
        echo "    $(basename "$d")"
      done
      exit 1
    fi

    if [ -d "$PKG_DIR/test" ]; then
      cd "$PKG_DIR"
      flutter test --coverage
      ok "Tests complete for $PACKAGE"
    else
      warn "No test/ directory in $PKG_DIR"
      exit 1
    fi
  else
    header "Running all unit + widget tests..."
    melos test-coverage
    ok "All unit + widget tests complete"
  fi
  exit 0
fi

# ─── Mode: integration ──────────────────────────────────────────────────────
if [ "$MODE" = "integration" ]; then

  # Load .env.test
  if [ -f "$ENV_FILE" ]; then
    info "Loading environment from $ENV_FILE"
    set -a
    # shellcheck source=/dev/null
    source "$ENV_FILE"
    set +a
  else
    fail "Environment file not found: $ENV_FILE"
    echo ""
    echo "  Integration tests require staging credentials."
    echo "  Copy the template and fill in values:"
    echo ""
    echo "    cp .env.test.example .env.test"
    echo "    \$EDITOR .env.test"
    echo ""
    exit 1
  fi

  # Validate required vars
  MISSING=0
  for var in API_URL TEST_ACCOUNT_EMAIL TEST_ACCOUNT_PASSWORD; do
    if [ -z "${!var:-}" ]; then
      fail "Missing required variable: $var"
      MISSING=1
    fi
  done

  if [ "$SUITE" = "full" ]; then
    for var in TEST_ACCOUNT_PREMIUM_EMAIL TEST_ACCOUNT_PREMIUM_PASSWORD; do
      if [ -z "${!var:-}" ]; then
        fail "Missing required variable for full suite: $var"
        MISSING=1
      fi
    done
  fi

  if [ "$MISSING" -eq 1 ]; then
    echo ""
    echo "  Check your $ENV_FILE file. See .env.test.example for required variables."
    exit 1
  fi

  # Build dart-define args
  DART_DEFINES=(
    "--dart-define=ENVIRONMENT=stage"
    "--dart-define=INTEGRATION_TESTS_APPROVED=true"
    "--dart-define=TEST_ACCOUNT_EMAIL=${TEST_ACCOUNT_EMAIL}"
    "--dart-define=TEST_ACCOUNT_PASSWORD=${TEST_ACCOUNT_PASSWORD}"
  )

  if [ -n "${TEST_ACCOUNT_PREMIUM_EMAIL:-}" ]; then
    DART_DEFINES+=("--dart-define=TEST_ACCOUNT_PREMIUM_EMAIL=${TEST_ACCOUNT_PREMIUM_EMAIL}")
  fi
  if [ -n "${TEST_ACCOUNT_PREMIUM_PASSWORD:-}" ]; then
    DART_DEFINES+=("--dart-define=TEST_ACCOUNT_PREMIUM_PASSWORD=${TEST_ACCOUNT_PREMIUM_PASSWORD}")
  fi

  # Determine tag
  case "$SUITE" in
    smoke)
      TAG="smoke"
      header "Running SMOKE integration tests..."
      ;;
    full)
      TAG="full"
      header "Running FULL regression integration tests..."
      ;;
    offline)
      TAG="offline"
      header "Running OFFLINE simulation tests..."
      ;;
    *)
      fail "Unknown suite: $SUITE (expected: smoke | full | offline)"
      exit 1
      ;;
  esac

  # Ensure stage.env exists for the app
  mkdir -p "$APP_DIR/assets/env"
  if [ ! -f "$APP_DIR/assets/env/stage.env" ]; then
    info "Creating stage.env from environment variables..."
    cat > "$APP_DIR/assets/env/stage.env" <<ENVEOF
ENV_NAME=stage
API_URL=${API_URL}
ANDROID_GOOGLE_CLIENT_ID=${ANDROID_GOOGLE_CLIENT_ID:-}
IOS_GOOGLE_CLIENT_ID=${IOS_GOOGLE_CLIENT_ID:-}
SERVER_GOOGLE_CLIENT_ID=${SERVER_GOOGLE_CLIENT_ID:-}
ANDROID_REVENUECAT_API_KEY=${ANDROID_REVENUECAT_API_KEY:-}
IOS_REVENUECAT_API_KEY=${IOS_REVENUECAT_API_KEY:-}
ENVEOF
    ok "Created stage.env"
  fi

  cd "$APP_DIR"

  info "Suite: $SUITE (tag: $TAG)"
  info "API: ${API_URL}"
  echo ""

  flutter test integration_test/ \
    --tags="$TAG" \
    "${DART_DEFINES[@]}"

  ok "$SUITE integration tests complete"
  exit 0
fi
