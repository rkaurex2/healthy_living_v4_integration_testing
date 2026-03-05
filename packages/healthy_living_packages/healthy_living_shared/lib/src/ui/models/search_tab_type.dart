enum SearchTabType {
  all,
  brands,
  categories,
  products,
  ingredients,
  lists;

  static SearchTabType? fromName(String? name) {
    for (final tabType in SearchTabType.values) {
      bool isFound = tabType.name.toLowerCase() == name?.toLowerCase();

      if (isFound) {
        return tabType;
      }
    }
    return null;
  }
}
