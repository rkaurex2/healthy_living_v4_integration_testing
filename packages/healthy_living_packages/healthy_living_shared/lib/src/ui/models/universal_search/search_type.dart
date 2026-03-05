enum SearchType {
  personalCare(value: "personal_care"),
  food(value: "food"),
  cleaner(value: "cleaners"),
  brands(value: "brands"),
  products(value: "products"),
  categories(value: "categories"),
  substances(value: "substances"),
  userLists(value: "user_lists"),
  ewgVerified(value: "ewgVerified"),
  sunscreen(value: "sunscreen");

  final String value;

  const SearchType({required this.value});

  static SearchType? fromName(String? name) {
    for (final searchType in SearchType.values) {
      bool isFound = searchType.value.toLowerCase() == name?.toLowerCase();

      if (isFound) {
        return searchType;
      }
    }
    return null;
  }
}
