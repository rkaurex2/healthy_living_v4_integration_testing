import 'package:healthy_living_find/src/domain/models/search_brand_model.dart';
import 'package:healthy_living_find/src/domain/models/search_pagination_item_model.dart';

typedef BrandListUpdateCallback =
    void Function(
      List<SearchBrandModel> brandList,
      SearchPaginationItemModel? pagination,
    );
