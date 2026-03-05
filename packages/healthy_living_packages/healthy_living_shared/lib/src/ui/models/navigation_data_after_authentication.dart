import 'package:healthy_living_shared/src/ui/models/browse_product_by_category_param.dart';
import 'package:healthy_living_shared/src/ui/models/search_tab_type.dart';

class NavigationDataAfterAuthentication {
  final String? searchTerm;
  final SearchTabType? searchTabType;
  final BrowseProductByCategoryParam? browseProductByCategoryParam;
  final bool openPaywallAfterAuth;

  const NavigationDataAfterAuthentication({
    this.searchTerm,
    this.searchTabType,
    this.browseProductByCategoryParam,
    this.openPaywallAfterAuth = false,
  });
}
