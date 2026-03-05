# Image Cache Flickering Fix Plan — EWGV4-295

**Date:** March 4, 2026
**Ticket:** EWGV4-295 — Images reload instead of retaining cached state after WebView navigation
**Status:** Investigation complete, fix plan ready

---

## Root Cause Analysis

The image flickering after returning from a WebView is caused by **three compounding factors**, not a single bug. Each contributes to the symptom of images appearing to reload.

### Factor 1: `gaplessPlayback: false` in DSImage (PRIMARY CAUSE)

**File:** `packages/shared_packages/design_system/lib/src/ui/widgets/ds_image.dart` — line 172

```dart
gaplessPlayback: false,
```

When `gaplessPlayback` is `false`, Flutter's `Image` widget **discards the old frame immediately** when the image provider resolves a new `ImageStream`. Even if the image is the same URL and is already in memory cache, the widget goes through the full `frameBuilder` lifecycle again:

1. `frameBuilder` fires with `frame == null` → shows placeholder
2. Image resolves from cache (fast, but still async) → `frameBuilder` fires again with `frame != null`
3. `AnimatedSwitcher` cross-fades from placeholder to image over 150ms

The result: a brief flash of the placeholder followed by a 150ms fade-in, even though the image data never left memory. This is the visible "flicker."

**When `gaplessPlayback: true`:** Flutter keeps displaying the old image until the new one is fully decoded. For same-URL images returning from cache, this means the old frame persists — the user sees no change at all.

### Factor 2: `launchUrl()` without `LaunchMode` in PDF link handler

**File:** `packages/healthy_living_packages/healthy_living_shared/lib/src/ui/widgets/webview_widget.dart` — line 81

```dart
onLinkTap: (link) {
  if (link.url != null) {
    launchUrl(link.url!);  // No LaunchMode specified!
  }
},
```

When a user taps a link inside the PDF viewer, `launchUrl()` is called **without specifying `LaunchMode`**. The default `LaunchMode.platformDefault` behavior is:

- **iOS:** Opens an in-app `SFSafariViewController` (good — stays in-process)
- **Android:** Opens the system browser as an **external activity**, which causes the Flutter engine to enter the `paused` lifecycle state

Compare this with the other `launchUrl` calls in the codebase (e.g., `healthy_living_shared_utils.dart` line 79), which correctly specify `mode: LaunchMode.externalApplication`. While that also opens externally, it's an intentional choice. The PDF link handler's omission means the behavior is inconsistent and platform-dependent.

When the Flutter app enters `paused` state on Android:
- The OS may reclaim memory from background processes
- Flutter's native image cache (`ImageCache`) can be partially or fully evicted under memory pressure
- When the app resumes, all `Image.network` widgets re-resolve their image providers

### Factor 3: No Flutter `ImageCache` tuning — default limits are too small

**Finding:** The codebase contains **zero** configuration of Flutter's `ImageCache`. The defaults are:

| Parameter | Default | Meaning |
|-----------|---------|---------|
| `maximumSize` | 1000 images | Max number of cached image entries |
| `maximumSizeBytes` | 100 MB | Max total decoded image bytes |

While the count limit is generous, the **byte limit** is easily hit on modern devices with high-DPI screens. The app uses `cacheWidth` / `cacheHeight` calculated from device pixel ratio, which reduces decoded image size — but a screen with 20+ product images at 3x DPI can still consume significant decoded memory.

When the byte limit is hit, Flutter uses an **LRU eviction** strategy. Combined with memory pressure from the external browser process (Factor 2), images that were visible on screen may be evicted while the app is backgrounded.

### Factor 4 (Amplifier): HomeScreen `ValueKey(isLoggedIn)` forces full widget tree rebuild

**File:** `apps/healthy_living/lib/src/app_router_config.dart` — line 351

```dart
return HomeScreen(key: ValueKey(isLoggedIn));
```

If the auth state check happens to re-evaluate when the app resumes (e.g., `appRouter.refresh()` in `main_screen.dart` line 71), and the `isLoggedIn` boolean value toggles for any reason (token expiry, session timeout during background), the `ValueKey` change forces GoRouter to **completely destroy and recreate the HomeScreen**. This means:

