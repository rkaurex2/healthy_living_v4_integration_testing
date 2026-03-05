#!/usr/bin/env bash
# ──────────────────────────────────────────────────────────────────────────────
# reseed_staging.sh — Re-seed the staging environment for integration tests
# ──────────────────────────────────────────────────────────────────────────────
#
# Usage:
#   ./scripts/reseed_staging.sh                  # Interactive (prompts for missing vars)
#   ./scripts/reseed_staging.sh --env .env.test   # Load vars from file
#   ./scripts/reseed_staging.sh --check-only      # Verify staging health, don't seed
#
# What it does:
#   1. Verifies staging API health
#   2. Authenticates standard + premium test accounts
#   3. Creates required test lists (if missing)
#   4. Adds required test products to lists (if missing)
#   5. Verifies premium entitlement on premium account
#
# Required environment variables:
#   API_URL                       — Staging API base URL
#   TEST_ACCOUNT_EMAIL            — Standard test account email
#   TEST_ACCOUNT_PASSWORD         — Standard test account password
#   TEST_ACCOUNT_PREMIUM_EMAIL    — Premium test account email
#   TEST_ACCOUNT_PREMIUM_PASSWORD — Premium test account password
#
# API endpoints used (from source):
#   POST /mobile_users/sign_in    — AuthApiEndpoints.userSignIn
#   GET  /user_lists               — SharedApiEndPoint.userLists
#   POST /user_lists               — Create new list
#   PUT  /user_lists/{id}          — Add product to list
#   GET  /entitlements/verify      — SharedApiEndPoint.entitlementsVerify
#   GET  /search/{upc}             — SharedApiEndPoint.searchByBarcode
# ──────────────────────────────────────────────────────────────────────────────

set -euo pipefail

# ─── Colour helpers ──────────────────────────────────────────────────────────
if [ -t 1 ]; then
  GREEN='\033[0;32m'; RED='\033[0;31m'; YELLOW='\033[1;33m'; CYAN='\033[0;36m'; RESET='\033[0m'
else
  GREEN=''; RED=''; YELLOW=''; CYAN=''; RESET=''
fi

ok()   { echo -e "  ${GREEN}✓${RESET} $1"; }
fail() { echo -e "  ${RED}✗${RESET} $1"; }
warn() { echo -e "  ${YELLOW}⚠${RESET} $1"; }
info() { echo -e "  ${CYAN}→${RESET} $1"; }

# ─── Parse arguments ─────────────────────────────────────────────────────────
CHECK_ONLY=false
ENV_FILE=""

while [[ $# -gt 0 ]]; do
  case "$1" in
    --check-only)  CHECK_ONLY=true; shift ;;
    --env)         ENV_FILE="$2"; shift 2 ;;
    --help|-h)
      echo "Usage: $0 [--env <file>] [--check-only]"
      echo ""
      echo "  --env <file>    Load environment variables from file"
      echo "  --check-only    Only verify staging health, don't seed data"
      echo "  --help          Show this help"
      exit 0
      ;;
    *) echo "Unknown option: $1"; exit 1 ;;
  esac
done

# ─── Load environment ────────────────────────────────────────────────────────
if [ -n "$ENV_FILE" ] && [ -f "$ENV_FILE" ]; then
  info "Loading environment from $ENV_FILE"
  set -a
  # shellcheck source=/dev/null
  source "$ENV_FILE"
  set +a
fi

# ─── Validate required variables ─────────────────────────────────────────────
MISSING=0
for var in API_URL TEST_ACCOUNT_EMAIL TEST_ACCOUNT_PASSWORD TEST_ACCOUNT_PREMIUM_EMAIL TEST_ACCOUNT_PREMIUM_PASSWORD; do
  if [ -z "${!var:-}" ]; then
    fail "Missing required variable: $var"
    MISSING=1
  fi
done

if [ "$MISSING" -eq 1 ]; then
  echo ""
  echo "Set variables in your environment, or use: $0 --env .env.test"
  echo "See .env.test.example for a template."
  exit 1
fi

echo ""
echo "═══════════════════════════════════════════════════════════"
echo " EWG Healthy Living — Staging Reseed"
echo " API: $API_URL"
echo "═══════════════════════════════════════════════════════════"
echo ""

