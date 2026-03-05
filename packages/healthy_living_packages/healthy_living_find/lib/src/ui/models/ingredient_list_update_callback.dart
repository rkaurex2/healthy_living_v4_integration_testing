import 'package:healthy_living_find/src/domain/models/search_ingredient_model.dart';
import 'package:healthy_living_find/src/domain/models/search_pagination_item_model.dart';

typedef IngredientListUpdateCallback =
    void Function(
      List<SearchIngredientModel> ingredientList,
      SearchPaginationItemModel pagination,
    );