- All BLoCs are recreated (new `injector.get<HomeBloc>()`)
- All child widgets are rebuilt from scratch
- All `Image.network` widgets are new instances that must re-resolve their providers
- Even cached images go through the full `frameBuilder` → `AnimatedSwitcher` path

This is the worst-case scenario: not just a cache miss, but a full widget tree teardown + rebuild + re-fetch.

---

## The Exact Reproduction Path

Here's what happens step-by-step when following the bug report's STR:

1. **User is on Home/Guides screen** — images are loaded and displayed
2. **User taps "Endocrine Disruptors" tile** → `context.pushNamed(AppRoutes.ewgGuidesWebview)` → `GuidesWebViewScreen` renders → `WebviewWidget` detects PDF URL → switches to `PdfViewer.uri()`
3. **User taps a link inside the PDF** → `onLinkTap` fires → `launchUrl(link.url!)` with no `LaunchMode` → system browser opens
4. **Flutter app enters `paused` state** → OS may reclaim memory → `ImageCache` entries can be evicted
5. **User returns to the app** → Flutter enters `resumed` state
6. **GoRouter re-evaluates routes** → `appRouter.refresh()` may fire → if auth state changed, `ValueKey(isLoggedIn)` changes → HomeScreen rebuilds entirely
7. **Even without auth change**, `context.pop()` returns to GuidesScreen/HomeScreen → `Image.network` widgets still in tree re-resolve providers
8. **`gaplessPlayback: false`** → each image shows placeholder first, then fades in via `AnimatedSwitcher` → **visible flicker**

---

## Fix Plan

### Fix 1: Set `gaplessPlayback: true` in DSImage (HIGH IMPACT — eliminates visible flicker)

**File:** `packages/shared_packages/design_system/lib/src/ui/widgets/ds_image.dart`
**Line:** 172
**Change:** `gaplessPlayback: false` → `gaplessPlayback: true`

**Why:** This is the single highest-impact change. With `gaplessPlayback: true`, the `Image` widget retains its current frame while the image provider resolves. For same-URL images already in `ImageCache`, resolution is near-instant, so the user sees no visual change. For genuinely new images, the old placeholder/image remains visible until the new one is ready — no blank flash.

**Risk:** Low. The only behavioral difference is that stale images linger slightly longer during URL changes. For this app's use case (product images that rarely change URL mid-session), this is the correct behavior.

**Testing:**
- Verify images still load correctly on first appearance (placeholder → fade-in)
- Verify images do NOT flicker when returning from WebView
- Verify that if an image URL changes (e.g., product image update), the new image eventually appears

---

### Fix 2: Specify `LaunchMode.inAppBrowserView` for PDF link handler (MEDIUM IMPACT — reduces memory pressure)

**File:** `packages/healthy_living_packages/healthy_living_shared/lib/src/ui/widgets/webview_widget.dart`
**Line:** 81
**Change:**
```dart
// Before:
launchUrl(link.url!);

// After:
launchUrl(link.url!, mode: LaunchMode.inAppBrowserView);
```

**Why:** `LaunchMode.inAppBrowserView` opens the link in an in-app browser tab (Chrome Custom Tab on Android, SFSafariViewController on iOS). This keeps the Flutter engine in the foreground, preventing the `paused` lifecycle transition and the associated memory pressure that triggers `ImageCache` eviction.

**Alternative:** If the team prefers external browser for link previews, use `LaunchMode.externalApplication` explicitly for consistency with the rest of the codebase. However, `inAppBrowserView` is the better UX because the user stays within the app and returns via the system back gesture.

**Risk:** Low. Chrome Custom Tabs and SFSafariViewController are standard components. The user experience improves because they don't leave the app context.

**Testing:**
- Tap a link inside the Endocrine Disruptors PDF → verify it opens in-app browser
- Return from in-app browser → verify images on previous screen are still visible (no reload)
- Verify links still work correctly (navigation, JavaScript, etc.)

---

### Fix 3: Tune Flutter `ImageCache` limits (MEDIUM IMPACT — reduces evictions under memory pressure)

