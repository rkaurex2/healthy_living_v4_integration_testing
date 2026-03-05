import 'package:healthy_living_find/src/domain/models/search_category_item_model.dart';
import 'package:healthy_living_find/src/domain/models/search_pagination_item_model.dart';

typedef CategoryListUpdateCallback =
    void Function(
      List<SearchCategoryItemModel> categoryList,
      SearchPaginationItemModel pagination,
    );
