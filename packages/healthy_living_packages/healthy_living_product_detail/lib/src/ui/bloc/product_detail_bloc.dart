import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthy_living_product_detail/src/analytics/product_details_analytics.dart';
import 'package:healthy_living_product_detail/src/domain/models/certifications_model.dart';
import 'package:healthy_living_product_detail/src/domain/models/cleaner_detail_request_model.dart';
import 'package:healthy_living_product_detail/src/domain/models/cleaner_detail_response_model.dart';
import 'package:healthy_living_product_detail/src/domain/models/cleaner_details_scores_model.dart';
import 'package:healthy_living_product_detail/src/domain/models/cosmetic_concerns_model.dart';
import 'package:healthy_living_product_detail/src/domain/models/cosmetic_detail_request_model.dart';
import 'package:healthy_living_product_detail/src/domain/models/cosmetic_detail_response_model.dart';
import 'package:healthy_living_product_detail/src/domain/models/food_detail_nutrient_fact_model.dart';
import 'package:healthy_living_product_detail/src/domain/models/food_detail_page_details_model.dart';
import 'package:healthy_living_product_detail/src/domain/models/food_detail_request_model.dart';
import 'package:healthy_living_product_detail/src/domain/models/food_detail_response_model.dart';
import 'package:healthy_living_product_detail/src/domain/models/food_detail_scores_model.dart';
import 'package:healthy_living_product_detail/src/domain/models/food_detail_serving_info_model.dart';
import 'package:healthy_living_product_detail/src/domain/models/product_detail_basic_information_model.dart';
import 'package:healthy_living_product_detail/src/domain/models/product_labels_model.dart';
import 'package:healthy_living_product_detail/src/domain/models/retailer_model.dart';
import 'package:healthy_living_product_detail/src/domain/models/sunscreen_details_model.dart';
import 'package:healthy_living_product_detail/src/domain/repository/product_detail_repository.dart';
import 'package:healthy_living_product_detail/src/ui/bloc/product_detail_event.dart';
import 'package:healthy_living_product_detail/src/ui/bloc/product_detail_state.dart';
import 'package:healthy_living_product_detail/src/ui/model/product_detail_tab.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:injectable/injectable.dart';
import 'package:network/network.dart';

@Injectable()
class ProductDetailBloc extends Bloc<ProductDetailEvent, ProductDetailState> {
  ProductDetailBloc({
    required ProductDetailRepository productDetailRepository,
    required HistoryProductRepository recentlyViewedProductRepository,
    required IngredientPreferenceRepository ingredientPreferenceRepository,
    required ProductDetailsAnalytics productDetailsAnalytics,
    required IngredientPreferenceAnalytics ingredientPreferenceAnalytics,
  }) : _productDetailRepository = productDetailRepository,
       _recentlyViewedProductRepository = recentlyViewedProductRepository,
       _ingredientPreferenceRepository = ingredientPreferenceRepository,
       _productDetailsAnalytics = productDetailsAnalytics,
       _ingredientPreferenceAnalytics = ingredientPreferenceAnalytics,
       super(const ProductDetailState.initial()) {
    on<ProductDetailInitialized>(_onProductDetailInitialized);
    on<ProductDetailShare>(_onProductDetailShare);
    on<TabChanged>(_onTabChanged);
    on<OnPressCompare>(_onPressCompare);
    on<OnCloseCompare>(_onCloseCompare);
  }

