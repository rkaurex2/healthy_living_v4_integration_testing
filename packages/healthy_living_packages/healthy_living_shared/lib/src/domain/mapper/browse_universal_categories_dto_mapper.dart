

import 'package:healthy_living_shared/src/domain/models/browse_categories/browse_category_dto.dart';
import 'package:healthy_living_shared/src/domain/models/browse_categories/browse_main_category_dto.dart';
import 'package:healthy_living_shared/src/domain/models/browse_categories/browse_sub_category_dto.dart';
import 'package:healthy_living_shared/src/domain/models/browse_categories/browse_universal_categories_dto.dart';
import 'package:healthy_living_shared/src/ui/models/browse_categories/browse_category_model.dart';
import 'package:healthy_living_shared/src/ui/models/browse_categories/browse_main_category_model.dart';
import 'package:healthy_living_shared/src/ui/models/browse_categories/browse_sub_category_model.dart';
import 'package:healthy_living_shared/src/ui/models/browse_categories/browse_universal_categories_model.dart';

extension BrowseUniversalCategoriesDtoMapper on BrowseUniversalCategoriesDTO {
  BrowseUniversalCategoriesModel toDomain() {
    return BrowseUniversalCategoriesModel(
      personalCare: personalCare?.map((e) => e.toDomain()).toList(),
      cleaners: cleaners?.map((e) => e.toDomain()).toList(),
      food: food?.map((e) => e.toDomain()).toList(),
    );
  }
}

extension BrowseMainCategoryDtoMapper on BrowseMainCategoryDTO {
  BrowseMainCategoryModel toDomain() {
    return BrowseMainCategoryModel(
      id: id,
      name: name,
      productCount: productCount,
      verifiedProductCount: verifiedProductCount,
      categories: categories?.map((e) => e.toDomain()).toList(),
    );
  }
}

extension BrowseCategoryDTOMapper on BrowseCategoryDTO {
  BrowseCategoryModel toDomain() {
    return BrowseCategoryModel(
      id: id,
      name: name,
      productCount: productCount,
      verifiedProductCount: verifiedProductCount,
      subCategories: subCategories?.map((e) => e.toDomain()).toList(),
    );
  }
}

extension BrowseSubCategoryDTOMapper on BrowseSubCategoryDTO {
  BrowseSubCategoryModel toDomain() {
    return BrowseSubCategoryModel(
      id: id,
      name: name,
      productCount: productCount,
      verifiedProductCount: verifiedProductCount,
    );
  }
}
