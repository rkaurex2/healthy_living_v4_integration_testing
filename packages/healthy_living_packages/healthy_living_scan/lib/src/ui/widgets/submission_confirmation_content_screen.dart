import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_scan/l10n/healthy_living_scan_localizations.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class SubmissionConfirmationContentScreen extends StatefulWidget {
  final SubmitProductInfoParams infoUIModel;

  const SubmissionConfirmationContentScreen({
    required this.infoUIModel,
    super.key,
  });

  @override
  State<SubmissionConfirmationContentScreen> createState() =>
      _SubmissionConfirmationContentScreenState();
}

class _SubmissionConfirmationContentScreenState
    extends State<SubmissionConfirmationContentScreen> {
  @override
  Widget build(BuildContext context) {
    final localization = HealthyLivingScanLocalizations.of(context)!;
    final appBloc = context.read<AppBloc>();
    final instantScore =
        widget
            .infoUIModel
            .provisionalScoreResponse
            ?.userEditsProvisionalScore
            ?.score ??
        widget.infoUIModel.provisionalScoreResponse?.provisionalScore?.score;
    return SingleChildScrollView(
      child: PopScope(
        canPop: false,
        onPopInvokedWithResult: (_, _) {
          return;
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (widget.infoUIModel.productCategoryType ==
                    ProductCategory.personalCare &&
                widget.infoUIModel.isInstantScoreHazardProduct == true) ...[
              InstantHazardScoreInfoWidget(
                title:
                    localization
                        .submitProduct_productSubmission_thisInstantHazardScore,
                description:
                    localization
                        .submitProduct_productSubmission_thisInstantHazardScoreDes,
              ),
              DSSpacingWidget.vertical(spacing: context.dsSpacing.sp600),
            ],
            if (widget.infoUIModel.productCategoryType ==
                    ProductCategory.personalCare &&
                widget.infoUIModel.isInstantScoreHazardProduct == true) ...{
              Stack(
                children: [
                  Center(
                    child: DSImage.asset(
                      DSIcons.icSubmissionPCP,
                      height: 200,
                      width: 200,
                    ),
                  ),
                  Container(
                    height: 116,
                    width: 88,
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(
                      color: context.dsColors.surfaceNeutralContainer2,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20.0),
                        bottomRight: Radius.circular(20),
                        topRight: Radius.circular(context.dsRadius.rd1000),
                        topLeft: Radius.circular(20),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withValues(alpha: 0.1),
                          offset: Offset(0, 4),
                          blurRadius: context.dsRadius.rd300,
                          spreadRadius: 3,
                          blurStyle: BlurStyle.inner,
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        HeaderRatingScoreBadge(
                          text: instantScore.toString(),
                          backgroundColor:
                              instantScore
                                  .toString()
                                  .ratingHazardLevel
                                  ?.displayColor(context) ??
                              Colors.transparent,

                          height: 68,
                          width: 72,
                          textStyle: DSTextStyleType.primaryHeadingXxl,
                          border: Border.all(
                            color:
                                context.dsColors.surfaceNeutralContainerWhite,
                            width: context.dsSizes.sz200,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: context.dsSpacing.sp100,
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(context.dsSpacing.sp100),
                            child: Row(
                              children: [
                                DSImage.asset(
                                  DSIcons.icStarShiningCircle,
                                  height: 7,
                                  width: 7,
                                ),
                                DSSpacingWidget.horizontal(
                                  spacing: context.dsSpacing.sp100,
                                ),
                                DSText(
                                  text:
                                      localization
                                          .submitProduct_productSubmission_instantScore,
                                  textStyle: DSTextStyleType.primaryCaption,
                                  textColor:
                                      context.dsColors.textNeutralSecondary,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            } else ...{
              Center(
                child: DSImage.asset(_getImage(), height: 200, width: 200),
              ),
            },
            DSSpacingWidget.vertical(spacing: context.dsSpacing.sp600),
            Container(
              padding: EdgeInsets.all(context.dsSpacing.sp400),
              decoration: BoxDecoration(
                color: context.dsColors.surfaceNeutralBackgroundLight,
                border: Border.all(
                  color: context.dsColors.strokePrimaryDefault,
                ),
                borderRadius: BorderRadius.circular(context.dsRadius.rd300),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            DSText(
                              text:
                                  widget
                                      .infoUIModel
                                      .provisionalScoreResponse
                                      ?.extractedData
                                      ?.brandName
                                      ?.value ??
                                  widget.infoUIModel.brandName,
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
                                  widget.infoUIModel.productName,
                              textStyle: DSTextStyleType.primaryHeadingSBold,
                              textColor: context.dsColors.textPrimaryDefault,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.only(left: context.dsSpacing.sp400),
                        child: DSImage.asset(
                          DSIcons.icCircleCheck,
                          color: context.dsColors.surfaceBrandDefault,
                          height: context.dsSizes.sz500,
                          width: context.dsSizes.sz500,
                        ),
                      ),
                    ],
                  ),
                  if (widget.infoUIModel.productCategoryType ==
                          ProductCategory.personalCare &&
                      widget.infoUIModel.isInstantScoreHazardProduct ==
                          true) ...[
                    DSSpacingWidget.vertical(spacing: context.dsSpacing.sp400),

                    DSButtonSecondary(
                      text:
                          localization
                              .submitProduct_productSubmission_exploreYourScore,
                      trailingIconPath: DSIcons.icArrowRight,
                      trailIconColor: context.dsColors.iconOnSurfaceDefault,
                      size: DSButtonSize.small,
                      onPressed: () {
                        context.pushNamed(
                          AppRoutes.instantHazardScoreScreen.name,
                          extra: widget.infoUIModel,
                        );
                      },
                    ),
                  ],
                ],
              ),
            ),
            DSSpacingWidget.vertical(spacing: context.dsSpacing.sp600),
            DSText(
              text:
                  localization.submitProduct_productSubmission_thankYouHelping,
              textStyle: DSTextStyleType.primaryHeadingL,
              textColor: context.dsColors.textNeutralOnWhite,
            ),
            DSSpacingWidget.vertical(spacing: context.dsSpacing.sp600),
            DSText(
              text:
                  (widget.infoUIModel.productCategoryType ==
                              ProductCategory.personalCare &&
                          widget.infoUIModel.isInstantScoreHazardProduct ==
                              true)
                      ? localization
                          .submitProduct_info_hereYourInstantHazardScore
                      : localization.submitProduct_info_anInstantScore,
              textStyle: DSTextStyleType.primaryBodyMRegular,
              textColor: context.dsColors.textNeutralSecondary,
            ),
            DSSpacingWidget.vertical(spacing: context.dsSpacing.sp600),
            DSButtonSecondary(
              text: localization.submitProduct_productSubmission_goToYourItems,
              onPressed: () {
                appBloc.add(NavigationToHistory());
                context.goNamed(
                  AppRoutes.myItems.name,
                  extra: MyItemScreenParam(tabIndex: IntegerConstants.myListTapHistoryIndex),
                );
              },
            ),
            DSSpacingWidget.vertical(spacing: context.dsSpacing.sp400),
          ],
        ),
      ),
    );
  }

  String _getImage() {
    if (widget.infoUIModel.productCategoryType == ProductCategory.cleaner) {
      return DSIcons.icSubmissionCleaners;
    } else if (widget.infoUIModel.productCategoryType ==
        ProductCategory.sunscreen) {
      return DSIcons.icSubmissionSunscreen;
    } else if (widget.infoUIModel.productCategoryType == ProductCategory.food) {
      return DSIcons.icSubmissionFood;
    }
    return DSIcons.icSubmissionPCP;
  }
}
