class IngredientDetailScreenParams {
  final String ingredientId;

  const IngredientDetailScreenParams({required this.ingredientId});

  Map<String, String> toQueryParameters() => {'id': ingredientId};

  static IngredientDetailScreenParams fromQueryParameters(
      Map<String, String> params,
      ) {
    return IngredientDetailScreenParams(ingredientId: params["id"] ?? "");
  }
}