  final ProductDetailsAnalytics _productDetailsAnalytics;
  final IngredientPreferenceAnalytics _ingredientPreferenceAnalytics;
  final ProductDetailRepository _productDetailRepository;
  final IngredientPreferenceRepository _ingredientPreferenceRepository;
  final HistoryProductRepository _recentlyViewedProductRepository;
  ProductDetailBasicInformationModel? _productBasicDetail;
  CosmeticConcernsModel? _cosmeticConcernsModel;
  CleanerDetailsScoresModel? _cleanerDetailsScoresModel;
  FoodDetailScoresModel? _foodDetailScoresModel;
  SunscreenDetailsModel? _sunscreenDetailsModel;
  List<RetailerModel>? _retailers;
  ProductDetailTab _selectedProductDetailTab = ProductDetailTab.findings;
  ProductCategory? _productCategory;
  List<FoodDetailPageDetailsModel>? _foodDetailPageDetailsModel;
  List<String> _foodProductIngredients = [];
  FoodDetailServingInfoModel? _foodServingInfo;
  FoodDetailNutrientFactModel? _foodCaloriesModel;
  List<FoodDetailNutrientFactModel>? _avoidFactsList;
  List<FoodDetailNutrientFactModel>? _quickFactsList;
  List<FoodDetailNutrientFactModel>? _nutrientsList;
  List<CertificationsModel>? _certifications;
  String? _labelIngredients;
  String? _labelWarnings;
  String? _labelDirections;

  bool _isSunscreen = false;
  bool _isCompareProductProgress = false;
  bool _hasIngredientPreferenceSet = false;
  bool _hasAvoidIngredientPreferenceSet = false;

  ProductDetailTab get selectedProductDetailTab => _selectedProductDetailTab;

  ProductDetailBasicInformationModel? get productBasicDetail =>
      _productBasicDetail;

  CosmeticConcernsModel? get cosmeticConcernsModel => _cosmeticConcernsModel;

  CleanerDetailsScoresModel? get cleanerDetailsScoresModel =>
      _cleanerDetailsScoresModel;

  FoodDetailScoresModel? get foodDetailScoresModel => _foodDetailScoresModel;

  SunscreenDetailsModel? get sunscreenDetailsModel => _sunscreenDetailsModel;

  List<RetailerModel>? get retailers => _retailers;

  ProductCategory? get productCategory => _productCategory;

  List<String> get foodProductIngredients => _foodProductIngredients;

  List<FoodDetailPageDetailsModel>? get foodDetailPageDetailsModel =>
      _foodDetailPageDetailsModel;

  FoodDetailServingInfoModel? get foodServingInfo => _foodServingInfo;

  FoodDetailNutrientFactModel? get foodCaloriesModel => _foodCaloriesModel;

  List<FoodDetailNutrientFactModel>? get avoidFactsModel => _avoidFactsList;

  List<FoodDetailNutrientFactModel>? get quickFactsList => _quickFactsList;

  List<FoodDetailNutrientFactModel>? get nutrientsList => _nutrientsList;

  bool get isSunscreen => _isSunscreen;

  bool get isCompareProductProgress => _isCompareProductProgress;

  String? get labelDirections => _labelDirections;

  String? get labelWarnings => _labelWarnings;

  String? get labelIngredients => _labelIngredients;

  List<CertificationsModel>? get certifications => _certifications;

  bool get hasIngredientPreferenceSet => _hasIngredientPreferenceSet;

  bool get hasAvoidIngredientPreferenceSet => _hasAvoidIngredientPreferenceSet;

  Future<void> _onProductDetailShare(
    ProductDetailShare event,
    Emitter<ProductDetailState> emit,
  ) async {
    if (_productBasicDetail != null) {
      final productRequest = DeepLinkProductRequest(
        productId: _productBasicDetail!.productId,
        productName: _productBasicDetail!.name,
        photoUrl: _productBasicDetail!.imageUrl,
        category: _productBasicDetail!.productCategory,
        isVerified: _productBasicDetail!.isEwgVerified,
      );

      final deepLinkService = injector.get<DeepLinkHandler>();
      await deepLinkService.shareProductLink(
        productRequest,
        messageText: event.messageText,
        messageTitle: event.messageTitle,
        sharingTitle: event.sharingTitle,
      );
    }
  }

  Future<void> _onTabChanged(
    TabChanged event,
    Emitter<ProductDetailState> emit,
  ) async {
    _selectedProductDetailTab = event.tab;
    emit(ProductDetailState.tabChange(tab: _selectedProductDetailTab));
  }

  Future<void> _onPressCompare(
    OnPressCompare event,
    Emitter<ProductDetailState> emit,
  ) async {
    _isCompareProductProgress = true;
    emit(
      ProductDetailState.compareProductInitiate(
        isCompareProductInProgress: true,
      ),
    );
  }

