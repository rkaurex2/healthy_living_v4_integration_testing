// Utility for offline simulation in integration tests.
// Note: true offline simulation is done at the BrowserStack level via networkProfile.
// This helper provides a flag-based approach for local testing only.

class NetworkHelper {
  static bool _offlineMode = false;
  static bool get isOffline => _offlineMode;
  static void goOffline() => _offlineMode = true;
  static void goOnline() => _offlineMode = false;
}
