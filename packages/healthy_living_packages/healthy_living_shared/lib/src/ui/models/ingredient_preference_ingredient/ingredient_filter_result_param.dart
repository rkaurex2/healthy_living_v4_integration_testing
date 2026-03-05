class IngredientFilterResultParam {
  final String? categoryType;
  final int? avoidCount;
  final int? preferCount;
  final bool? hasPrefer;
  final String? openedFrom;

  const IngredientFilterResultParam({
    this.categoryType,
    this.avoidCount,
    this.preferCount,
    this.hasPrefer,
    this.openedFrom,
  });

  Map<String, String> toExtraParameters() => {
    'categoryType': categoryType.toString(),
    'avoidCount': avoidCount.toString(),
    'preferCount': preferCount.toString(),
    'hasPrefer': hasPrefer.toString(),
    'openedFrom': openedFrom.toString(),
  };

  static IngredientFilterResultParam fromExtraParameters(
    Map<String, String> params,
  ) {
    return IngredientFilterResultParam(
      categoryType: params['categoryType'],
      avoidCount: int.tryParse(params['avoidCount'] ?? ""),
      preferCount: int.tryParse(params['preferCount'] ?? ""),
      hasPrefer: params['hasPrefer'] == "true",
      openedFrom: params['openedFrom'],
    );
  }
}