  Future<void> _onCloseCompare(
    OnCloseCompare event,
    Emitter<ProductDetailState> emit,
  ) async {
    _isCompareProductProgress = false;
    emit(
      ProductDetailState.compareProductInitiate(
        isCompareProductInProgress: false,
      ),
    );
  }

  Future<void> _onProductDetailInitialized(
    ProductDetailInitialized event,
    Emitter<ProductDetailState> emit,
  ) async {
    if (event.isAuthenticated) {
      await _addProductToRecentlyViewed(
        productId: event.product.productId,
        productType: event.product.productCategory.value,
      );
    }
    if (event.isAuthenticated && event.isPremiumUser) {
      try {
        final response = await _ingredientPreferenceRepository
            .getCuratedIngredientPreferenceLists(
              request: CuratedIngredientPreferenceListsRequestModel(
                filterUserSelected: true,
              ),
            );

        final lists = response.data?.curatedIngredientPreferenceLists;

        if (response.isSuccess && lists.isValidList == true) {
          _hasIngredientPreferenceSet = true;

          _hasAvoidIngredientPreferenceSet = lists!.any(
            (list) =>
                list.listType?.toLowerCase() ==
                StringConstants.ingredientPreferencesAvoidListType
                    .toLowerCase(),
          );

          /// GA4 Events (IngredientsPref CuratedList)
          for (final entry in lists.asMap().entries) {
            final index = entry.key;
            final list = entry.value;

            if (list.userSelected == true) {
              await _ingredientPreferenceAnalytics
                  .logIngredientsPreferenceCuratedList(
                list: list,
                index: index,
                action: StringConstants.actionSelected,
                source: StringConstants.productDetails,
              );
            }
          }
        }
      } on Exception catch (exception) {
        emit(
          ProductDetailState.curatedIngredientPreferenceListsLoadFailure(
            exception,
          ),
        );
      }
    }

    await _getProductDetailsData(event.product, emit);
  }

  Future<void> _addProductToRecentlyViewed({
    required int productId,
    required String productType,
  }) async {
    try {
      final request = RecentlyViewedProductRequestModel(
        productId: productId,
        productType: productType,
      );
      await _recentlyViewedProductRepository.addRecentlyViewedProduct(
        request: request,
      );
    } on Exception catch (exception) {
      debugPrint("Recently Viewed Exception:: ${exception.toString()}");
    }
  }

  Future<void> _getProductDetailsData(
    ProductDetailParamModel product,
    Emitter<ProductDetailState> emit,
  ) async {
    _productCategory = product.productCategory;

    switch (product.productCategory) {
      case ProductCategory.cleaner:
        await _getCleanerProductData(product, emit);
        break;
      case ProductCategory.food:
        await _getFoodProductData(product, emit);
        break;
      case ProductCategory.personalCare:
      case ProductCategory.sunscreen:
        await _getCosmeticProductData(product, emit);
        break;
    }
    if (_productBasicDetail != null) {
      final isEwgVerified = _productBasicDetail!.isEwgVerified;

      if (isEwgVerified) {
        _selectedProductDetailTab = ProductDetailTab.ingredients;
      } else {
        _selectedProductDetailTab = ProductDetailTab.findings;
      }
    }
    emit(ProductDetailState.tabChange(tab: _selectedProductDetailTab));
  }

