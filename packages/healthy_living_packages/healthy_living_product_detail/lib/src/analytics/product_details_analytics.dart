import 'package:healthy_living_product_detail/src/domain/models/product_detail_basic_information_model.dart';

abstract interface class ProductDetailsAnalytics {
  Future<void> logProductDetailView({
    required ProductDetailBasicInformationModel product,
  });

  Future<void> logSearchStart({
    required String source,
  });

  Future<void> logScanStart({
    required String source,
  });
}
