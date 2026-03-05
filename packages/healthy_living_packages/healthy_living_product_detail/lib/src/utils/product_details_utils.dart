import 'package:healthy_living_product_detail/l10n/healthy_living_product_detail_localizations.dart';
import 'package:healthy_living_product_detail/src/ui/model/product_detail_tab.dart';
import 'package:healthy_living_product_detail/src/ui/models/product_dtail_tab_data.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class ProductDetailsUtils {
  ProductDetailsUtils._();

  static final ProductDetailsUtils _instance = ProductDetailsUtils._();

  factory ProductDetailsUtils() => _instance;

  List<ProductDetailTabData> getTabsData({
    required HealthyLivingProductDetailLocalizations localization,
    required ProductCategory? productCategory,
    required bool? isEwgVerified,
  }) {
    List<ProductDetailTabData> tabsData = [];
    if (isEwgVerified == false) {
      tabsData.add(
        ProductDetailTabData(
          name: localization.productDetail_tabBar_findingsTitle,
          tabType: ProductDetailTab.findings,
        ),
      );
    }
    tabsData.add(
      ProductDetailTabData(
        name: localization.productDetail_ingredients_ingredientsTitle,
        tabType: ProductDetailTab.ingredients,
      ),
    );
    tabsData.add(
      ProductDetailTabData(
        name: localization.productDetail_labelInfo_labelInfoTitle,
        tabType: ProductDetailTab.labelInfo,
      ),
    );

    return tabsData;
  }

  String getLearnMoreAboutScoresUrl({
    required bool isVerifiedProduct,
    required ProductCategory? productCategory,
    required bool isSunscreen,
  }) {
    String url = "";
    if (isVerifiedProduct) {
      url = UrlConstants.ewgVerified;
    } else if (isSunscreen) {
      url = UrlConstants.sunscreenScores;
    } else if (productCategory == ProductCategory.personalCare) {
      url = UrlConstants.personalCareScores;
    } else if (productCategory == ProductCategory.cleaner) {
      url = UrlConstants.cleanersScores;
    } else if (productCategory == ProductCategory.food) {
      url = UrlConstants.foodScores;
    }
    return url;
  }

  static bool hasAnyPreference(IngredientPreferenceIndicatorModel? model) {
    return model != null && (model.hasAvoid || model.hasPrefer);
  }

  String getHazardValueFromType({
    required HealthyLivingSharedLocalizations sharedLocalizations,
    required String? type,
    required bool isFoodType,
  }) {
    final noData = StringConstants.noData.toLowerCase();

    final isNoData = type == null || type.toLowerCase().contains(noData);
    final title =
        (type?.toSmartTitleCase() ?? StringConstants.noData.toSmartTitleCase());

    return isNoData
        ? title
        : '$title ${isFoodType ? "" : sharedLocalizations.general_hazard}'
            .trim();
  }
}
