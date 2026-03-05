class IngredientScreenParam {
  final String? categoryType;

  const IngredientScreenParam({this.categoryType});

  Map<String, String> toExtraParameters() => {
    'categoryType': categoryType.toString(),
  };

  static IngredientScreenParam fromExtraParameters(Map<String, String> params) {
    return IngredientScreenParam(categoryType: params['categoryType']);
  }
}