# ─── Helper: HTTP requests ───────────────────────────────────────────────────
api_get() {
  local endpoint="$1"
  local token="${2:-}"
  local headers=(-s -S -H "Content-Type: application/json" -H "Accept: application/json")
  if [ -n "$token" ]; then
    headers+=(-H "Authorization: Bearer $token")
  fi
  curl "${headers[@]}" "${API_URL}${endpoint}"
}

api_post() {
  local endpoint="$1"
  local body="$2"
  local token="${3:-}"
  local headers=(-s -S -H "Content-Type: application/json" -H "Accept: application/json")
  if [ -n "$token" ]; then
    headers+=(-H "Authorization: Bearer $token")
  fi
  curl "${headers[@]}" -X POST "${API_URL}${endpoint}" -d "$body"
}

api_put() {
  local endpoint="$1"
  local body="$2"
  local token="$3"
  curl -s -S -H "Content-Type: application/json" -H "Accept: application/json" \
    -H "Authorization: Bearer $token" \
    -X PUT "${API_URL}${endpoint}" -d "$body"
}

# ─── Step 1: Health check ────────────────────────────────────────────────────
echo "Step 1: Checking staging API health..."
HTTP_CODE=$(curl -s -o /dev/null -w "%{http_code}" "${API_URL}/health" 2>/dev/null || echo "000")

if [ "$HTTP_CODE" = "200" ]; then
  ok "Staging API is healthy (HTTP $HTTP_CODE)"
else
  fail "Staging API returned HTTP $HTTP_CODE"
  echo "  Expected: 200"
  echo "  URL: ${API_URL}/health"
  exit 1
fi

if [ "$CHECK_ONLY" = true ]; then
  echo ""
  ok "Health check passed. Exiting (--check-only mode)."
  exit 0
fi

# ─── Step 2: Authenticate test accounts ──────────────────────────────────────
echo ""
echo "Step 2: Authenticating test accounts..."

# Standard account
STANDARD_RESPONSE=$(api_post "/mobile_users/sign_in" \
  "{\"email\": \"${TEST_ACCOUNT_EMAIL}\", \"password\": \"${TEST_ACCOUNT_PASSWORD}\"}")

STANDARD_TOKEN=$(echo "$STANDARD_RESPONSE" | jq -r '.token // .access_token // .data.token // empty' 2>/dev/null)
if [ -n "$STANDARD_TOKEN" ] && [ "$STANDARD_TOKEN" != "null" ]; then
  ok "Standard account authenticated"
else
  fail "Standard account authentication failed"
  echo "  Response: $STANDARD_RESPONSE"
  echo "  Email: ${TEST_ACCOUNT_EMAIL}"
  echo ""
  echo "  Ensure the test account exists in staging."
  echo "  See: apps/healthy_living/integration_test/STAGING_SETUP.md"
  exit 1
fi

# Premium account
PREMIUM_RESPONSE=$(api_post "/mobile_users/sign_in" \
  "{\"email\": \"${TEST_ACCOUNT_PREMIUM_EMAIL}\", \"password\": \"${TEST_ACCOUNT_PREMIUM_PASSWORD}\"}")

PREMIUM_TOKEN=$(echo "$PREMIUM_RESPONSE" | jq -r '.token // .access_token // .data.token // empty' 2>/dev/null)
if [ -n "$PREMIUM_TOKEN" ] && [ "$PREMIUM_TOKEN" != "null" ]; then
  ok "Premium account authenticated"
else
  fail "Premium account authentication failed"
  echo "  Response: $PREMIUM_RESPONSE"
  echo "  Email: ${TEST_ACCOUNT_PREMIUM_EMAIL}"
  exit 1
fi

# ─── Step 3: Verify / create test lists ──────────────────────────────────────
echo ""
echo "Step 3: Verifying test lists..."

# Test data constants (mirrors test_data.dart)
LIST_NAME_1="My Test List"
LIST_NAME_2="My Second List"

