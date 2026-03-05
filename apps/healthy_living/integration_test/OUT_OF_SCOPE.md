# Integration Tests — Out of Scope

These 6 flows cannot be reliably automated in CI and are excluded from the integration test suite.

## 1. Barcode / Camera Scan

**Reason:** The scan flow requires live camera hardware input via the device camera API. Flutter integration tests and Patrol cannot inject camera frames or simulate barcode detection. The `mobile_scanner` / camera plugin reads from the native camera pipeline, which is unavailable in test environments.

**Future revisit condition:** If the scan package adds a `MockCameraController` or if BrowserStack adds camera simulation support, revisit.

## 2. Submit Product (scan-initiated)

**Reason:** The product submission flow's entry point is the barcode scan result screen. Since the scan itself cannot be automated (see #1), the downstream submission flow is also blocked. The submission form depends on data extracted from the scanned barcode.

**Future revisit condition:** If a deep-link or programmatic entry point is added to the submission screen that bypasses the scan, this flow could be automated.

## 3. Apple Sign In

**Reason:** Apple Sign In presents an OS-level authentication sheet that is sandboxed from the app process. Neither Flutter integration tests nor Patrol can interact with the native Apple ID credential prompt. Apple does not provide a test/sandbox mode for Sign in with Apple that works in CI.

**Future revisit condition:** If Apple adds a headless/test mode for Sign in with Apple, or if Patrol adds native Apple auth sheet support, revisit.

## 4. Google Sign In

**Reason:** Google Sign In opens a browser-based OAuth flow that leaves the app process. The Chrome Custom Tab / Safari ViewController is external to Flutter's widget tree and cannot be controlled by `WidgetTester` or Patrol's native interaction API.

**Future revisit condition:** If a mock Google Sign In adapter is injected at the DI level for test builds, the post-auth flow could be tested. The OAuth redirect itself will remain out of scope.

## 5. In-App Purchases (RevenueCat)

**Reason:** RevenueCat's purchase flow triggers a native payment sheet (App Store / Google Play) that is explicitly sandboxed by the OS. The payment confirmation dialog cannot be tapped or dismissed programmatically. RevenueCat sandbox mode requires a real device with a sandbox Apple ID or Google test account, which is not available in standard CI runners.

**Future revisit condition:** If BrowserStack adds RevenueCat sandbox device support, or if a mock `Purchases` adapter is injected in test builds, the premium upgrade flow could be partially tested.

## 6. Push Notifications

**Reason:** FCM/APNs push notification delivery is non-deterministic in CI environments. There is no guarantee a push notification will arrive within a test timeout window. Firebase Cloud Messaging requires a valid device token, which is not available in emulators or CI runners. The in-app handling of notifications depends on the OS notification tray, which is external to Flutter's widget tree.

**Future revisit condition:** If a local notification trigger mechanism is added (bypassing FCM), the in-app notification handling could be tested.
