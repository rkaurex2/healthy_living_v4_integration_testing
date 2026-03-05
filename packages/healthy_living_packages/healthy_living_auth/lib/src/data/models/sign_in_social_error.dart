enum SignInSocialError {
  authentication, // General authentication failure
  tokenMissing, // ID token not found or empty
  unsupported, // Platform not supported (e.g. Android)
  /// The operation was canceled by the user.
  cancelled,
  /// A catch-all for implemenatations that need to return a code that does not
  /// have a corresponding known code.
  unknown,
}