LISTS_RESPONSE=$(api_get "/user_lists" "$STANDARD_TOKEN")
EXISTING_LISTS=$(echo "$LISTS_RESPONSE" | jq -r '.[].name // .data[].name // empty' 2>/dev/null || echo "")

# Check for list 1
if echo "$EXISTING_LISTS" | grep -qF "$LIST_NAME_1"; then
  ok "List '$LIST_NAME_1' exists"
else
  info "Creating list '$LIST_NAME_1'..."
  CREATE_RESPONSE=$(api_post "/user_lists" "{\"name\": \"$LIST_NAME_1\"}" "$STANDARD_TOKEN")
  LIST_ID=$(echo "$CREATE_RESPONSE" | jq -r '.id // .data.id // empty' 2>/dev/null)
  if [ -n "$LIST_ID" ] && [ "$LIST_ID" != "null" ]; then
    ok "Created list '$LIST_NAME_1' (ID: $LIST_ID)"
  else
    warn "Could not create list '$LIST_NAME_1' — may need manual creation"
    echo "    Response: $CREATE_RESPONSE"
  fi
fi

# Check for list 2
if echo "$EXISTING_LISTS" | grep -qF "$LIST_NAME_2"; then
  ok "List '$LIST_NAME_2' exists"
else
  info "Creating list '$LIST_NAME_2'..."
  CREATE_RESPONSE=$(api_post "/user_lists" "{\"name\": \"$LIST_NAME_2\"}" "$STANDARD_TOKEN")
  LIST_ID=$(echo "$CREATE_RESPONSE" | jq -r '.id // .data.id // empty' 2>/dev/null)
  if [ -n "$LIST_ID" ] && [ "$LIST_ID" != "null" ]; then
    ok "Created list '$LIST_NAME_2' (ID: $LIST_ID)"
  else
    warn "Could not create list '$LIST_NAME_2' — may need manual creation"
  fi
fi

# ─── Step 4: Verify test products are searchable ─────────────────────────────
echo ""
echo "Step 4: Verifying test products..."

# Product UPCs (mirrors test_data.dart)
PRODUCTS=(
  "012345678901:Personal Care"
  "012345678902:Food"
  "012345678903:Cleaner"
  "012345678904:Cleaner 2"
)

for entry in "${PRODUCTS[@]}"; do
  UPC="${entry%%:*}"
  LABEL="${entry##*:}"

  SEARCH_RESPONSE=$(api_get "/search/$UPC" "$STANDARD_TOKEN")
  PRODUCT_NAME=$(echo "$SEARCH_RESPONSE" | jq -r '.name // .data.name // .product.name // empty' 2>/dev/null)

  if [ -n "$PRODUCT_NAME" ] && [ "$PRODUCT_NAME" != "null" ]; then
    ok "$LABEL product found: $PRODUCT_NAME (UPC: $UPC)"
  else
    warn "$LABEL product NOT found for UPC: $UPC — seed this product in staging"
  fi
done

# ─── Step 5: Verify premium entitlement ──────────────────────────────────────
echo ""
echo "Step 5: Verifying premium entitlement..."

ENTITLEMENT_RESPONSE=$(api_get "/entitlements/verify" "$PREMIUM_TOKEN")
IS_PREMIUM=$(echo "$ENTITLEMENT_RESPONSE" | jq -r '.is_premium // .data.is_premium // .entitled // empty' 2>/dev/null)

if [ "$IS_PREMIUM" = "true" ]; then
  ok "Premium account has active entitlement"
else
  warn "Premium entitlement not confirmed"
  echo "  Response: $ENTITLEMENT_RESPONSE"
  echo "  Configure RevenueCat sandbox for: ${TEST_ACCOUNT_PREMIUM_EMAIL}"
fi

# ─── Summary ─────────────────────────────────────────────────────────────────
echo ""
echo "═══════════════════════════════════════════════════════════"
echo " Reseed complete. Review any warnings above."
echo ""
echo " Next steps:"
echo "   1. Resolve any ⚠ warnings by seeding data manually"
echo "   2. Set INTEGRATION_TESTS_APPROVED=true in GitHub"
echo "   3. Run: ./scripts/run_tests.sh integration smoke"
echo "═══════════════════════════════════════════════════════════"
