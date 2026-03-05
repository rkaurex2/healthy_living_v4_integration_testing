extension AnalyticsParamCleaner on Map<String, Object?> {
  Map<String, Object> removeNulls() {
    final cleaned = <String, Object>{};
    forEach((key, value) {
      if (value != null) {
        cleaned[key] = value;
      }
    });
    return cleaned;
  }
}
