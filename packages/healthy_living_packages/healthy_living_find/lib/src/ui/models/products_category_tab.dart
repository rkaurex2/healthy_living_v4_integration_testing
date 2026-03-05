import 'package:healthy_living_shared/healthy_living_shared.dart' show SearchType;

class ProductsCategoryTab {
  final String name;
  final SearchType type;
  final int count;

  const ProductsCategoryTab({
    required this.name,
    required this.type,
    required this.count,
  });
}