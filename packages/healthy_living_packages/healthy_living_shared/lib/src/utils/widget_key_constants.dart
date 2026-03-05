import 'package:flutter/material.dart';

class WidgetKeyConstants {
  WidgetKeyConstants._();

  static const ingredientListContentScreen = "ingredient_list_content_screen";

  static ValueKey getBrandsValueKey({required String searchText}) {
    return ValueKey("brand_list_screen_$searchText");
  }

  static ValueKey getCategoryScreenValueKey({required String searchText}) {
    return ValueKey("category_list_screen_$searchText");
  }

  static ValueKey getIngredientsScreenValueKey({required String searchText}) {
    return ValueKey("ingredient_list_screen_$searchText");
  }

  static ValueKey getListsScreenValueKey({required String searchText}) {
    return ValueKey("my_lists_$searchText");
  }
}
