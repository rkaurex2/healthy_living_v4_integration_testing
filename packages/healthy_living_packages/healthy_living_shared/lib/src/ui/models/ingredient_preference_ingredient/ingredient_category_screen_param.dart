class IngredientCategoryScreenParam {
  final String? categoryType;
  final bool? hasAvoid;
  final bool? hasPrefer;
  final String? openedFrom;

  const IngredientCategoryScreenParam({
    this.categoryType,
    this.hasAvoid,
    this.hasPrefer,
    this.openedFrom,
  });

  Map<String, String> toExtraParameters() => {
    'categoryType': categoryType.toString(),
    'hasAvoid': categoryType.toString(),
    'hasPrefer': categoryType.toString(),
    'openedFrom': categoryType.toString(),
  };

  static IngredientCategoryScreenParam fromExtraParameters(
    Map<String, String> params,
  ) {
    return IngredientCategoryScreenParam(
      categoryType: params['categoryType'],
      hasAvoid: params['hasAvoid'] == "true",
      hasPrefer: params['hasPrefer'] == "true",
      openedFrom: params['openedFrom'],
    );
  }
}
