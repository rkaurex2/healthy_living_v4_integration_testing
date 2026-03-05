enum ProductSelectionOptionsItem {
  addToList,
  compareProducts,
  none;

  static ProductSelectionOptionsItem? fromName(String? name) {
    for (final selectionType in ProductSelectionOptionsItem.values) {
      bool isFound = selectionType.name.toLowerCase() == name?.toLowerCase();

      if (isFound) {
        return selectionType;
      }
    }
    return null;
  }
}
