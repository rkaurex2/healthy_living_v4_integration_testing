import 'package:healthy_living_find/l10n/healthy_living_find_localizations.dart';
import 'package:healthy_living_find/src/ui/models/browse_feature_category_list_item_model.dart';
import 'package:healthy_living_find/src/ui/models/search_tabs.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart'
    show
        BrowseCategoryModel,
        BrowseMainCategoryModel,
        BrowseProductByCategoryType,
        BrowseSubCategoryModel,
        SearchTabType,
        StringConstants,
        Validate;

class FindUtils {
  static FindUtils? _instance;

  FindUtils._internal();

  factory FindUtils() {
    _instance ??= FindUtils._internal();
    return _instance!;
  }

  static final Map<SearchTabType, int> searchTabTypeToIndex = {
    SearchTabType.all: 0,
    SearchTabType.products: 1,
    SearchTabType.brands: 2,
    SearchTabType.categories: 3,
    SearchTabType.ingredients: 4,
    SearchTabType.lists: 5,
  };

  List<SearchTabData> getSearchTabs({
    required HealthyLivingFindLocalizations localizations,
    required bool isAuthenticated,
  }) {
    return [
      SearchTabData(
        index: searchTabTypeToIndex[SearchTabType.all]!,
        name: localizations.find_tabs_all,
        type: SearchTabType.all,
      ),
      SearchTabData(
        index: searchTabTypeToIndex[SearchTabType.products]!,
        name: localizations.find_tabs_products,
        type: SearchTabType.products,
      ),
      SearchTabData(
        index: searchTabTypeToIndex[SearchTabType.brands]!,
        name: localizations.find_tabs_brands,
        type: SearchTabType.brands,
      ),
      SearchTabData(
        index: searchTabTypeToIndex[SearchTabType.categories]!,
        name: localizations.find_tabs_categories,
        type: SearchTabType.categories,
      ),
      SearchTabData(
        index: searchTabTypeToIndex[SearchTabType.ingredients]!,
        name: localizations.find_tabs_ingredients,
        type: SearchTabType.ingredients,
      ),
      if (isAuthenticated) ...{
        SearchTabData(
          index: searchTabTypeToIndex[SearchTabType.lists]!,
          name: localizations.find_tabs_lists,
          type: SearchTabType.lists,
        ),
      },
    ];
  }

  int getSearchTabTypeIndex(SearchTabType type) {
    return searchTabTypeToIndex[type]!;
  }

  List<BrowseFeatureCategoryListItemModel> getFeaturedCategories({
    required List<BrowseMainCategoryModel> browsePersonalCareData,
    required HealthyLivingFindLocalizations localizations,
  }) {
    List<BrowseFeatureCategoryListItemModel> result = [];

    for (BrowseMainCategoryModel categoryGroup in browsePersonalCareData) {
      if (categoryGroup.name == StringConstants.browseSunCategoryGroupName) {
        result.add(
          BrowseFeatureCategoryListItemModel(
            categoryType: BrowseProductByCategoryType.personalCare,
            categoryGroupId: categoryGroup.id!,
            name: categoryGroup.name!,
            nameForUi: localizations.find_browse_sunscreens,
          ),
        );
      }

      final categories = categoryGroup.categories ?? [];
      for (BrowseCategoryModel category in categories) {
        String categoryNameForUi = "";

        if (category.name?.toLowerCase() ==
            StringConstants.browseMattressesCategoryName.toLowerCase()) {
          categoryNameForUi = localizations.find_browse_mattresses;
        }

        if (category.name?.toLowerCase() ==
            StringConstants.browseMattressesCategoryName.toLowerCase()) {
          if (categoryGroup.id != null &&
              categoryGroup.id! > -1 &&
              category.id != null &&
              category.id! > -1 &&
              category.name?.isValidValue == true) {
            result.add(
              BrowseFeatureCategoryListItemModel(
                categoryType: BrowseProductByCategoryType.personalCare,
                categoryGroupId: categoryGroup.id!,
                categoryId: category.id!,
                name: category.name!,
                nameForUi: categoryNameForUi,
              ),
            );
          }
        }
        final subCategories = category.subCategories ?? [];
        for (BrowseSubCategoryModel subCategory in subCategories) {
          if (subCategory.name?.toLowerCase() ==
              StringConstants.browseDiaperSubCategoryName.toLowerCase()) {
            final categoryNameForUi = localizations.find_browse_diapers;
            if (categoryGroup.id != null &&
                categoryGroup.id! > -1 &&
                category.id != null &&
                category.id! > -1 &&
                category.name?.isValidValue == true &&
                subCategory.id != null &&
                subCategory.id! > -1) {
              result.add(
                BrowseFeatureCategoryListItemModel(
                  categoryType: BrowseProductByCategoryType.personalCare,
                  categoryGroupId: categoryGroup.id!,
                  categoryId: category.id!,
                  subCategoryId: subCategory.id,
                  name: subCategory.name!,
                  nameForUi: categoryNameForUi,
                ),
              );
            }
          }
        }
      }
    }

    return result;
  }
}
