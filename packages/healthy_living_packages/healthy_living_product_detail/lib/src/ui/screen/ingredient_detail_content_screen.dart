import 'package:design_system/design_system.dart'
    show
        DSButtonPrimary,
        DSButtonSize,
        DSIcons,
        DSSpacingWidget,
        DSText,
        DSTextStyleType,
        DSToast;
import 'package:design_system/theme/theme_data/theme_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_product_detail/l10n/healthy_living_product_detail_localizations.dart';
import 'package:healthy_living_product_detail/src/ui/bloc/ingredient_details/ingredient_details_bloc.dart';
import 'package:healthy_living_product_detail/src/ui/bloc/ingredient_details/ingredient_details_state.dart';
import 'package:healthy_living_product_detail/src/ui/widget/ingredient_detail/ingredient_detail_shimmer.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart'
    show
        AppRoutes,
        HazardLevelMapper,
        HeaderRatingScoreBadge,
        HeaderWithTitle,
        HealthyLivingSharedLocalizations,
        HealthyLivingSharedUtils,
        RatingHazardLevelExtension,
        Validate,
        WebviewScreenParams;

class IngredientDetailsContentScreen extends StatelessWidget {
  const IngredientDetailsContentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final productDetailLocalizations =
        HealthyLivingProductDetailLocalizations.of(context)!;
    final sharedLocalizations = HealthyLivingSharedLocalizations.of(context)!;

