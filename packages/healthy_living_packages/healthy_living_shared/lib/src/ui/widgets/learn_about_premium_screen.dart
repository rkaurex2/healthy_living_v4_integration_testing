import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class LearnAboutPremiumScreen extends StatelessWidget {
  LearnAboutPremiumScreen({required this.openFrom, super.key});

  final String openFrom;
  final iconKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final sharedLocalizations = HealthyLivingSharedLocalizations.of(context)!;
    final appBloc = context.read<AppBloc>();
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 14,
                horizontal: context.dsSpacing.sp400,
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: context.dsSizes.sz500,
                    height: context.dsSizes.sz500,
                    child: GestureDetector(
                      onTap: () {
                        context.pop();
                      },
                      child: DSImage.asset(
                        DSIcons.icArrowLeft,
                        width: context.dsSizes.sz500,
                        height: context.dsSizes.sz500,
                      ),
                    ),
                  ),

                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          width: 117,
                          height: 24,
                          child: DSImage.asset(
                            DSIcons.icHealthyLivingPrimaryLogo,
                            color: context.dsColors.surfacePrimaryDefault,
                          ),
                        ),
                        DSSpacingWidget.horizontal(
                          spacing: context.dsSpacing.sp200,
                        ),
                        DSPremiumBadge.orange(),
                      ],
                    ),
                  ),

                  SizedBox(
                    key: iconKey,
                    width: context.dsSizes.sz500,
                    height: context.dsSizes.sz500,
                    child: GestureDetector(
                      onTap: () {
                        InfoTooltipOverlay.show(
                          context,
                          targetKey: iconKey,
                          title:
                              sharedLocalizations
                                  .account_ingredientPreference_infoTitle,
                          message:
                              sharedLocalizations
                                  .account_ingredientPreference_infoDescription,
                        );
                      },
                      child: DSImage.asset(
                        DSIcons.icOtherInformation,
                        height: context.dsSizes.sz500,
                        width: context.dsSizes.sz500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: context.dsSpacing.sp400,
                  ),
                  child: _buildBodyContent(context),
                ),
              ),
            ),
            DSDivider(),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: context.dsSpacing.sp400,
                horizontal: context.dsSpacing.sp400,
              ),
              child: DSButtonPrimary(
                text: sharedLocalizations.general_gotIt,
                size: DSButtonSize.small,
                onPressed: () {
                  if (appBloc.isAuthenticated) {
                    DSModal.show(
                      context: context,
                      title:
                          sharedLocalizations
                              .productDetail_compareModal_makeMostInformedPurchase,
                      caption:
                          sharedLocalizations
                              .productDetail_ingredientModal_description,
                      centerImageWidget: DsModalCircleImage(
                        primaryImagePath: DSIcons.icCompareModalImage,
                        secondaryImagePath: DSIcons.icIngredientPreferences,
                      ),
                      primaryButtonType: DSModalPrimaryButtonType.dsSecondary,
                      primaryButtonText:
                          sharedLocalizations.general_premium_getPremium,
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
                          sharedLocalizations
                              .productDetail_compareModal_makeMostInformedPurchase,
                      caption:
                          sharedLocalizations
                              .productDetail_ingredientModal_authDescription,
                      centerImageWidget: DsModalCircleImage(
                        primaryImagePath: DSIcons.icCompareModalImage,
                        secondaryImagePath: DSIcons.icIngredientPreferences,
                      ),
                      primaryButtonType: DSModalPrimaryButtonType.dsSecondary,
                      primaryButtonText: sharedLocalizations.general_signIn,
                      secondaryButtonText:
                          sharedLocalizations.general_createAccount,
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
          ],
        ),
      ),
    );
  }

  Widget _buildBodyContent(BuildContext context) {
    final sharedLocalizations = HealthyLivingSharedLocalizations.of(context)!;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: context.dsSpacing.sp200),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Center(
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(context.dsRadius.rd400),
                  child: DSImage.asset(
                    DSIcons.icBuildingBlockImages,
                    height: MediaQuery.of(context).size.height * 0.39,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  right: 10,
                  top: 80,
                  child: Container(
                    decoration: BoxDecoration(
                      color: context.dsColors.surfaceSemanticErrorLight,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(0, -1),
                          blurRadius: 2,
                          color: Colors.black.withValues(alpha: 0.1),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(context.dsSpacing.sp400),
                      child: DSImage.asset(
                        DSIcons.icAvoid,
                        height: 40,
                        width: 40,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  right: 50,
                  top: 40,
                  child: Container(
                    decoration: BoxDecoration(
                      color: context.dsColors.surfaceAdditionalPurple50,
                      shape: BoxShape.circle,
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(context.dsSpacing.sp400),
                      child: DSImage.asset(
                        DSIcons.icPrefer,
                        height: 40,
                        width: 40,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          DSSpacingWidget.vertical(spacing: context.dsSpacing.sp600),
          DSText(
            text: sharedLocalizations.account_ingredientPreference_aboutTitle,
            textStyle: DSTextStyleType.primaryHeadingL,
            textColor: context.dsColors.textPrimaryDefault,
            fontWeight: DSTypography.fontWeightFw400,
          ),
          DSSpacingWidget.vertical(spacing: context.dsSpacing.sp500),
          DSText(
            text:
                sharedLocalizations
                    .account_ingredientPreference_aboutDescription,
            textStyle: DSTextStyleType.primaryBodyMRegular,
            textColor: context.dsColors.textNeutralOnWhite,
          ),
          DSSpacingWidget.vertical(spacing: context.dsSpacing.sp700),
        ],
      ),
    );
  }

  void _navigateToSignInScreen({required BuildContext context}) {
    final appBloc = context.read<AppBloc>();
    context
        .pushNamed(
          AppRoutes.authScreen.name,
          queryParameters: AuthScreenParams(isLogin: true).toQueryParameters(),
          extra: {StringConstants.openedFrom: openFrom},
        )
        .then((_) {
          appBloc.add(
            AppEvent.navigationDataAfterAuthenticationSaved(
              navigationDataAfterAuthentication:
                  NavigationDataAfterAuthentication(
                    searchTerm: null,
                    searchTabType: null,
                  ),
            ),
          );
        });
  }

  void _navigateToCreateAccountScreen({required BuildContext context}) {
    final appBloc = context.read<AppBloc>();
    context
        .pushNamed(
          AppRoutes.authScreen.name,
          queryParameters: AuthScreenParams(isLogin: false).toQueryParameters(),
          extra: {StringConstants.openedFrom: openFrom},
        )
        .then((_) {
          appBloc.add(
            AppEvent.navigationDataAfterAuthenticationSaved(
              navigationDataAfterAuthentication:
                  NavigationDataAfterAuthentication(
                    searchTerm: null,
                    searchTabType: null,
                  ),
            ),
          );
        });
  }
}
