import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_scan/l10n/healthy_living_scan_localizations.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class InstantHazardScoreScreen extends StatefulWidget {
  final SubmitProductInfoParams infoUIModel;

  const InstantHazardScoreScreen({required this.infoUIModel, super.key});

  @override
  State<InstantHazardScoreScreen> createState() =>
      _InstantHazardScoreScreenState();
}

class _InstantHazardScoreScreenState extends State<InstantHazardScoreScreen> {
  int _currentFindingsTab = 0;

  @override
  Widget build(BuildContext context) {
    final localization = HealthyLivingScanLocalizations.of(context)!;
    final appBloc = context.read<AppBloc>();
    final ingredients =
        widget
            .infoUIModel
            .provisionalScoreResponse
            ?.userEditsProvisionalScore
            ?.ingredients ??
        widget
            .infoUIModel
            .provisionalScoreResponse
            ?.provisionalScore
            ?.ingredients;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: Column(
          children: [
            HeaderWithTitle(
              title:
                  localization
                      .submitProduct_productSubmission_instantHazardScore,
              trailIcon: DSIcons.icClose,
              onTapTrailIcon: () {
                appBloc.add(NavigationToHistory());
                context.goNamed(
                  AppRoutes.myItems.name,
                  extra: MyItemScreenParam(
                    tabIndex: IntegerConstants.myListTapHistoryIndex,
                  ),
                );
              },
              leadIcon: DSIcons.icArrowLeft,
              onTapLeadIcon: () {
                context.pop();
              },
            ),
            Expanded(
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
                            spacing: context.dsSpacing.sp300,
                          ),

                          InstantHazardScoreInfoWidget(
                            title:
                                localization
                                    .submitProduct_productSubmission_thisInstantHazardScore,
                            description:
                                localization
                                    .submitProduct_productSubmission_thisInstantHazardScoreDes,
                          ),
                          if (_currentFindingsTab == 1 &&
                              (ingredients?.unparsed ?? 0) > 0)
                            InstantHazardScoreInfoWidget(
                              title: localization
                                  .submitProduct_ingredients_unmatched_title(
                                    ingredients?.unparsed.toString() ?? "",
                                    ingredients?.total.toString() ?? "",
                                  ),
                              subTitle:
                                  localization
                                      .submitProduct_ingredients_unmatched_subTitle,
                              description:
                                  ingredients?.unparsedIngredientsString ?? "",
                            ),
                          DSSpacingWidget.vertical(
                            spacing: context.dsSpacing.sp400,
                          ),
                          Stack(
                            children: [
                              Center(
                                child: DSImage.asset(
                                  DSIcons.icSubmissionPCP,
                                  height: 200,
                                  width: 200,
                                ),
                              ),
                              Positioned(
                                top: 0,
                                left: 0,
                                child: Container(
                                  height: 116,
                                  width: 88,
                                  alignment: Alignment.centerLeft,
                                  decoration: BoxDecoration(
                                    color:
                                        context
                                            .dsColors
                                            .surfaceNeutralContainer2,
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: const Radius.circular(20.0),
                                      bottomRight: const Radius.circular(20),
                                      topRight: Radius.circular(
                                        context.dsRadius.rd1000,
                                      ),
                                      topLeft: const Radius.circular(20),
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withValues(
                                          alpha: 0.1,
                                        ),
                                        offset: const Offset(0, 4),
                                        blurRadius: context.dsRadius.rd300,
                                        spreadRadius: 3,
                                      ),
                                    ],
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      HeaderRatingScoreBadge(
                                        text:
                                            widget
                                                .infoUIModel
                                                .provisionalScoreResponse
                                                ?.userEditsProvisionalScore
                                                ?.score
                                                .toString() ??
                                            widget
                                                .infoUIModel
                                                .provisionalScoreResponse
                                                ?.provisionalScore
                                                ?.score
                                                .toString() ??
                                            "",
                                        backgroundColor:
                                            widget
                                                .infoUIModel
                                                .provisionalScoreResponse
                                                ?.userEditsProvisionalScore
                                                ?.score
                                                .toString()
                                                .ratingHazardLevel
                                                ?.displayColor(context) ??
                                            widget
                                                .infoUIModel
                                                .provisionalScoreResponse
                                                ?.provisionalScore
                                                ?.score
                                                .toString()
                                                .ratingHazardLevel
                                                ?.displayColor(context) ??
                                            Colors.transparent,
                                        height: 68,
                                        width: 72,
                                        textStyle:
                                            DSTextStyleType.primaryHeadingXxl,
                                        border: Border.all(
                                          color:
                                              context
                                                  .dsColors
                                                  .surfaceNeutralContainerWhite,
                                          width: context.dsSizes.sz200,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                          vertical: context.dsSpacing.sp100,
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.all(
                                            context.dsSpacing.sp100,
                                          ),
                                          child: Row(
                                            children: [
                                              DSImage.asset(
                                                DSIcons.icStarShiningCircle,
                                                height: 7,
                                                width: 7,
                                              ),
                                              DSSpacingWidget.horizontal(
                                                spacing:
                                                    context.dsSpacing.sp100,
                                              ),
                                              DSText(
                                                text:
                                                    localization
                                                        .submitProduct_productSubmission_instantScore,
                                                textStyle:
                                                    DSTextStyleType
                                                        .primaryCaption,
                                                textColor:
                                                    context
                                                        .dsColors
                                                        .textNeutralSecondary,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          DSSpacingWidget.vertical(
                            spacing: context.dsSpacing.sp400,
                          ),
                          DSText(
                            text:
                                widget
                                    .infoUIModel
                                    .provisionalScoreResponse
                                    ?.extractedData
                                    ?.brandName
                                    ?.value ??
                                "",
                            textStyle: DSTextStyleType.primaryBodySMedium,
                            textColor: context.dsColors.textNeutralSecondary,
                          ),
                          DSSpacingWidget.vertical(
                            spacing: context.dsSpacing.sp100,
                          ),
                          DSText(
                            text:
                                widget
                                    .infoUIModel
                                    .provisionalScoreResponse
                                    ?.extractedData
                                    ?.productName
                                    ?.value ??
                                "",
                            textStyle: DSTextStyleType.primaryHeadingSBold,
                            textColor: context.dsColors.textPrimaryDefault,
                          ),
                          DSSpacingWidget.vertical(
                            spacing: context.dsSpacing.sp400,
                          ),
                          Wrap(
                            spacing: context.dsSpacing.sp100,
                            children: [
                              if (widget.infoUIModel.categoryName.isValidValue)
                                CategoryChip(
                                  label: widget.infoUIModel.categoryName!,
                                ),
                              if (widget
                                  .infoUIModel
                                  .subCategoryName
                                  .isValidValue)
                                CategoryChip(
                                  label: widget.infoUIModel.subCategoryName!,
                                ),
                            ],
                          ),
                          DSSpacingWidget.vertical(
                            spacing: context.dsSpacing.sp500,
                          ),
                        ],
                      ),
                    ),
                    FindingsIngredientsSection(
                      infoUIModel: widget.infoUIModel,
                      currentTab: _currentFindingsTab,
                      onTabChanged: (index) {
                        setState(() {
                          _currentFindingsTab = index;
                        });
                      },
                    ),
                    Container(
                      color: context.dsColors.surfaceNeutralBackgroundLight,
                      padding: EdgeInsets.all(context.dsSpacing.sp300),
                      child: DSText(
                        text:
                            localization
                                .submitProduct_productSubmission_yourScoreIsBasedOnTheInformation,
                        textStyle: DSTextStyleType.primaryCaption,
                        textColor: context.dsColors.textNeutralSecondary,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
