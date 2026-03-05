enum BrowseProductByCategoryType {
  ewgVerified(value: "ewgVerified"),
  personalCare(value: "personal_care"),
  cleaner(value: "cleaners"),
  food(value: "food"),
  sunscreen(value: "sunscreen");

  final String value;

  const BrowseProductByCategoryType({required this.value});

  static BrowseProductByCategoryType? fromName(String? name) {
    for (final browseProductByCategoryType
        in BrowseProductByCategoryType.values) {
      bool isFound =
          browseProductByCategoryType.value.toLowerCase() ==
          name?.toLowerCase();

      if (isFound) {
        return browseProductByCategoryType;
      }
    }
    return null;
  }
}