  Future<void> _getCosmeticProductData(
    ProductDetailParamModel product,
    Emitter<ProductDetailState> emit,
  ) async {
    try {
      emit(const ProductDetailState.loading());
      final response = await _productDetailRepository.getCosmeticDetails(
        request: CosmeticDetailRequestModel(id: product.productId.toString()),
      );

      if (response.isSuccess && response.data != null) {
        CosmeticDetailResponseModel cosmeticDetailResponseModel =
            response.data!;

        final scoreSubstrings =
            cosmeticDetailResponseModel.scoreString?.split("_") ?? [];
        final grade = scoreSubstrings.isNotEmpty ? scoreSubstrings[0] : "0";
        final dataLevel =
            scoreSubstrings.length > 1 ? scoreSubstrings[1] : "NONE";
        final hazardLevel = HazardLevelMapper.fromScore(grade);
        final asinUrl = _getAsinLink(cosmeticDetailResponseModel.retailers);
        _isSunscreen = cosmeticDetailResponseModel.sunscreen != null;

        _productBasicDetail = ProductDetailBasicInformationModel(
          productId: cosmeticDetailResponseModel.productId ?? "",
          imageUrl: cosmeticDetailResponseModel.imageUrl ?? "",
          name: cosmeticDetailResponseModel.name ?? "",
          brandName: cosmeticDetailResponseModel.brandName ?? "",
          category: cosmeticDetailResponseModel.category,
          size: "",
          isEwgVerified: cosmeticDetailResponseModel.ewgVerified ?? false,
          rating: RatingDetailModel(
            grade: grade,
            hazardLevel: hazardLevel,
            isVerified: cosmeticDetailResponseModel.ewgVerified ?? false,
            kitDetails: cosmeticDetailResponseModel.kitDetails,
          ),
          dataLevel: dataLevel,
          productCategory: product.productCategory,
          ingredients:
              cosmeticDetailResponseModel.ingredients?.map((
                cosmeticIngredient,
              ) {
                final splitScore = cosmeticIngredient.score?.split('_');
                final score = splitScore?.first ?? "";
                final hazardLevel = score.ratingHazardLevel;
                final dataText =
                    splitScore?.length == 2 ? splitScore?.last ?? "" : "";

                return IngredientDetailModel(
                  id: cosmeticIngredient.substanceId ?? -1,
                  name: cosmeticIngredient.name?.toSmartTitleCase() ?? "",
                  score: score,
                  hazardLevel: hazardLevel,
                  dataText: dataText,
                );
              }).toList() ??
              [],
          asin: asinUrl,
          addedSugarIngredients: "",
          lastUpdated: cosmeticDetailResponseModel.lastUpdated,
          ingredientPreferenceLabels:
              cosmeticDetailResponseModel.ingredientPreferenceLabels,
        );

        _cosmeticConcernsModel = cosmeticDetailResponseModel.concerns;
        _sunscreenDetailsModel = cosmeticDetailResponseModel.sunscreen;
        _retailers = cosmeticDetailResponseModel.retailers;
        _certifications = cosmeticDetailResponseModel.certifications;
        _labelDirections = cosmeticDetailResponseModel.labelDirection;
        _labelIngredients = cosmeticDetailResponseModel.labelIngredients;
        _labelWarnings = cosmeticDetailResponseModel.labelWarning;
        _foodDetailPageDetailsModel = null;
        emit(
          ProductDetailState.success(
            productInformationModel: _productBasicDetail,
            retailerModel: cosmeticDetailResponseModel.retailers,
            cosmeticConcernsModel: cosmeticDetailResponseModel.concerns,
            sunscreenDetailsModel: cosmeticDetailResponseModel.sunscreen,
          ),
        );

        // GA4 logs
        await _logProductDetailView();
      } else {
        _productBasicDetail = null;
        emit(
          ProductDetailState.failure(
            UnknownNetworkException(
              message: "",
              statusCode: 0,
              originalError: "",
            ),
          ),
        );
      }
    } on Exception catch (exception) {
      _productBasicDetail = null;
      emit(ProductDetailState.failure(exception));
    }
  }

