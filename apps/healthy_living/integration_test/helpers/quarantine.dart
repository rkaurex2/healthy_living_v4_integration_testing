/// Wraps a known-flaky test to prevent build failure while keeping it visible.
/// REQUIRED: provide a linked issue reference.
/// Quarantined tests are reviewed every sprint. Delete if not fixed within 2 sprints.
///
/// Usage: quarantine('PROJ-123', () { /* test body */ });
void quarantine(String issueRef, dynamic Function() testBody) {
  try {
    testBody();
  } catch (e) {
    // ignore: avoid_print
    print('\u26a0\ufe0f  QUARANTINED ($issueRef): $e');
  }
}
