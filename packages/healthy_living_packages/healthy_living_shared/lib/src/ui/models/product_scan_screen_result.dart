import 'package:healthy_living_shared/healthy_living_shared.dart'
    show AppRoutes;

class ProductScanScreenResult {
  final AppRoutes? routeToOpenAfterScanClose;
  final String? textInputHintText;

  const ProductScanScreenResult({
    this.routeToOpenAfterScanClose,
    this.textInputHintText,
  });
}
