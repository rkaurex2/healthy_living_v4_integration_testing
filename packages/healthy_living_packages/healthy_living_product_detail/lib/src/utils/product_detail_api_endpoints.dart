class ProductDetailApiEndpoints {
  const ProductDetailApiEndpoints._();

  static const String _cosmeticBase = "/cosmetics/";
  static const String _foodBase = "/food/";
  static const String _cleanerBase = "/cleaner/";
  static const String _ingredientsInfoBase = "/ingredients_info/";
  static const productsCompare = '/products_compare';

  static String cosmetic(String id) => '$_cosmeticBase$id';
  static String food(String id) => '$_foodBase$id';
  static String cleaner(String id) => '$_cleanerBase$id';
  static String ingredientsInfo(String id) => '$_ingredientsInfoBase$id';
}
