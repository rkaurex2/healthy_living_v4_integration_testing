import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_product_detail/l10n/healthy_living_product_detail_localizations.dart';
import 'package:healthy_living_product_detail/src/domain/models/cleaner_detail_response_model.dart';
import 'package:healthy_living_product_detail/src/domain/models/cosmetic_detail_response_model.dart';
import 'package:healthy_living_product_detail/src/domain/models/food_detail_response_model.dart';
import 'package:healthy_living_product_detail/src/ui/bloc/product_compare/product_compare_bloc.dart';
import 'package:healthy_living_product_detail/src/ui/bloc/product_compare/product_compare_state.dart';
import 'package:healthy_living_product_detail/src/ui/model/product_comparison_ui_model.dart';
import 'package:healthy_living_product_detail/src/ui/models/finding_section_params.dart';
import 'package:healthy_living_product_detail/src/ui/models/finding_section_screen_params.dart';
import 'package:healthy_living_product_detail/src/ui/widget/findings_section.dart';
import 'package:healthy_living_product_detail/src/ui/widget/ingredient_preferences_section.dart';
import 'package:healthy_living_product_detail/src/ui/widget/product_compare_ingredients_section.dart';
import 'package:healthy_living_product_detail/src/ui/widget/product_compare_shimmer/product_compare_shimmer.dart';
import 'package:healthy_living_product_detail/src/ui/widget/product_compare_top_findings.dart';
import 'package:healthy_living_product_detail/src/ui/widget/product_comparison_collapsed_header_delegate.dart';
import 'package:healthy_living_product_detail/src/ui/widget/product_comparison_health_concerns_section.dart';
import 'package:healthy_living_product_detail/src/ui/widget/product_comparison_item.dart';
import 'package:healthy_living_product_detail/src/ui/widget/product_comparison_item_bottom.dart';
import 'package:healthy_living_product_detail/src/ui/widget/product_comparison_section_header.dart';
import 'package:healthy_living_product_detail/src/utils/product_details_utils.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class ProductComparisonContentScreen extends StatefulWidget {
  const ProductComparisonContentScreen({
    required this.productComparisonExtraParams,
    super.key,
  });

  final ProductComparisonExtraParams productComparisonExtraParams;

  @override
  State<ProductComparisonContentScreen> createState() =>
      _ProductComparisonContentScreenState();
}

