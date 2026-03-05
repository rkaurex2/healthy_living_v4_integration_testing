import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_product_detail/l10n/healthy_living_product_detail_localizations.dart';
import 'package:healthy_living_product_detail/src/ui/bloc/product_detail_bloc.dart';
import 'package:healthy_living_product_detail/src/ui/widget/ingredient_list_widget.dart';
import 'package:healthy_living_product_detail/src/ui/widget/packaging_info_section.dart';
import 'package:healthy_living_product_detail/src/ui/widget/product_verified_dialogue.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart'
    show
        AppBloc,
        AppEvent,
        AppRoutes,
        AuthScreenParams,
        HazardLevelMapper,
        HealthyLivingSharedLocalizations,
        IngredientDetailModel,
        IngredientDetailScreenParams,
        IngredientItemUIModel,
        IngredientPreferenceIndicatorModel,
        IngredientPreferencesDialogue,
        NavigationDataAfterAuthentication,
        PaywallSource,
        PremiumPurchasesBloc,
        PremiumPurchasesEvent,
        ProductCategory,
        SmartTitleCaseExtension,
        StringConstants,
        Validate;

class IngredientsSection extends StatelessWidget {
  const IngredientsSection({required this.productId, super.key});

  final int productId;

  @override
  Widget build(BuildContext context) {
    final localization = HealthyLivingProductDetailLocalizations.of(context)!;
    final bloc = context.read<ProductDetailBloc>();
    final appBloc = context.read<AppBloc>();
    final isVerifiedProduct = bloc.productBasicDetail?.isEwgVerified == true;
    final productCategory = bloc.productCategory;
    final isFoodProductCategory = productCategory == ProductCategory.food;
    final ingredientItems = _getIngredients(
      context: context,
      productCategory: productCategory,
      foodProductIngredients: bloc.foodProductIngredients,
      ingredients: bloc.productBasicDetail?.ingredients ?? [],
      ingredientPreferenceIndicatorModel:
          bloc.productBasicDetail?.ingredientPreferenceLabels,
    );
    final sharedLocalization = HealthyLivingSharedLocalizations.of(context)!;

    return ClipRRect(
      borderRadius: BorderRadius.circular(context.dsRadius.rd300),
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: context.dsColors.surfaceNeutralContainerWhite,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (!bloc.hasIngredientPreferenceSet && !appBloc.isPremiumUser) ...{
              DSSpacingWidget.vertical(spacing: context.dsSpacing.sp400),
              Padding(
                padding:
                    isFoodProductCategory
                        ? EdgeInsets.only(
                          left: context.dsSpacing.sp400,
                          top: context.dsSpacing.sp200,
                          right: context.dsSpacing.sp400,
                          bottom: context.dsSpacing.sp200,
                        )
                        : EdgeInsets.all(context.dsSpacing.sp200),
                child: IngredientPreferencesDialogue(
                  title:
                      sharedLocalization
                          .productDetail_ingredients_productAlignWithIngredientPreferences,
                  actionText:
                      sharedLocalization.productDetail_ingredients_learnMore,
                  onTapAction: () {
                    appBloc.add(
                      AppEvent.productDetailsSaved(
                        productId: productId,
                        productCategory: productCategory,
                        openPaywallAfterAuth:
                            appBloc.isAuthenticated ? false : true,
                      ),
                    );
                    if (appBloc.isAuthenticated) {
                      DSModal.show(
                        context: context,
                        title:
                            sharedLocalization
                                .productDetail_compareModal_makeMostInformedPurchase,
                        caption:
                            sharedLocalization
                                .productDetail_ingredientModal_description,
                        centerImageWidget: DsModalCircleImage(
                          primaryImagePath: DSIcons.icCompareModalImage,
                          secondaryImagePath: DSIcons.icIngredientPreferences,
                        ),
                        primaryButtonType: DSModalPrimaryButtonType.dsSecondary,
                        primaryButtonText:
                            sharedLocalization.general_premium_getPremium,
                        onPrimaryPressed: () {
                          context.pop();
                          context.read<PremiumPurchasesBloc>().add(
                            PremiumPurchasesEvent.paywallPresented(
                              paywallSource: PaywallSource.homeGetPremium,
                            ),
                          );
                        },
                        buttonSize: DSButtonSize.small,
                      );
                    } else {
                      DSModal.show(
                        context: context,
                        title:
                            sharedLocalization
                                .productDetail_compareModal_makeMostInformedPurchase,
                        caption:
                            sharedLocalization
                                .productDetail_ingredientModal_authDescription,
                        centerImageWidget: DsModalCircleImage(
                          primaryImagePath: DSIcons.icCompareModalImage,
                          secondaryImagePath: DSIcons.icIngredientPreferences,
                        ),
                        primaryButtonType: DSModalPrimaryButtonType.dsSecondary,
                        primaryButtonText: sharedLocalization.general_signIn,
                        secondaryButtonText:
                            sharedLocalization.general_createAccount,
                        onPrimaryPressed: () {
                          context.pop();
                          _navigateToSignInScreen(context: context);
                        },
                        onSecondaryPressed: () {
                          context.pop();
                          _navigateToCreateAccountScreen(context: context);
                        },
                        buttonSize: DSButtonSize.small,
                      );
                    }
                  },
                ),
              ),
            },
            if (isVerifiedProduct == true) ...{
              Padding(
                padding: EdgeInsets.all(context.dsSpacing.sp200),
                child: ProductVerifiedDialogue(),
              ),
            },
            if (isFoodProductCategory &&
                bloc.labelIngredients.isValidValue) ...{
              Padding(
                padding: EdgeInsets.only(
                  left: context.dsSpacing.sp400,
                  top: context.dsSpacing.sp600,
                  right: context.dsSpacing.sp400,
                ),
                child: PackagingInfoSection(
                  title:
                      localization
                          .productDetail_labelInfo_ingredientsFromPackaging,
                  value: bloc.labelIngredients!,
                ),
              ),
            },
            if (isFoodProductCategory) ...{
              DSSpacingWidget.vertical(spacing: context.dsSpacing.sp500),
            },
            if (!isFoodProductCategory) ...{
              IngredientListWidget(
                isVerifiedProduct: isVerifiedProduct == true,
                items: ingredientItems,
                itemPadding:
                    isFoodProductCategory
                        ? EdgeInsets.all(context.dsSpacing.sp400)
                        : null,
                productCategory: productCategory,
                onTap: (index) {
                  if (bloc.productCategory != ProductCategory.food) {
                    String routeName;
                    final routerUri = GoRouterState.of(context).uri.toString();
                    if (routerUri.contains(AppRoutes.findProductDetail.path)) {
                      routeName = AppRoutes.searchIngredientDetails.name;
                    } else if (routerUri.contains(
                      AppRoutes.myItemsProductDetail.path,
                    )) {
                      routeName = AppRoutes.myItemsIngredientDetails.name;
                    } else {
                      routeName = AppRoutes.ingredientDetails.name;
                    }
                    context.pushNamed(
                      routeName,
                      queryParameters:
                          IngredientDetailScreenParams(
                            ingredientId: ingredientItems[index].id.toString(),
                          ).toQueryParameters(),
                    );
                  }
                },
              ),
            },
          ],
        ),
      ),
    );
  }

  List<IngredientItemUIModel> _getIngredients({
    required BuildContext context,
    required ProductCategory? productCategory,
    required List<String> foodProductIngredients,
    required List<IngredientDetailModel> ingredients,
    IngredientPreferenceIndicatorModel? ingredientPreferenceIndicatorModel,
  }) {
    final healthyLivingSharedLocalizations =
        HealthyLivingSharedLocalizations.of(context)!;
    return productCategory == ProductCategory.food
        ? foodProductIngredients
            .map(
              (foodIngredient) => IngredientItemUIModel(
                /// Food ingredients are picked from label_ingredients string,
                /// it does not have any id, so not assigning it here
                name: foodIngredient.toSmartTitleCase(),
                isAvoid: ingredientPreferenceIndicatorModel?.avoidedIngredients
                    .any(
                      (element) =>
                          element.name.toLowerCase() ==
                          foodIngredient.toLowerCase(),
                    ),
                isPrefer: ingredientPreferenceIndicatorModel
                    ?.preferredIngredients
                    .any(
                      (element) =>
                          element.name.toLowerCase() ==
                          foodIngredient.toLowerCase(),
                    ),
              ),
            )
            .toList()
        : ingredients
            .map(
              (ingredient) => IngredientItemUIModel(
                id: ingredient.id,
                name: ingredient.name,
                score: ingredient.score,
                scoreBackgroundColor: ingredient.hazardLevel?.displayColor(
                  context,
                ),
                hazardText: ingredient.hazardLevel?.displayText(
                  healthyLivingSharedLocalizations,
                ),
                dataText:
                    ingredient.dataText.isValidValue
                        ? healthyLivingSharedLocalizations
                            .healthyLivingShared_product_dataAvailability(
                              ingredient.dataText!,
                            )
                        : null,
                isAvoid: ingredientPreferenceIndicatorModel?.avoidedIngredients
                    .any(
                      (element) =>
                          element.name.toLowerCase() ==
                          ingredient.name.toLowerCase(),
                    ),
                isPrefer: ingredientPreferenceIndicatorModel
                    ?.preferredIngredients
                    .any(
                      (element) =>
                          element.name.toLowerCase() ==
                          ingredient.name.toLowerCase(),
                    ),
              ),
            )
            .toList();
  }

  void _navigateToSignInScreen({required BuildContext context}) {
    context.pushNamed(
      AppRoutes.authScreen.name,
      queryParameters: AuthScreenParams(isLogin: true).toQueryParameters(),
      extra: {StringConstants.openedFrom: AppRoutes.productDetail.name},
    );
  }

  void _navigateToCreateAccountScreen({required BuildContext context}) {
    context.pushNamed(
      AppRoutes.authScreen.name,
      queryParameters: AuthScreenParams(isLogin: false).toQueryParameters(),
      extra: {StringConstants.openedFrom: AppRoutes.productDetail.name},
    );
  }
}
