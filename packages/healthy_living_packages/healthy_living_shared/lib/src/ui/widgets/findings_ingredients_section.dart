import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:healthy_living_shared/src/ui/widgets/findings_tab_content_widget.dart';

class FindingsIngredientsSection extends StatefulWidget {
  const FindingsIngredientsSection({
    required this.infoUIModel,
    required this.currentTab,
    this.onTabChanged,
    super.key,
  });

  final SubmitProductInfoParams infoUIModel;
  final Function(int index)? onTabChanged;
  final int currentTab;

  @override
  State<FindingsIngredientsSection> createState() =>
      _FindingsIngredientsSectionState();
}

class _FindingsIngredientsSectionState
    extends State<FindingsIngredientsSection> {
  List<FindingsHealthConcernUIModel> healthConcerns = [];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final localization = HealthyLivingSharedLocalizations.of(context)!;
    final healthConcerns = HealthyLivingSharedUtils.getHealthConcerns(
      widget.infoUIModel,
      localization,
    );
    final appBloc = context.read<AppBloc>();

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: context.dsColors.surfaceNeutralBackgroundMedium,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(context.dsRadius.rd600),
          topRight: Radius.circular(context.dsRadius.rd600),
        ),
      ),
      padding: EdgeInsets.symmetric(
        vertical: context.dsSpacing.sp500,
        horizontal: context.dsSpacing.sp400,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InstantFindingsIngredientsTabWidget(
                label: localization.general_ingredients_findings,
                isSelected: widget.currentTab == 0,
                onTap: () {
                  if (widget.currentTab != 0) {
                    widget.onTabChanged?.call(0);
                  }
                },
              ),
              DSSpacingWidget.horizontal(spacing: context.dsSpacing.sp400),
              InstantFindingsIngredientsTabWidget(
                label: localization.general_ingredients_ingredientsTitle,
                isSelected: widget.currentTab == 1,
                onTap: () {
                  if (widget.currentTab != 1) {
                    widget.onTabChanged?.call(1);
                  }
                },
              ),
            ],
          ),
          DSSpacingWidget.vertical(spacing: context.dsSpacing.sp400),

          if (widget.currentTab == 0)
            FindingsTabContentWidget(healthConcerns: healthConcerns)
          else
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: context.dsColors.surfaceNeutralContainerWhite,
                borderRadius: BorderRadius.circular(context.dsRadius.rd300),
              ),
              padding: EdgeInsets.all(context.dsSpacing.sp200),
              child: Column(
                children: [
                  if (!appBloc.isPremiumUser) ...[
                    DSSpacingWidget.vertical(spacing: context.dsSpacing.sp400),
                    IngredientPreferencesDialogue(
                      title:
                          localization
                              .productDetail_ingredients_productAlignWithIngredientPreferences,
                      actionText:
                          localization.productDetail_ingredients_learnMore,
                      onTapAction: () {
                        if (appBloc.isAuthenticated) {
                          DSModal.show(
                            context: context,
                            title:
                                localization
                                    .productDetail_compareModal_makeMostInformedPurchase,
                            caption:
                                localization
                                    .productDetail_ingredientModal_description,
                            centerImageWidget: DsModalCircleImage(
                              primaryImagePath: DSIcons.icCompareModalImage,
                              secondaryImagePath:
                                  DSIcons.icIngredientPreferences,
                            ),
                            primaryButtonType:
                                DSModalPrimaryButtonType.dsSecondary,
                            primaryButtonText:
                                localization.general_premium_getPremium,
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
                                localization
                                    .productDetail_compareModal_makeMostInformedPurchase,
                            caption:
                                localization
                                    .productDetail_ingredientModal_authDescription,
                            centerImageWidget: DsModalCircleImage(
                              primaryImagePath: DSIcons.icCompareModalImage,
                              secondaryImagePath:
                                  DSIcons.icIngredientPreferences,
                            ),
                            primaryButtonType:
                                DSModalPrimaryButtonType.dsSecondary,
                            primaryButtonText: localization.general_signIn,
                            secondaryButtonText:
                                localization.general_createAccount,
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
                  ],
                  IngredientsSection(infoUIModel: widget.infoUIModel),
                ],
              ),
            ),
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
          extra: {StringConstants.openedFrom: AppRoutes.myItems.name},
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
          extra: {StringConstants.openedFrom: AppRoutes.myItems.name},
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
