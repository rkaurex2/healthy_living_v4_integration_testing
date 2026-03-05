import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_product_detail/l10n/healthy_living_product_detail_localizations.dart';
import 'package:healthy_living_product_detail/resources/product_detail_icons.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class ProductDetailBottomAction extends StatelessWidget {
  final VoidCallback? onCompare;
  final VoidCallback? onAddToList;
  final VoidCallback? onBuy;
  final bool showBuy;
  final Function(bool shouldReset) onSaveProductDetailForNavigation;

  const ProductDetailBottomAction({
    required this.onSaveProductDetailForNavigation,
    super.key,
    this.onCompare,
    this.onAddToList,
    this.onBuy,
    this.showBuy = true,
  });

  @override
  Widget build(BuildContext context) {
    final localization = HealthyLivingProductDetailLocalizations.of(context)!;
    final shareLocalization = HealthyLivingSharedLocalizations.of(context)!;
    final totalActionButton = 2 + (showBuy ? 1 : 0);

    return Container(
      color: context.dsColors.surfacePrimaryDefault,
      padding: EdgeInsets.symmetric(
        horizontal: context.dsSpacing.sp300,
        vertical: context.dsSpacing.sp200,
      ),
      child: Row(
        mainAxisAlignment:
            totalActionButton == 2
                ? MainAxisAlignment.center
                : MainAxisAlignment.spaceBetween,
        children: [
          BlocBuilder<AppBloc, AppState>(
            buildWhen: (_, current) => current is SubscribeToPremiumSuccess,
            builder: (context, state) {
              final appBloc = context.read<AppBloc>();
              if (!appBloc.isPremiumUser) {
                return BlocListener<
                  PremiumPurchasesBloc,
                  PremiumPurchasesState
                >(
                  listenWhen: (_, current) {
                    return current is PaywallLoadSuccess &&
                        current.paywallSource ==
                            PaywallSource.productDetailCompare;
                  },
                  listener: (context, state) {
                    if (state is PaywallLoadSuccess &&
                        (state.paywallResult == AppPaywallResult.purchased ||
                            state.paywallResult == AppPaywallResult.restored)) {
                      context
                          .pushNamed(
                            AppRoutes.entitlementVerificationScreen.name,
                          )
                          .then((result) {
                            if (!context.mounted) {
                              return;
                            }

                            HealthyLivingSharedUtils.entitlementVerificationScreenOnComplete(
                              context: context,
                              result: result,
                            );
                          });
                    }
                  },
                  child: Expanded(
                    child: DSButtonPrimary(
                      size: DSButtonSize.small,
                      padding: EdgeInsets.symmetric(
                        vertical: context.dsSpacing.sp200,
                      ),
                      leadingIconPath: ProductDetailIcons.icCompare,
                      trailingIconPath: DSIcons.icEssentialLock,
                      text: localization.productDetail_bottomAction_compare,
                      textStyle: DSTextStyleType.primaryBodySMedium,
                      leadingIconColor: context.dsColors.iconOnSurfaceDefault,
                      useCustomLeadingIconColor: true,
                      useCustomTrailingIconColor: true,
                      leadingIconSize: DSButtonIconSize.small,
                      trailingIconSize: DSButtonIconSize.large,
                      onPressed: () {
                        if (appBloc.isAuthenticated) {
                          DSModal.show(
                            context: context,
                            title:
                                shareLocalization
                                    .productDetail_compareModal_makeMostInformedPurchase,
                            caption:
                                localization
                                    .productDetail_compareModal_description,
                            centerImageWidget: DsModalCircleImage(
                              primaryImagePath: DSIcons.icCompareModalImage,
                              secondaryImagePath: DSIcons.icCompareDisable,
                            ),
                            primaryButtonType:
                                DSModalPrimaryButtonType.dsSecondary,
                            primaryButtonText:
                                localization
                                    .productDetail_compareModal_getPremium,
                            onPrimaryPressed: () {
                              context.pop();
                              context.read<PremiumPurchasesBloc>().add(
                                PremiumPurchasesEvent.paywallPresented(
                                  paywallSource:
                                      PaywallSource.productDetailCompare,
                                ),
                              );
                            },
                            buttonSize: DSButtonSize.small,
                          );
                        } else {
                          DSModal.show(
                            context: context,
                            title:
                                shareLocalization
                                    .productDetail_compareModal_makeMostInformedPurchase,
                            caption:
                                shareLocalization
                                    .productDetail_compareModal_unAuthenticateDescription,
                            centerImageWidget: DsModalCircleImage(
                              primaryImagePath: DSIcons.icCompareModalImage,
                              secondaryImagePath: DSIcons.icCompareDisable,
                            ),
                            primaryButtonType:
                                DSModalPrimaryButtonType.dsSecondary,
                            primaryButtonText: shareLocalization.general_signIn,
                            secondaryButtonText:
                                shareLocalization.general_createAccount,
                            onPrimaryPressed: () {
                              context.pop();
                              onSaveProductDetailForNavigation(false);
                              context
                                  .pushNamed(
                                    AppRoutes.authScreen.name,
                                    queryParameters:
                                        AuthScreenParams(
                                          isLogin: true,
                                        ).toQueryParameters(),
                                  )
                                  .then((result) {
                                    onSaveProductDetailForNavigation(true);
                                  });
                            },
                            onSecondaryPressed: () {
                              context.pop();
                              onSaveProductDetailForNavigation(false);
                              context
                                  .pushNamed(
                                    AppRoutes.authScreen.name,
                                    queryParameters:
                                        AuthScreenParams(
                                          isLogin: false,
                                        ).toQueryParameters(),
                                  )
                                  .then((result) {
                                    onSaveProductDetailForNavigation(true);
                                  });
                            },
                            buttonSize: DSButtonSize.small,
                          );
                        }
                      },
                    ),
                  ),
                );
              }
              return Expanded(
                // KEY: TestKeys.compareProductsButton
                child: DSButtonPrimary(
                  key: const Key('compare_products_button'),
                  size: DSButtonSize.small,
                  leadingIconPath: ProductDetailIcons.icCompare,
                  text: localization.productDetail_bottomAction_compare,
                  textStyle: DSTextStyleType.primaryBodySMedium,
                  leadingIconColor: context.dsColors.iconOnSurfaceDefault,
                  useCustomLeadingIconColor: true,
                  leadingIconSize: DSButtonIconSize.small,
                  onPressed: onCompare,
                ),
              );
            },
          ),
          Expanded(
            // KEY: TestKeys.addToListButton
            child: DSButtonPrimary(
              key: const Key('add_to_list_button'),
              size: DSButtonSize.small,
              leadingIconPath: ProductDetailIcons.icList,
              text: localization.productDetail_bottomAction_addToList,
              textStyle: DSTextStyleType.primaryBodySMedium,
              leadingIconSize: DSButtonIconSize.small,
              onPressed: onAddToList,
            ),
          ),
          if (showBuy) ...{
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: context.dsSpacing.sp300),
                // KEY: TestKeys.buyNowButton
                child: DSButtonNeutral.fill(
                  key: const Key('buy_now_button'),
                  size: DSButtonSize.small,
                  leadingIconPath: ProductDetailIcons.icShoppingBuy,
                  text: localization.productDetail_bottomAction_buy,
                  onPressed: onBuy,
                ),
              ),
            ),
          },
        ],
      ),
    );
  }
}
