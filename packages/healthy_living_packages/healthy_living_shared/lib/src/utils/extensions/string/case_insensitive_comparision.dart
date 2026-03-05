extension CaseInsensitiveComparison on String {
  bool isCaseInsensitiveEqual(String other) {
    return toLowerCase() == other.toLowerCase();
  }
}