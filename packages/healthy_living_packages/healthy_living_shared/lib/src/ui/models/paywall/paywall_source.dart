enum PaywallSource {
  homeGetPremium,
  myAccount,
  productDetailCompare,
  compareBottomSheet,
  searchFiltersIngredientPreference,
  browseFiltersIngredientPreference,
  productDetail;
}

extension PaywallSourceValue on PaywallSource {
  /// GA4-friendly source value
  String get analyticsValue {
    switch (this) {
      case PaywallSource.homeGetPremium:
        return 'home_get_premium';

      case PaywallSource.myAccount:
        return 'my_account';

      case PaywallSource.productDetailCompare:
        return 'product_detail_compare';

      case PaywallSource.compareBottomSheet:
        return 'compare_bottom_sheet';

      case PaywallSource.searchFiltersIngredientPreference:
        return 'search_filters_ingredient_preference';

      case PaywallSource.browseFiltersIngredientPreference:
        return 'browse_filters_ingredient_preference';

      case PaywallSource.productDetail:
        return 'product_detail';
    }
  }
}