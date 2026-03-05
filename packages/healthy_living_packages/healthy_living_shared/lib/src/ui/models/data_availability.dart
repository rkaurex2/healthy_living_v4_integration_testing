enum DataAvailability {
  good,
  some,
  poor;

  static DataAvailability? fromName(String? name) {
    for (final dataAvailability in DataAvailability.values) {
      bool isFound = dataAvailability.name.toLowerCase() == name?.toLowerCase();

      if (isFound) {
        return dataAvailability;
      }
    }
    return null;
  }
}