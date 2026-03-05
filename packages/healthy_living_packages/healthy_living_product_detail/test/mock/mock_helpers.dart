// Run in healthy_living_product_detail root:
//   flutter pub run build_runner build --delete-conflicting-outputs

import 'package:mockito/annotations.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:healthy_living_product_detail/src/domain/repository/product_detail_repository.dart';
import 'package:healthy_living_product_detail/src/analytics/product_details_analytics.dart';

@GenerateMocks([
  // Core product detail
  ProductDetailRepository,

  // History / recently viewed (defined in shared)
  HistoryProductRepository,

  // Ingredient preferences (defined in shared)
  IngredientPreferenceRepository,

  // Analytics
  ProductDetailsAnalytics,
  IngredientPreferenceAnalytics,
])
void main() {}
