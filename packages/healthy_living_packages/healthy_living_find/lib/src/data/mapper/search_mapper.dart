import 'package:healthy_living_find/src/data/mapper/search_list_dto_mapper.dart';
import 'package:healthy_living_find/src/data/models/search_brand_dto.dart';
import 'package:healthy_living_find/src/data/models/search_category_dto.dart';
import 'package:healthy_living_find/src/data/models/search_category_item_dto.dart';
import 'package:healthy_living_find/src/data/models/search_highlights_dto.dart';
import 'package:healthy_living_find/src/data/models/search_ingredient_dto.dart';
import 'package:healthy_living_find/src/data/models/search_pagination_dto.dart';
import 'package:healthy_living_find/src/data/models/search_pagination_item_dto.dart';
import 'package:healthy_living_find/src/data/models/search_product_dto.dart';
import 'package:healthy_living_find/src/data/models/search_response_dto.dart';
import 'package:healthy_living_find/src/data/models/search_results_dto.dart';
import 'package:healthy_living_find/src/domain/models/search_response_model_main.dart';

import 'package:healthy_living_shared/healthy_living_shared.dart'
    show
        BrandAggregationDTOMapper,
        CategoryAggregationsDtoMapper,
        IngredientPreferenceIndicatorMapper,
        ProductCategory;

extension SearchHighlightsMapper on SearchHighlightsDTO? {
  SearchHighlightsModel? toDomain() {
    final dto = this;
    if (dto == null) return null;
    return SearchHighlightsModel(name: dto.name ?? '');
  }
}

extension SearchCategoryMapper on SearchCategoryDTO? {
  SearchCategoryModel? toDomain() {
    final dto = this;
    if (dto == null) return null;
    return SearchCategoryModel(
      id: dto.id,
      name: dto.name,
      foodEssentialsAisleId: dto.foodEssentialsAisleId,
      foodEssentialsShelfId: dto.foodEssentialsShelfId,
    );
  }
}

extension SearchProductMapper on SearchProductDTO {
  SearchProductModel toDomain() {
    int? personalCareScore;
    double? foodScore;
    String? cleanersScore;
    final productType = ProductCategory.fromName(subtype);

    if (score is double) {
      if (productType == ProductCategory.personalCare) {
        personalCareScore = (score as double).floor();
      } else if (productType == ProductCategory.food) {
        foodScore = score;
      }
    } else if (score is int) {
      if (productType == ProductCategory.personalCare) {
        personalCareScore = score as int;
      } else if (productType == ProductCategory.food) {
        foodScore = double.parse(score.toString());
      }
    } else if (score is String) {
      if (productType == ProductCategory.cleaner) {
        cleanersScore = score as String;
      }
    }

    return SearchProductModel(
      id: id,
      skinDeepId: skinDeepId,
      type: type,
      subtype: subtype,
      name: name,
      description: description,
      brandName: brandName,
      categoryName: categoryName,
      categoryGroupName: categoryGroupName,
      subCategoryName: subCategoryName,
      personalCareScore: personalCareScore,
      foodScore: foodScore,
      cleanersScore: cleanersScore,
      ewgVerified: ewgVerified,
      imageUrl: imageUrl,
      mobileImageUrl: mobileImageUrl ?? '',
      highlights: highlights.toDomain(),
      ingredientPreferenceIndicator: ingredientPreferenceIndicator?.toDomain(),
    );
  }
}

extension SearchIngredientMapper on SearchIngredientDTO {
  SearchIngredientModel toDomain() {
    double? personalCareScore;
    double? foodScore;
    String? cleanersScore;
    final productType = ProductCategory.fromName(type);

    if (score is double?) {
      if (productType == ProductCategory.personalCare) {
        personalCareScore = score;
      } else if (productType == ProductCategory.food) {
        foodScore = score;
      }
    } else if (score is int?) {
      if (productType == ProductCategory.personalCare) {
        personalCareScore = double.parse(score.toString());
      } else if (productType == ProductCategory.food) {
        foodScore = double.parse(score.toString());
      }
    } else if (score is String?) {
      if (productType == ProductCategory.cleaner) {
        cleanersScore = score;
      }
    }
    return SearchIngredientModel(
      id: id,
      type: type,
      name: name,
      description: description,
      cosmeticsProductsCount: cosmeticsProductsCount,
      verified: verified,
      highlights: highlights.toDomain(),
      countCleaners: countCleaners,
      personalCareScore: personalCareScore,
      foodScore: foodScore,
      cleanersScore: cleanersScore,
      synonyms: synonyms,
      nProducts: nProducts,
      public: public,
    );
  }
}

extension SearchCategoryItemMapper on SearchCategoryItemDTO {
  SearchCategoryItemModel toDomain() {
    return SearchCategoryItemModel(
      id: id,
      type: type,
      subtype: subtype,
      name: name,
      description: description,
      productCount: productCount,
      imageUrl: imageUrl,
      productType: productType,
      highlights: highlights.toDomain(),
    );
  }
}

extension SearchBrandMapper on SearchBrandDTO {
  SearchBrandModel toDomain() {
    return SearchBrandModel(
      id: id,
      type: type,
      name: name,
      description: description,
      companyName: companyName,
      cosmeticsProductsCount: cosmeticsProductsCount,
      logoUrl: logoUrl,
      verified: verified,
      highlights: highlights.toDomain(),
      countCleaners: countCleaners,
    );
  }
}

extension SearchResultsMapper on SearchResultsDTO? {
  SearchResultsModel? toDomain() {
    final dto = this;
    if (dto == null) return null;
    return SearchResultsModel(
      products: dto.products.map((product) => product.toDomain()).toList(),
      ingredients:
          dto.ingredients.map((ingredient) => ingredient.toDomain()).toList(),
      categories:
          dto.categories.map((category) => category.toDomain()).toList(),
      brands: dto.brands.map((brand) => brand.toDomain()).toList(),
      lists: dto.lists.map((list) => list.toDomain()).toList(),
      categoryAggs: dto.categoryAggs?.toDomain(),
      brandAggs: dto.brandAggs.map((brand) => brand.toDomain()).toList(),
    );
  }
}

extension SearchPaginationItemMapper on SearchPaginationItemDTO? {
  SearchPaginationItemModel? toDomain() {
    final dto = this;
    if (dto == null) return null;
    return SearchPaginationItemModel(
      currentPage: dto.currentPage,
      totalPages: dto.totalPages,
      totalEntries: dto.totalEntries,
    );
  }
}

extension SearchPaginationMapper on SearchPaginationDTO? {
  SearchPaginationModel? toDomain() {
    final dto = this;
    if (dto == null) return null;
    return SearchPaginationModel(
      products: dto.products.toDomain(),
      ingredients: dto.ingredients.toDomain(),
      categories: dto.categories.toDomain(),
      brands: dto.brands.toDomain(),
      lists: dto.lists.toDomain(),
      totalEntries: dto.totalEntries,
    );
  }
}

extension SearchResponseMapper on SearchResponseDTO {
  SearchResponseModel toDomain() {
    return SearchResponseModel(
      results: results.toDomain(),
      pagination: pagination.toDomain(),
      productTypeCounts: productTypeCounts,
      totalSearchTime: totalSearchTime,
    );
  }
}
