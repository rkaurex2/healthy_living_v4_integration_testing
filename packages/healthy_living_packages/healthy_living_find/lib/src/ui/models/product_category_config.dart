import 'package:healthy_living_find/src/domain/models/search_product_model.dart';
import 'package:healthy_living_find/src/ui/bloc/products_list/products_search_bloc.dart';

class ProductCategoryConfig {
  final String countKey;
  final List<SearchProductModel> Function(ProductsSearchBloc) getProducts;
  final int Function(ProductsSearchBloc) getCurrentPage;

  const ProductCategoryConfig({
    required this.countKey,
    required this.getProducts,
    required this.getCurrentPage,
  });
}
