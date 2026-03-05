import 'package:healthy_living_shared/healthy_living_shared.dart';

class DeepLinkProductRequest {
  final String productId;
  final String productName;
  final String? photoUrl;
  final ProductCategory category;
  final bool isVerified;

  DeepLinkProductRequest({
    required this.category,
    required this.isVerified,
    required this.productId,
    required this.productName,
    this.photoUrl,
  });
}
