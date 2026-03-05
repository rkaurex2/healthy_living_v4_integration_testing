import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthy_living_product_detail/src/domain/models/cleaner_detail_response_model.dart';
import 'package:healthy_living_product_detail/src/domain/models/cleaner_details_scores_model.dart';
import 'package:healthy_living_product_detail/src/domain/models/cosmetic_concerns_model.dart';
import 'package:healthy_living_product_detail/src/domain/models/cosmetic_detail_response_model.dart';
import 'package:healthy_living_product_detail/src/domain/models/food_detail_response_model.dart';
import 'package:healthy_living_product_detail/src/domain/models/food_detail_scores_model.dart';
import 'package:healthy_living_product_detail/src/domain/models/product_compare_request_model.dart';
import 'package:healthy_living_product_detail/src/domain/models/sunscreen_details_model.dart';
import 'package:healthy_living_product_detail/src/domain/repository/product_detail_repository.dart';
import 'package:healthy_living_product_detail/src/ui/bloc/product_compare/product_compare_event.dart';
import 'package:healthy_living_product_detail/src/ui/bloc/product_compare/product_compare_state.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:injectable/injectable.dart';
import 'package:network/network.dart';

@injectable
class ProductCompareBloc
    extends Bloc<ProductCompareEvent, ProductCompareState> {
  final ProductDetailRepository _productDetailRepository;

  ProductCompareBloc(this._productDetailRepository)
    : super(const ProductCompareState.initial()) {
    on<ProductsCompareRequested>(_onFetchProductsCompare);
  }

  ProductCategory? _productCategory;
  List<CosmeticDetailResponseModel>? _cosmeticDetailResponseModel;
  List<CleanerDetailResponseModel>? _cleanerDetailResponseModel;
  List<FoodDetailResponseModel>? _foodDetailResponseModel;
  List<CosmeticConcernsModel>? _cosmeticConcernsModel;
  List<CleanerDetailsScoresModel>? _cleanerDetailsScoresModel;
  List<FoodDetailScoresModel>? _foodDetailScoresModel;
  List<SunscreenDetailsModel>? _sunscreenDetailsModel;
  IngredientDetailModel? _ingredientDetailModel;

  ProductCategory? get productCategory => _productCategory;

  List<CosmeticDetailResponseModel>? get cosmeticDetailResponseModel =>
      _cosmeticDetailResponseModel;

  List<CleanerDetailResponseModel>? get cleanerDetailResponseModel =>
      _cleanerDetailResponseModel;

  List<FoodDetailResponseModel>? get foodDetailResponseModel =>
      _foodDetailResponseModel;

  List<CosmeticConcernsModel>? get cosmeticConcernsModel =>
      _cosmeticConcernsModel;

  List<CleanerDetailsScoresModel>? get cleanerDetailsScoresModel =>
      _cleanerDetailsScoresModel;

  List<FoodDetailScoresModel>? get foodDetailScoresModel =>
      _foodDetailScoresModel;

  List<SunscreenDetailsModel>? get sunscreenDetailsModel =>
      _sunscreenDetailsModel;

  IngredientDetailModel? get ingredientDetailModel => _ingredientDetailModel;

  Future<void> _onFetchProductsCompare(
    ProductsCompareRequested event,
    Emitter<ProductCompareState> emit,
  ) async {
    ProductCategory productCategory =
        ProductCategory.fromName(event.request.productType)!;
    switch (productCategory) {
      case ProductCategory.cleaner:
        await _getCleanerProductData(event.request, emit);
        break;
      case ProductCategory.food:
        await _getFoodProductData(event.request, emit);
        break;
      case ProductCategory.personalCare:
      case ProductCategory.sunscreen:
        await _getCosmeticProductData(event.request, emit);
        break;
    }
  }

  Future<void> _getCleanerProductData(
    ProductCompareRequestModel requestModel,
    Emitter<ProductCompareState> emit,
  ) async {
    _productCategory = ProductCategory.cleaner;
    emit(const ProductCompareState.loading());

    try {
      final response = await _productDetailRepository.cleanersProductCompare(
        request: requestModel,
      );

      if (response.isSuccess && response.data != null) {
        final sortedProducts = _sortCleanerProducts(
          response.data!.data.products,
          requestModel.ids,
        );

        _cleanerDetailResponseModel = sortedProducts;

        final sortedResponse = response.data!.copyWith(
          data: response.data!.data.copyWith(products: sortedProducts),
        );
        emit(ProductCompareState.success(cleanersResult: sortedResponse));
      } else {
        emit(
          ProductCompareState.failure(
            UnknownNetworkException(
              message: "",
              statusCode: 0,
              originalError: "",
            ),
          ),
        );
      }
    } on Exception catch (exception) {
      emit(ProductCompareState.failure(exception));
    }
  }

  Future<void> _getCosmeticProductData(
    ProductCompareRequestModel requestModel,
    Emitter<ProductCompareState> emit,
  ) async {
    _productCategory = ProductCategory.personalCare;
    emit(const ProductCompareState.loading());
    try {
      final response = await _productDetailRepository.cosmeticProductCompare(
        request: requestModel,
      );

      if (response.isSuccess && response.data != null) {
        final sortedProducts = _sortCosmeticProducts(
          response.data!.data.products,
          requestModel.ids,
        );

        _cosmeticDetailResponseModel = sortedProducts;

        final sortedResponse = response.data!.copyWith(
          data: response.data!.data.copyWith(products: sortedProducts),
        );
        emit(ProductCompareState.success(cosmeticResult: sortedResponse));
      } else {
        emit(
          ProductCompareState.failure(
            UnknownNetworkException(
              message: "",
              statusCode: 0,
              originalError: "",
            ),
          ),
        );
      }
    } on Exception catch (exception) {
      emit(ProductCompareState.failure(exception));
    }
  }

  Future<void> _getFoodProductData(
    ProductCompareRequestModel requestModel,
    Emitter<ProductCompareState> emit,
  ) async {
    _productCategory = ProductCategory.food;
    emit(const ProductCompareState.loading());

    try {
      final response = await _productDetailRepository.foodProductCompare(
        request: requestModel,
      );

      if (response.isSuccess && response.data != null) {
        final sortedProducts = _sortFoodProducts(
          response.data!.data.products,
          requestModel.ids,
        );

        _foodDetailResponseModel = sortedProducts;

        final sortedResponse = response.data!.copyWith(
          data: response.data!.data.copyWith(products: sortedProducts),
        );
        emit(ProductCompareState.success(foodResult: sortedResponse));
      } else {
        emit(
          ProductCompareState.failure(
            UnknownNetworkException(
              message: "",
              statusCode: 0,
              originalError: "",
            ),
          ),
        );
      }
    } on Exception catch (exception) {
      emit(ProductCompareState.failure(exception));
    }
  }

  List<CleanerDetailResponseModel> _sortCleanerProducts(
    List<CleanerDetailResponseModel> products,
    List<String> requestIds,
  ) {
    final productMap = {
      for (var product in products) product.productId.toString(): product,
    };

    return requestIds
        .map((id) => productMap[id])
        .whereType<CleanerDetailResponseModel>()
        .toList();
  }

  List<CosmeticDetailResponseModel> _sortCosmeticProducts(
    List<CosmeticDetailResponseModel> products,
    List<String> requestIds,
  ) {
    final productMap = {
      for (var product in products) product.productId ?? '': product,
    };

    return requestIds
        .map((id) => productMap[id])
        .whereType<CosmeticDetailResponseModel>()
        .toList();
  }

  List<FoodDetailResponseModel> _sortFoodProducts(
    List<FoodDetailResponseModel> products,
    List<String> requestIds,
  ) {
    final productMap = {
      for (var product in products) product.productId.toString(): product,
    };

    return requestIds
        .map((id) => productMap[id])
        .whereType<FoodDetailResponseModel>()
        .toList();
  }
}