  Future<void> _getCleanerProductData(
    ProductDetailParamModel product,
    Emitter<ProductDetailState> emit,
  ) async {
    try {
      emit(const ProductDetailState.loading());
      final response = await _productDetailRepository.getCleanerDetails(
        request: CleanerDetailRequestModel(id: product.productId.toString()),
      );

      if (response.isSuccess && response.data != null) {
        CleanerDetailResponseModel cleanerDetailResponseModel = response.data!;

        final grade = cleanerDetailResponseModel.grade ?? "";
        final hazardLevel = cleanerDetailResponseModel.grade?.ratingHazardLevel;
        final asinUrl = _getAsinLink(cleanerDetailResponseModel.retailers);
        final isEwgVerified = grade.toUpperCase() == StringConstants.verified;

        _productBasicDetail = ProductDetailBasicInformationModel(
          productId: (cleanerDetailResponseModel.productId ?? 0).toString(),
          imageUrl: cleanerDetailResponseModel.imageUrl ?? "",
          name: cleanerDetailResponseModel.name ?? "",
          brandName: cleanerDetailResponseModel.brandName ?? "",
          category:
              cleanerDetailResponseModel.menuItems
                  ?.map((item) => item.name)
                  .where((name) => name.isValidValue)
                  .cast<String>()
                  .toList() ??
              [],
          size: "",
          isEwgVerified: isEwgVerified,
          rating: RatingDetailModel(
            grade: grade,
            hazardLevel: hazardLevel ?? HazardLevel.low,
            isVerified: isEwgVerified,
          ),
          dataLevel:
              cleanerDetailResponseModel.currentFormulation?.disclosureScore ??
              "",
          productCategory: ProductCategory.cleaner,
          ingredients:
              cleanerDetailResponseModel.currentFormulation?.ingredients?.map((
                cleanerIngredient,
              ) {
                final score = cleanerIngredient.grade;
                final hazardLevel = score?.ratingHazardLevel;
                return IngredientDetailModel(
                  id: cleanerIngredient.substances.firstOrNull?.id ?? -1,
                  name: cleanerIngredient.name?.toSmartTitleCase() ?? "",
                  score: cleanerIngredient.grade ?? "",
                  hazardLevel: hazardLevel,
                );
              }).toList() ??
              [],
          asin: asinUrl,
          addedSugarIngredients: "",
          lastUpdated: cleanerDetailResponseModel.lastUpdated,
          ingredientPreferenceLabels:
              cleanerDetailResponseModel.ingredientPreferenceLabels,
        );

        _retailers = cleanerDetailResponseModel.retailers;
        _certifications = [
          ...?cleanerDetailResponseModel.certifications,
          ...?cleanerDetailResponseModel.animalCertifications,
        ];
        _labelDirections = _labelInfo(
          cleanerDetailResponseModel.productLabels,
          StringConstants.directions,
        );
        _labelIngredients = _labelInfo(
          cleanerDetailResponseModel.productLabels,
          StringConstants.ingredients,
        );
        _labelWarnings = _labelInfo(
          cleanerDetailResponseModel.productLabels,
          StringConstants.warnings,
        );
        _cleanerDetailsScoresModel =
            cleanerDetailResponseModel.currentFormulation?.scores;
        _foodDetailPageDetailsModel = null;
        emit(
          ProductDetailState.success(
            productInformationModel: _productBasicDetail,
            retailerModel: cleanerDetailResponseModel.retailers,
            cleanerDetailsScoresModel:
                cleanerDetailResponseModel.currentFormulation?.scores,
          ),
        );

        // GA4 logs
        await _logProductDetailView();
      } else {
        _productBasicDetail = null;
        emit(
          ProductDetailState.failure(
            UnknownNetworkException(
              message: "",
              statusCode: 0,
              originalError: "",
            ),
          ),
        );
      }
    } on Exception catch (exception) {
      _productBasicDetail = null;
      emit(ProductDetailState.failure(exception));
    }
  }