    // KEY: TestKeys.ingredientDetailScreen
    return Scaffold(
      key: const Key('ingredient_detail_screen'),
      backgroundColor: context.dsColors.surfaceNeutralBackgroundLight,
      body: SafeArea(
        child: Column(
          children: [
            HeaderWithTitle(
              title:
                  productDetailLocalizations
                      .productDetail_ingredient_ingredientDetailScreenTitle,
              leadIcon: DSIcons.icArrowLeft,
              textStyle: DSTextStyleType.primaryHeadingSBold,
              onTapLeadIcon: () {
                if (context.canPop()) {
                  context.pop();
                }
              },
            ),
            BlocConsumer<IngredientDetailsBloc, IngredientDetailsState>(
              listenWhen: (_, current) {
                return current is IngredientDetailsLoadFailure;
              },
              listener: (context, state) {
                if (state is IngredientDetailsLoadFailure) {
                  final errorMessage =
                      HealthyLivingSharedUtils.getServerErrorMessage(
                        localizations: sharedLocalizations,
                        exception: state.exception,
                      );
                  DSToast.show(
                    context: context,
                    title: errorMessage,
                    leadingIconPath: DSIcons.icWarning,
                  );
                }
              },
              buildWhen: (_, current) {
                return [
                  IngredientDetailsLoadInProgress,
                  IngredientDetailsLoadSuccess,
                ].contains(current.runtimeType);
              },
              builder: (context, state) {
                if (state is IngredientDetailsLoadInProgress) {
                  return const IngredientDetailsShimmer();
                } else if (state is IngredientDetailsLoadSuccess) {
                  final data = state.data;
                  final personalCareMaxScore = data.webscore;
                  final personalCareMinScore = data.webscoreMin;
                  final personalCareScoreText = getPersonalCareScoreText(
                    minScore: personalCareMinScore.toString(),
                    maxScore: personalCareMaxScore.toString(),
                  );
                  final personalCareScoreColor = personalCareMaxScore
                      .toString()
                      .ratingHazardLevel
                      ?.displayColor(context);
                  final cleanerBestScore = data.gradeBest;
                  final cleanerScoreColor = cleanerBestScore.ratingHazardLevel
                      ?.displayColor(context);
                  final isPresentInCosmeticProducts = data.countCosmetics > 0;
                  final isPresentInCleanerProducts = data.countCleaners > 0;
                  final shouldDisplaySkinDeepCTA =
                      isPresentInCosmeticProducts &&
                      data.skinDeepWebIngredientUrl.isValidValue;
                  final shouldDisplayHealthyCleaningCTA =
                      isPresentInCleanerProducts &&
                      data.cleanerWebIngredientUrl.isValidValue;

                  return Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: context.dsSpacing.sp400,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                DSSpacingWidget.vertical(
                                  spacing: context.dsSpacing.sp400,
                                ),
                                DSText(
                                  text: data.name,
                                  textStyle: DSTextStyleType.primaryHeadingS,
                                  //Note textPrimaryFade is not available so using equivalent stroke color
                                  textColor:
                                      context.dsColors.strokePrimaryFocus,
                                ),
                                if (isPresentInCosmeticProducts ||
                                    isPresentInCleanerProducts) ...{
                                  DSSpacingWidget.vertical(
                                    spacing: context.dsSpacing.sp500,
                                  ),
                                  _Card(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: context.dsSpacing.sp400,
                                      vertical: context.dsSpacing.sp300,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        DSText(
                                          text:
                                              productDetailLocalizations
                                                  .productDetail_ingredient_theScoreIsDependentOnUseAndProductType,
                                          textStyle:
                                              DSTextStyleType
                                                  .primaryBodySMedium,
                                          textColor:
                                              context
                                                  .dsColors
                                                  .textNeutralOnWhite,
                                        ),
                                        if (isPresentInCosmeticProducts) ...{
                                          DSSpacingWidget.vertical(spacing: 6),
                                          Row(
                                            children: [
                                              if (personalCareScoreText
                                                      .isValidValue &&
                                                  personalCareScoreColor !=
                                                      null) ...{
                                                Padding(
                                                  padding: EdgeInsets.all(2),
                                                  child: HeaderRatingScoreBadge(
                                                    text: personalCareScoreText,
                                                    backgroundColor:
                                                        personalCareScoreColor,
                                                    width: 27,
                                                    height: 27,
                                                    textStyle:
                                                        personalCareScoreText
                                                                    .length >
                                                                1
                                                            ? DSTextStyleType
                                                                .primaryBodySMedium
                                                            : DSTextStyleType
                                                                .primarySubHeadingS,
                                                  ),
                                                ),
                                              },
                                              DSSpacingWidget.horizontal(
                                                spacing:
                                                    context.dsSpacing.sp200,
                                              ),
                                              DSText(
                                                text:
                                                    productDetailLocalizations
                                                        .productDetail_ingredient_personalCareProducts,
                                                textStyle:
                                                    DSTextStyleType
                                                        .primaryBodyMMedium,
                                                textColor:
                                                    context
                                                        .dsColors
                                                        .textNeutralOnWhite,
                                              ),
                                            ],
                                          ),
                                        },
                                        if (isPresentInCleanerProducts) ...{
                                          DSSpacingWidget.vertical(spacing: 6),
                                          Row(
                                            children: [
                                              if (cleanerBestScore
                                                      .isValidValue &&
                                                  cleanerScoreColor !=
                                                      null) ...{
                                                Padding(
                                                  padding: EdgeInsets.all(2),
                                                  child: HeaderRatingScoreBadge(
                                                    text: cleanerBestScore,
                                                    backgroundColor:
                                                        cleanerScoreColor,
                                                    width: 27,
                                                    height: 27,
                                                  ),
                                                ),
                                              },
                                              DSSpacingWidget.horizontal(
                                                spacing:
                                                    context.dsSpacing.sp200,
                                              ),
                                              DSText(
                                                text:
                                                    productDetailLocalizations
                                                        .productDetail_ingredient_cleaners,
                                                textStyle:
                                                    DSTextStyleType
                                                        .primaryBodyMMedium,
                                                textColor:
                                                    context
                                                        .dsColors
                                                        .textNeutralOnWhite,
                                              ),
                                            ],
                                          ),
                                        },
                                      ],
                                    ),
                                  ),
                                },
                                if (data.description.isValidValue) ...{
                                  DSSpacingWidget.vertical(
                                    spacing: context.dsSpacing.sp500,
                                  ),
                                  _Card(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        DSText(
                                          text:
                                              productDetailLocalizations
                                                  .productDetail_ingredient_whatIsIt,
                                          textStyle:
                                              DSTextStyleType
                                                  .primarySubHeadingS,
                                          textColor:
                                              context
                                                  .dsColors
                                                  .textNeutralOnWhite,
                                        ),
                                        DSSpacingWidget.vertical(
                                          spacing: context.dsSpacing.sp100,
                                        ),
                                        DSText(
                                          text: data.description,
                                          textStyle:
                                              DSTextStyleType
                                                  .primaryBodySRegular,
                                          textColor:
                                              context
                                                  .dsColors
                                                  .textNeutralSecondary,
                                        ),
                                      ],
                                    ),
                                  ),
                                },
                                DSSpacingWidget.vertical(
                                  spacing: context.dsSpacing.sp500,
                                ),
                              ],
                            ),
                          ),
                          if (shouldDisplaySkinDeepCTA ||
                              shouldDisplayHealthyCleaningCTA) ...{
                            // KEY: TestKeys.ingredientMoreAbout
                            Container(
                              key: const Key('ingredient_more_about'),
                              color:
                                  context
                                      .dsColors
                                      .surfaceNeutralBackgroundMedium,
                              padding: EdgeInsets.symmetric(
                                horizontal: context.dsSpacing.sp600,
                                vertical: context.dsSpacing.sp600,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  DSText(
                                    text:
                                        productDetailLocalizations
                                            .productDetail_ingredient_moreAboutThisIngredient,
                                    textStyle:
                                        DSTextStyleType.primarySubHeadingS,
                                    textColor:
                                        context.dsColors.textNeutralOnWhite,
                                  ),
                                  if (shouldDisplaySkinDeepCTA) ...{
                                    DSSpacingWidget.vertical(spacing: 18),
                                    DSButtonPrimary.outline(
                                      text:
                                          productDetailLocalizations
                                              .productDetail_ingredient_skinDeep,
                                      size: DSButtonSize.small,
                                      trailingIconPath: DSIcons.icArrowRight,
                                      onPressed: () {
                                        context.pushNamed(
                                          AppRoutes.webView.name,
                                          queryParameters:
                                              WebviewScreenParams(
                                                title: "",
                                                url:
                                                    data.skinDeepWebIngredientUrl,
                                              ).toQueryParameters(),
                                        );
                                      },
                                    ),
                                  },
                                  if (shouldDisplayHealthyCleaningCTA) ...{
                                    DSSpacingWidget.vertical(
                                      spacing: context.dsSpacing.sp500,
                                    ),
                                    DSButtonPrimary.outline(
                                      text:
                                          productDetailLocalizations
                                              .productDetail_ingredient_guideToHealthyCleaning,
                                      size: DSButtonSize.small,
                                      trailingIconPath: DSIcons.icArrowRight,
                                      onPressed: () {
                                        context.pushNamed(
                                          AppRoutes.webView.name,
                                          queryParameters:
                                              WebviewScreenParams(
                                                title: "",
                                                url:
                                                    data.cleanerWebIngredientUrl,
                                              ).toQueryParameters(),
                                        );
                                      },
                                    ),
                                  },
                                ],
                              ),
                            ),
                          },
                        ],
                      ),
                    ),
                  );
                }
                return SizedBox.shrink();
              },
            ),
          ],
        ),
      ),
    );
  }

  String getPersonalCareScoreText({
    required String minScore,
    required String maxScore,
  }) {
    String scoreText = "";

    if (!minScore.isValidValue || !maxScore.isValidValue) return scoreText;

    if (minScore.trim() == maxScore.trim()) {
      scoreText = maxScore.toString();
    } else {
      scoreText = "$minScore-$maxScore";
    }
    return scoreText;
  }
}

class _Card extends StatelessWidget {
  const _Card({required this.child, this.padding});

  final Widget child;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: context.dsColors.surfaceNeutralBackgroundWhite,
        borderRadius: BorderRadius.circular(context.dsRadius.rd200),
      ),
      padding: padding ?? EdgeInsets.all(context.dsSpacing.sp400),
      child: child,
    );
  }
}