**File:** `apps/healthy_living/lib/main.dart` (or a dedicated `app_config.dart` init file)
**Location:** Early in the app startup, before any images load

**Change:** Add after `WidgetsFlutterBinding.ensureInitialized()`:
```dart
final imageCache = PaintingBinding.instance.imageCache;
imageCache.maximumSizeBytes = 200 * 1024 * 1024; // 200 MB (was 100 MB)
imageCache.maximumSize = 1500;                     // 1500 entries (was 1000)
```

**Why:** The app loads many product images across Home, Search, and Product Detail screens. Doubling the byte limit gives the LRU cache more headroom to retain images during backgrounding. The entry count increase accommodates screens with 20+ product thumbnails plus carousel background images.

**Tuning guidance:**
- Monitor memory usage via Flutter DevTools after this change
- On low-end devices (2 GB RAM), 200 MB may be too aggressive — consider 150 MB
- The values should be profiled on target devices (Galaxy S21, iPhone 14)

**Risk:** Medium-low. Higher cache limits mean more memory usage, but Flutter's `ImageCache` automatically evicts when limits are exceeded. The risk is only on very low-memory devices.

**Testing:**
- Profile memory usage on lowest-tier BrowserStack device (Galaxy S21, 8 GB RAM — not a concern)
- Verify images remain cached after backgrounding for 30+ seconds
- Verify no OOM crashes on extended usage

---

### Fix 4: Remove `ValueKey(isLoggedIn)` from HomeScreen (MEDIUM IMPACT — prevents unnecessary full rebuilds)

**File:** `apps/healthy_living/lib/src/app_router_config.dart`
**Line:** 351
**Change:**
```dart
// Before:
return HomeScreen(key: ValueKey(isLoggedIn));

// After:
return HomeScreen();
```

**Why:** The `ValueKey(isLoggedIn)` forces a complete destruction and recreation of the HomeScreen widget tree whenever the auth state changes. This is unnecessarily aggressive — the HomeScreen already uses `BlocConsumer<HomeBloc, HomeState>` with `buildWhen` to conditionally rebuild, and individual child widgets (e.g., `RecentActivityListWidget`, `YoursListWidget`) are already conditionally rendered based on `appBloc.isAuthenticated`.

The `ValueKey` pattern is typically used when you want to force a fresh start (e.g., clearing scroll position), but here it causes collateral damage to all image widgets, BLoC instances, and scroll controllers.

**Alternative (if forced rebuild is intentionally needed):** Instead of keying the entire HomeScreen, key only the auth-dependent sections:
```dart
if (appBloc.isAuthenticated) ...{
  RecentActivityListWidget(key: const Key('recent_activity_auth')),
}
```

**Risk:** Medium. Need to verify that the HomeScreen correctly updates all its sections when auth state changes without the key-forced rebuild. The existing BLoC listeners and conditional rendering should handle this, but regression testing is needed.

**Testing:**
- Sign in → verify all authenticated sections appear (Recent Activity, Your Lists, etc.)
- Sign out → verify authenticated sections disappear
- Return from backgrounded state → verify no full-screen rebuild flicker
- Verify scroll position is retained after brief backgrounding

---

### Fix 5 (Optional): Add `RepaintBoundary` around image-heavy list items (LOW IMPACT — optimization)

**Files:**
- `packages/healthy_living_packages/healthy_living_home/lib/src/ui/widgets/horizontal_product_list_item.dart`
- `packages/healthy_living_packages/healthy_living_shared/lib/src/ui/widgets/product_list_item.dart`
- `packages/healthy_living_packages/healthy_living_shared/lib/src/ui/widgets/carousel/home_carousel_list_item.dart`

**Change:** Wrap `DSImage.network(...)` calls in `RepaintBoundary` widgets.

**Why:** `RepaintBoundary` isolates the paint layer, so when surrounding widgets rebuild (e.g., list scroll, parent state change), the image widget's render object can be reused without repainting. This reduces GPU work during scrolling and reduces the chance of triggering unnecessary image re-resolution.

**Risk:** Very low. `RepaintBoundary` adds a small overhead for the compositor layer but reduces overall repaint cost. Some list items (e.g., `ProductRowItem`) already use this pattern.