  Future<void> _getFoodProductData(
    ProductDetailParamModel product,
    Emitter<ProductDetailState> emit,
  ) async {
    try {
      emit(const ProductDetailState.loading());
      final response = await _productDetailRepository.getFoodDetails(
        request: FoodDetailRequestModel(upc: product.productId.toString()),
      );

      if (response.isSuccess && response.data != null) {
        FoodDetailResponseModel foodDetailResponseModel = response.data!;

        final grade = HealthyLivingSharedUtils.formatFoodScore(
          foodDetailResponseModel.scores?.overall,
        );
        final hazardLevel = grade.toString().ratingHazardLevel;
        final asinUrl = _getAsinLink(foodDetailResponseModel.retailers);

        _productBasicDetail = ProductDetailBasicInformationModel(
          productId: (foodDetailResponseModel.productId ?? 0).toString(),
          imageUrl: foodDetailResponseModel.imageUrl ?? "",
          name: foodDetailResponseModel.name ?? "",
          brandName: foodDetailResponseModel.brandName ?? "",
          category: [
            if ((foodDetailResponseModel.categoryDisplayName ?? '')
                .isValidValue)
              foodDetailResponseModel.categoryDisplayName!,
            ...?foodDetailResponseModel.categoryGroups?.where(
              (e) => e.isValidValue,
            ),
          ],
          size: foodDetailResponseModel.productSize ?? "",
          isEwgVerified: false,
          rating: RatingDetailModel(
            grade: grade.toString(),
            hazardLevel: hazardLevel ?? HazardLevel.low,
            isVerified: false,
          ),
          dataLevel: "",
          productCategory: ProductCategory.food,
          ingredients: [],
          asin: asinUrl,
          addedSugarIngredients:
              foodDetailResponseModel.addedSugarIngredients ?? "",
          lastUpdated: foodDetailResponseModel.lastUpdated,
          ingredientPreferenceLabels:
              foodDetailResponseModel.ingredientPreferenceLabels,
        );
        _retailers = foodDetailResponseModel.retailers;
        _foodDetailScoresModel = foodDetailResponseModel.scores;
        _foodDetailPageDetailsModel = foodDetailResponseModel.findings;
        _foodServingInfo = foodDetailResponseModel.servingInfo;
        _foodCaloriesModel = foodDetailResponseModel.calories;
        _avoidFactsList = foodDetailResponseModel.avoidFacts;
        _quickFactsList = foodDetailResponseModel.quickFacts;
        _nutrientsList = foodDetailResponseModel.nutrients;
        _foodProductIngredients = response.data?.ingredients ?? [];
        _labelIngredients = foodDetailResponseModel.labelIngredients;
        _labelDirections = foodDetailResponseModel.labelDirection;
        _labelWarnings = foodDetailResponseModel.labelWarning;
        _certifications = foodDetailResponseModel.certifications;

        emit(
          ProductDetailState.success(
            productInformationModel: _productBasicDetail,
            retailerModel: foodDetailResponseModel.retailers,
            foodDetailScoresModel: foodDetailResponseModel.scores,
            foodDetailPageDetailsModel: foodDetailResponseModel.findings,
            foodDetailServingInfoModel: foodDetailResponseModel.servingInfo,
            foodDetailAvoidFactModel: foodDetailResponseModel.avoidFacts,
          ),
        );

        // GA4 logs
        await _logProductDetailView();
      } else {
        _productBasicDetail = null;
        emit(
          ProductDetailState.failure(
            UnknownNetworkException(
              message: "",
              statusCode: 0,
              originalError: "",
            ),
          ),
        );
      }
    } on Exception catch (exception) {
      _productBasicDetail = null;
      emit(ProductDetailState.failure(exception));
    }
  }

  String _getAsinLink(List<RetailerModel>? retailers) {
    if (retailers == null) return "";
    for (final retailer in retailers) {
      if ((retailer.type ?? "").contains("amazon")) {
        return retailer.url;
      }
    }
    return "";
  }

  String _labelInfo(List<ProductLabelsModel>? labelInfo, String labelType) {
    if (labelInfo.isValidList) {
      if (labelType.contains(StringConstants.ingredients)) {
        return labelInfo?[0].ingredients ?? "";
      } else if (labelType.contains(StringConstants.warnings)) {
        return labelInfo?[0].warnings ?? "";
      } else if (labelType.contains(StringConstants.directions)) {
        return labelInfo?[0].directions ?? "";
      }
    }
    return "";
  }

  Future<void> _logProductDetailView() async {
    if (_productBasicDetail != null) {
      await _productDetailsAnalytics.logProductDetailView(
        product: _productBasicDetail!,
      );
    }
  }
}
