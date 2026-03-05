enum HistoryType {
  productSubmission(value: "product_submission"),
  recentlyViewed(value: "recently_viewed");

  final String value;

  const HistoryType({required this.value});

  static HistoryType? fromName(String? name) {
    for (final historyType in HistoryType.values) {
      bool isFound = historyType.value.toLowerCase() == name?.toLowerCase();

      if (isFound) {
        return historyType;
      }
    }
    return null;
  }
}