class _ProductComparisonContentScreenState
    extends State<ProductComparisonContentScreen> {
  final ScrollController _scrollController = ScrollController();
  final GlobalKey _topSummaryKey = GlobalKey();

  final ValueNotifier<bool> _showCollapsedNotifier = ValueNotifier<bool>(false);
  final ValueNotifier<double> _topSummaryHeightNotifier = ValueNotifier<double>(
    0,
  );

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    _topSummaryHeightNotifier.dispose();
    _showCollapsedNotifier.dispose();
    super.dispose();
  }

  void _measureTopSummaryHeight() {
    if (!mounted) return;

    final context = _topSummaryKey.currentContext;
    if (context == null) return;

    final renderObject = context.findRenderObject();
    if (renderObject is RenderBox) {
      final height = renderObject.size.height;

      if (_topSummaryHeightNotifier.value != height) {
        _topSummaryHeightNotifier.value = height;
      }
    }
  }

  void _onScroll() {
    final height = _topSummaryHeightNotifier.value;
    if (height <= 0) return;
    final shouldShow = _scrollController.offset >= height - 12;
    if (_showCollapsedNotifier.value != shouldShow) {
      _showCollapsedNotifier.value = shouldShow;
    }
  }

  @override
  Widget build(BuildContext context) {
    final localizations = HealthyLivingProductDetailLocalizations.of(context)!;
    final analytics = injector.get<CompareProductAnalytics>();
    // KEY: TestKeys.compareScreen
    return SafeArea(
      key: const Key('compare_screen'),
      top: false,
      child: ValueListenableBuilder<bool>(
        valueListenable: _showCollapsedNotifier,
        builder: (context, isCollapsed, _) {
          return Column(
            children: [
              Container(
                color: context.dsColors.surfaceNeutralContainerWhite,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SafeArea(
                      bottom: false,
                      child: HeaderWithTitle(
                        title:
                            localizations
                                .productDetail_productComparison_productComparisonTitle,
                        leadIcon: DSIcons.icArrowLeft,
                        onTapLeadIcon: () => context.pop(),
                      ),
                    ),
                    const DSDivider(),
                  ],
                ),
              ),
              Expanded(
                child: BlocConsumer<ProductCompareBloc, ProductCompareState>(
                  listenWhen:
                      (prev, curr) =>
                          curr is ProductCompareLoadFailure ||
                          curr is ProductCompareLoadSuccess,
                  listener: (context, state) async {
                    if (state is ProductCompareLoadFailure) {
                      final errorMessage =
                          HealthyLivingSharedUtils.getServerErrorMessage(
                            localizations:
                                HealthyLivingSharedLocalizations.of(context)!,
                            exception: state.exception,
                          );

                      /// Logs GA4 Compare Failure Event
                      await analytics.logCompareFail(
                        failureMessage: errorMessage,
                        firstProductID:
                            widget.productComparisonExtraParams.productIds[0],
                        secondProductID:
                            widget.productComparisonExtraParams.productIds[1],
                      );
                      if (!context.mounted) return;
                      if (errorMessage.isValidValue) {
                        DSToast.showErrorToast(
                          context: context,
                          title: errorMessage,
                        );
                      }
                    } else if (state is ProductCompareLoadSuccess) {
                      /// Logs GA4 Compare Success Event
                      await analytics.logCompareSuccess(
                        firstProductID:
                            widget.productComparisonExtraParams.productIds[0],
                        secondProductID:
                            widget.productComparisonExtraParams.productIds[1],
                      );
                    }
                  },
                  buildWhen:
                      (prev, curr) =>
                          curr is ProductCompareLoadSuccess ||
                          curr is ProductCompareLoadInProgress,
                  builder: (context, state) {
                    if (state is ProductCompareLoadInProgress) {
                      return const ProductComparisonShimmer();
                    }
                    if (state is! ProductCompareLoadSuccess) {
                      return const SizedBox.shrink();
                    }
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      _measureTopSummaryHeight();
                    });

                    late ProductComparisonUiModel leftProduct;
                    late ProductComparisonUiModel rightProduct;

                    if (state.cosmeticResult != null) {
                      final leftItem = state.cosmeticResult!.data.products[0];
                      final rightItem = state.cosmeticResult!.data.products[1];
                      leftProduct = _buildUiFromCosmetic(leftItem);
                      rightProduct = _buildUiFromCosmetic(rightItem);
                    } else if (state.cleanersResult != null) {
                      final leftItem = state.cleanersResult!.data.products[0];
                      final rightItem = state.cleanersResult!.data.products[1];
                      leftProduct = _buildUiFromCleaner(leftItem);
                      rightProduct = _buildUiFromCleaner(rightItem);
                    } else if (state.foodResult != null) {
                      final leftItem = state.foodResult!.data.products[0];
                      final rightItem = state.foodResult!.data.products[1];
                      leftProduct = _buildUiFromFood(leftItem);
                      rightProduct = _buildUiFromFood(rightItem);
                    }

                    final leftFindingParams = FindingSectionParams(
                      cosmeticConcernsModel:
                          state.cosmeticResult?.data.products.first.concerns,
                      cleanerDetailsScoresModel:
                          state
                              .cleanersResult
                              ?.data
                              .products
                              .first
                              .currentFormulation
                              ?.scores,
                      foodDetailScoresModel:
                          state.foodResult?.data.products.first.scores,
                      sunscreenDetailsModel:
                          state.cosmeticResult?.data.products.first.sunscreen,
                    );
                    final rightFindingParams = FindingSectionParams(
                      cosmeticConcernsModel:
                          state.cosmeticResult?.data.products.last.concerns,
                      cleanerDetailsScoresModel:
                          state
                              .cleanersResult
                              ?.data
                              .products
                              .last
                              .currentFormulation
                              ?.scores,
                      foodDetailScoresModel:
                          state.foodResult?.data.products.last.scores,
                      sunscreenDetailsModel:
                          state.cosmeticResult?.data.products.last.sunscreen,
                    );

                    return MediaQuery.removePadding(
                      context: context,
                      removeTop: true,
                      child: CustomScrollView(
                        controller: _scrollController,
                        slivers: [
                          SliverToBoxAdapter(
                            child: Container(
                              key: _topSummaryKey,
                              color:
                                  context.dsColors.surfaceNeutralContainerWhite,
                              child: IntrinsicHeight(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                          left: context.dsSpacing.sp400,
                                          right: context.dsSpacing.sp400,
                                          top: context.dsSpacing.sp500,
                                        ),
                                        child: ProductComparisonItem(
                                          productComparisonUiModel: leftProduct,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      color:
                                          context.dsColors.strokeNeutralDefault,
                                      width: 1,
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                          left: context.dsSpacing.sp400,
                                          right: context.dsSpacing.sp400,
                                          top: context.dsSpacing.sp500,
                                        ),
                                        child: ProductComparisonItem(
                                          productComparisonUiModel:
                                              rightProduct,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          isCollapsed
                              ? SliverPersistentHeader(
                                pinned: true,
                                delegate:
                                    ProductComparisonCollapsedHeaderDelegate(
                                      leftProduct: leftProduct,
                                      rightProduct: rightProduct,
                                      height: 93.0,
                                      isVisible: true,
                                    ),
                              )
                              : const SliverToBoxAdapter(
                                child: SizedBox.shrink(),
                              ),

                          const SliverToBoxAdapter(child: SizedBox.shrink()),
                          SliverToBoxAdapter(
                            child: Container(
                              color:
                                  context.dsColors.surfaceNeutralContainerWhite,
                              child: IntrinsicHeight(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                          left: context.dsSpacing.sp400,
                                          right: context.dsSpacing.sp400,
                                          bottom: context.dsSpacing.sp500,
                                        ),
                                        child: ProductComparisonItemBottom(
                                          productComparisonUiModel: leftProduct,
                                          preferenceBadgePadding:
                                              ProductDetailsUtils.hasAnyPreference(
                                                rightProduct
                                                    .ingredientPreferenceIndicatorModel,
                                              ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 1,
                                      color:
                                          context.dsColors.strokeNeutralDefault,
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                          left: context.dsSpacing.sp400,
                                          right: context.dsSpacing.sp400,
                                          bottom: context.dsSpacing.sp500,
                                        ),
                                        child: ProductComparisonItemBottom(
                                          productComparisonUiModel:
                                              rightProduct,
                                          preferenceBadgePadding:
                                              ProductDetailsUtils.hasAnyPreference(
                                                leftProduct
                                                    .ingredientPreferenceIndicatorModel,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),

                          const SliverToBoxAdapter(child: DSDivider()),

                          SliverPadding(
                            padding: EdgeInsets.symmetric(
                              horizontal: context.dsSpacing.sp400,
                              vertical: 20,
                            ),
                            sliver: SliverToBoxAdapter(
                              child: IngredientPreferencesCard(
                                leftProductPreferenceIndicatorModel:
                                    leftProduct
                                        .ingredientPreferenceIndicatorModel,
                                rightProductPreferenceIndicatorModel:
                                    rightProduct
                                        .ingredientPreferenceIndicatorModel,
                              ),
                            ),
                          ),
                          SliverPadding(
                            padding: EdgeInsets.symmetric(
                              horizontal: context.dsSpacing.sp400,
                              vertical: 20,
                            ),
                            sliver: const SliverToBoxAdapter(
                              child: ProductCompareIngredientsSection(),
                            ),
                          ),
                          const SliverToBoxAdapter(
                            child: DSSpacingWidget.vertical(spacing: 20),
                          ),
                          SliverPadding(
                            padding: EdgeInsets.symmetric(
                              horizontal: context.dsSpacing.sp400,
                            ),
                            sliver: SliverToBoxAdapter(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  state.foodResult != null
                                      ? ProductComparisonSectionHeader(
                                        title:
                                            localizations
                                                .productDetail_findings_healthConcerns,
                                      )
                                      : ProductComparisonHealthConcernsSection(
                                        isEWGVerifiedFirstProduct:
                                            leftProduct.isVerified,
                                        isEWGVerifiedSecondProduct:
                                            rightProduct.isVerified,
                                      ),
                                  DSSpacingWidget.vertical(
                                    spacing: context.dsSpacing.sp400,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          if (!(leftProduct.isVerified &&
                              rightProduct.isVerified))
                            SliverToBoxAdapter(
                              child: Column(
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(
                                      left: context.dsSpacing.sp400,
                                      right: context.dsSpacing.sp400,
                                      bottom: context.dsSpacing.sp200,
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                        context.dsRadius.rd300,
                                      ),
                                    ),
                                    child: FindingsSection(
                                      findingSectionParam:
                                          FindingSectionScreenParams(
                                            findingSectionScreenParams:
                                                leftFindingParams,
                                            score: '',
                                            title: '',
                                            isProductCompare: true,
                                            rightFindingSectionScreenParams:
                                                rightFindingParams,
                                            isRightProductVerified:
                                                rightProduct.isVerified,
                                            isLeftProductVerified:
                                                leftProduct.isVerified,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          if (state.foodResult != null) ...[
                            const SliverToBoxAdapter(
                              child: DSSpacingWidget.vertical(spacing: 10),
                            ),
                            SliverPadding(
                              padding: EdgeInsets.symmetric(
                                horizontal: context.dsSpacing.sp400,
                                vertical: 20,
                              ),
                              sliver: const SliverToBoxAdapter(
                                child: ProductCompareTopFindings(),
                              ),
                            ),
                          ],
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  ProductComparisonUiModel _buildUiFromCosmetic(
    CosmeticDetailResponseModel cosmetic,
  ) {
    final scoreSubstrings = cosmetic.scoreString?.split("_") ?? [];
    final grade = scoreSubstrings[0];

    return ProductComparisonUiModel(
      productImage: cosmetic.imageUrl ?? "",
      productScore: grade,
      productBrand: cosmetic.brandName ?? "",
      productName: cosmetic.name ?? "",
      productSize: cosmetic.scoreMax ?? "",
      isVerified: cosmetic.ewgVerified ?? false,
      retailers: cosmetic.retailers ?? [],
      productId: cosmetic.productId ?? "",
      productCategory: ProductCategory.personalCare,
      ingredientPreferenceIndicatorModel: cosmetic.ingredientPreferenceLabels,
    );
  }

  ProductComparisonUiModel _buildUiFromCleaner(
    CleanerDetailResponseModel cleanersData,
  ) {
    final grade = cleanersData.grade ?? "";
    final isEwgVerified =
        grade.toLowerCase() == StringConstants.verified.toLowerCase();

    return ProductComparisonUiModel(
      productImage: cleanersData.imageUrl ?? "",
      productScore: cleanersData.grade ?? "",
      productBrand: cleanersData.brandName ?? "",
      productName: cleanersData.name ?? "",
      productSize: "",
      isVerified: isEwgVerified,
      retailers: cleanersData.retailers ?? [],
      productCategory: ProductCategory.cleaner,
      productId: cleanersData.productId.toString(),
      ingredientPreferenceIndicatorModel:
          cleanersData.ingredientPreferenceLabels,
    );
  }

  ProductComparisonUiModel _buildUiFromFood(FoodDetailResponseModel foodData) {
    return ProductComparisonUiModel(
      productImage: foodData.imageUrl ?? "",
      productScore: foodData.scores!.overall.toString(),
      productBrand: foodData.brandName ?? "",
      productName: foodData.name ?? "",
      productSize: foodData.productSize ?? "",
      isVerified: false,
      retailers: foodData.retailers ?? [],
      productId: foodData.productId.toString(),
      productCategory: ProductCategory.food,
      ingredientPreferenceIndicatorModel: foodData.ingredientPreferenceLabels,
    );
  }
}
