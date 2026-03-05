import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_my_items/src/ui/bloc/instant_hazard/instant_hazard_bloc.dart';
import 'package:healthy_living_my_items/src/ui/bloc/instant_hazard/instant_hazard_event.dart';
import 'package:healthy_living_my_items/src/ui/bloc/instant_hazard/instant_hazard_state.dart';
import 'package:healthy_living_my_items/src/ui/widgets/instant_hazard_history_score_loader.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class InstantHazardScoreHistoryScreen extends StatefulWidget {
  final SubmitProductInfoParams infoUIModel;

  const InstantHazardScoreHistoryScreen({required this.infoUIModel, super.key});

  @override
  State<InstantHazardScoreHistoryScreen> createState() =>
      _InstantHazardHistoryScoreScreenState();
}

class _InstantHazardHistoryScoreScreenState
    extends State<InstantHazardScoreHistoryScreen> {
  @override
  Widget build(BuildContext context) {
    final localization = HealthyLivingSharedLocalizations.of(context)!;

    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: BlocProvider<InstantHazardBloc>(
          create:
              (_) =>
                  injector.get<InstantHazardBloc>()..add(
                    PollingOCR(
                      jobId: widget.infoUIModel.jobId ?? "",
                      productCategory: widget.infoUIModel.productCategoryType,
                    ),
                  ),
          child: Column(
            children: [
              HeaderWithTitle(
                title:
                    localization
                        .submitProduct_productSubmission_instantHazardScore,

                leadIcon: DSIcons.icArrowLeft,
                onTapLeadIcon: () {
                  context.pop();
                },
              ),
              BlocBuilder<InstantHazardBloc, InstantHazardState>(
                buildWhen:
                    (_, current) =>
                        current is UpdateFindingsTab ||
                        current is OCRPollingSuccess ||
                        current is OCRPollingLoading,
                builder: (BuildContext context, state) {
                  final historyBloc = context.read<InstantHazardBloc>();
                  final currentTab = historyBloc.currentFindingsTab;

                  if (state is OCRPollingSuccess ||
                      state is UpdateFindingsTab) {
                    final ocrData =
                        state is OCRPollingSuccess
                            ? state.ocrExtractedData
                            : historyBloc.ocrExtractedData;
                    final ingredients =
                        ocrData?.userEditsProvisionalScore?.ingredients ??
                        ocrData?.provisionalScore?.ingredients;

                    final instantScore =
                        ocrData?.userEditsProvisionalScore?.score ??
                        ocrData?.provisionalScore?.score;
                    if (ocrData == null) {
                      return Expanded(child: InstantHazardHistoryScoreLoader());
                    }

                    final updateInfoModel = widget.infoUIModel.copyWith(
                      provisionalScoreResponse: ocrData,
                    );

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
                                  if (currentTab == 1 &&
                                      (ingredients?.unparsed ?? 0) > 0)
                                    InstantHazardScoreInfoWidget(
                                      title: localization
                                          .submitProduct_ingredients_unmatched_title(
                                            ingredients?.unparsed.toString() ??
                                                "",
                                            ingredients?.total.toString() ?? "",
                                          ),
                                      subTitle:
                                          localization
                                              .submitProduct_ingredients_unmatched_subTitle,
                                      description:
                                          ingredients
                                              ?.unparsedIngredientsString ??
                                          "",
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
                                              bottomLeft: const Radius.circular(
                                                20.0,
                                              ),
                                              bottomRight:
                                                  const Radius.circular(20),
                                              topRight: Radius.circular(
                                                context.dsRadius.rd1000,
                                              ),
                                              topLeft: const Radius.circular(
                                                20,
                                              ),
                                            ),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.black.withValues(
                                                  alpha: 0.1,
                                                ),
                                                offset: const Offset(0, 4),
                                                blurRadius:
                                                    context.dsRadius.rd300,
                                                spreadRadius: 3,
                                              ),
                                            ],
                                          ),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              HeaderRatingScoreBadge(
                                                text: instantScore.toString(),
                                                backgroundColor:
                                                    instantScore
                                                        .toString()
                                                        .ratingHazardLevel
                                                        ?.displayColor(
                                                          context,
                                                        ) ??
                                                    Colors.transparent,
                                                height: 68,
                                                width: 72,
                                                textStyle:
                                                    DSTextStyleType
                                                        .primaryHeadingXxl,
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
                                                  vertical:
                                                      context.dsSpacing.sp100,
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsets.all(
                                                    context.dsSpacing.sp100,
                                                  ),
                                                  child: Row(
                                                    children: [
                                                      DSImage.asset(
                                                        DSIcons
                                                            .icStarShiningCircle,
                                                        height: 7,
                                                        width: 7,
                                                      ),
                                                      DSSpacingWidget.horizontal(
                                                        spacing:
                                                            context
                                                                .dsSpacing
                                                                .sp100,
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
                                        ocrData
                                            .extractedData
                                            ?.brandName
                                            ?.value ??
                                        "",
                                    textStyle:
                                        DSTextStyleType.primaryBodySMedium,
                                    textColor:
                                        context.dsColors.textNeutralSecondary,
                                  ),
                                  DSSpacingWidget.vertical(
                                    spacing: context.dsSpacing.sp100,
                                  ),
                                  DSText(
                                    text:
                                        ocrData
                                            .extractedData
                                            ?.productName
                                            ?.value ??
                                        "",
                                    textStyle:
                                        DSTextStyleType.primaryHeadingSBold,
                                    textColor:
                                        context.dsColors.textPrimaryDefault,
                                  ),
                                  DSSpacingWidget.vertical(
                                    spacing: context.dsSpacing.sp400,
                                  ),

                                  Wrap(
                                    spacing: context.dsSpacing.sp100,
                                    children: [
                                      if (widget
                                          .infoUIModel
                                          .categoryName
                                          .isValidValue)
                                        CategoryChip(
                                          label:
                                              widget.infoUIModel.categoryName!,
                                        ),
                                      if (widget
                                          .infoUIModel
                                          .subCategoryName
                                          .isValidValue)
                                        CategoryChip(
                                          label:
                                              widget
                                                  .infoUIModel
                                                  .subCategoryName!,
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
                              infoUIModel: updateInfoModel,
                              currentTab: currentTab,
                              onTabChanged: (index) {
                                context.read<InstantHazardBloc>().add(
                                  InstantHazardEvent.findingsTabChanged(index),
                                );
                              },
                            ),
                            Container(
                              color:
                                  context
                                      .dsColors
                                      .surfaceNeutralBackgroundLight,
                              padding: EdgeInsets.all(context.dsSpacing.sp300),
                              child: DSText(
                                text:
                                    localization
                                        .submitProduct_productSubmission_yourScoreIsBasedOnTheInformation,
                                textStyle: DSTextStyleType.primaryCaption,
                                textColor:
                                    context.dsColors.textNeutralSecondary,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }

                  return Expanded(child: InstantHazardHistoryScoreLoader());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