---

### Fix 6 (Optional): Consider adopting `cached_network_image` package (LONG-TERM)

**Current state:** The app relies entirely on Flutter's built-in `ImageCache`, which is an **in-memory decoded image cache**. It does NOT cache to disk. Every app restart or severe memory pressure event means re-downloading all images from the network.

**The `cached_network_image` package** adds:
- Disk caching (survives app restarts and memory pressure)
- HTTP cache-control header support
- Configurable cache duration
- Placeholder and error widget builders (similar to current DSImage)
- Stale-while-revalidate pattern

**Change:** Replace `Image.network(...)` in `DSImage` with `CachedNetworkImage(...)` from the `cached_network_image` package.

**Why:** This would eliminate the root cause entirely — images would be served from disk cache even after the in-memory cache is evicted. The initial load would be from network, subsequent loads from disk (fast, no flicker), and in-memory cache would act as a hot layer on top.

**Risk:** Medium. Introduces a new dependency (`cached_network_image` + `flutter_cache_manager`). Requires testing across all image use cases (product thumbnails, carousel backgrounds, brand logos, etc.). Cache invalidation strategy needs consideration (max age, max entries, disk size limits).

**This is the recommended long-term solution** but requires more effort than the immediate fixes (1-4).

---

## Recommended Implementation Order

| Priority | Fix | Impact | Effort | Risk |
|----------|-----|--------|--------|------|
| **P0** | Fix 1: `gaplessPlayback: true` | HIGH — eliminates visible flicker | 1 line | Very Low |
| **P0** | Fix 2: `LaunchMode.inAppBrowserView` | MEDIUM — prevents backgrounding | 1 line | Low |
| **P1** | Fix 3: Tune `ImageCache` limits | MEDIUM — reduces cache eviction | 3 lines | Low |
| **P1** | Fix 4: Remove `ValueKey(isLoggedIn)` | MEDIUM — prevents full rebuilds | 1 line + regression test | Medium |
| **P2** | Fix 5: `RepaintBoundary` wrapping | LOW — optimization | ~6 lines across 3 files | Very Low |
| **P3** | Fix 6: `cached_network_image` adoption | HIGH — permanent fix | Large refactor of DSImage | Medium |

**Fixes 1 + 2 together should fully resolve the user-visible symptom.** Fixes 3 + 4 provide defense-in-depth against edge cases (low memory, auth state flicker). Fix 6 is the proper long-term architectural solution.

---

## Files That Need Changes

| # | File | Change |
|---|------|--------|
| 1 | `packages/shared_packages/design_system/lib/src/ui/widgets/ds_image.dart` | `gaplessPlayback: true` |
| 2 | `packages/healthy_living_packages/healthy_living_shared/lib/src/ui/widgets/webview_widget.dart` | Add `mode: LaunchMode.inAppBrowserView` |
| 3 | `apps/healthy_living/lib/main.dart` | Tune `ImageCache` limits |
| 4 | `apps/healthy_living/lib/src/app_router_config.dart` | Remove `ValueKey(isLoggedIn)` |
| 5 | 3 list item widget files (optional) | Add `RepaintBoundary` |
| 6 | `packages/shared_packages/design_system/pubspec.yaml` + `ds_image.dart` (long-term) | Adopt `cached_network_image` |

---

## Verification Plan

After implementing Fixes 1-4:

1. **Primary STR (from ticket):**
   - Navigate to EWG Guides → tap Endocrine Disruptors → PDF opens
   - Tap a link in the PDF → browser opens
   - Return to app → **images should be instantly visible, no flicker**

2. **Secondary checks:**
   - Navigate to Home → scroll through product carousels → background the app for 30s → resume → images should persist
   - Navigate to any product list → tap a product → go back → images should persist
   - Sign out → sign in → Home images should load once (not flash/reload)
   - Repeat on both Android (Galaxy S23) and iOS (iPhone 15)

3. **Regression checks:**
   - First-time image load still shows placeholder → fade-in animation
   - Broken image URLs still show error widget / placeholder
   - Memory usage on Home screen stays within acceptable bounds (< 250 MB RSS)
