import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_scan/healthy_living_scan.dart';
import 'package:healthy_living_scan/l10n/healthy_living_scan_localizations.dart';
import 'package:healthy_living_scan/src/analytics/product_submission_analytics.dart';
import 'package:healthy_living_scan/src/ui/bloc/submit_product/submit_product_event.dart';
import 'package:healthy_living_scan/src/ui/bloc/submit_product/submit_product_state.dart';
import 'package:healthy_living_scan/src/ui/model/submit_progress_steps.dart';
import 'package:healthy_living_scan/src/ui/widgets/product_submission_exit_popup_widget.dart';
import 'package:healthy_living_scan/src/ui/widgets/product_submit_pcp_bottom_widget.dart';
import 'package:healthy_living_scan/src/ui/widgets/skip_to_instant_score_card.dart';
import 'package:healthy_living_scan/src/ui/widgets/submit_product_progress_widget.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class SubmitProductInfoContentScreen extends StatefulWidget {
  final SubmitProductInfoParams infoUIModel;

  const SubmitProductInfoContentScreen({required this.infoUIModel, super.key});

  @override
  State<SubmitProductInfoContentScreen> createState() =>
      _SubmitProductInfoContentScreenState();
}

class _SubmitProductInfoContentScreenState
    extends State<SubmitProductInfoContentScreen> {
  final TextEditingController _brandTextController = TextEditingController();
  final TextEditingController _nameTextController = TextEditingController();

  @override
  void initState() {
    _brandTextController.text = widget.infoUIModel.brandName;
    _nameTextController.text = widget.infoUIModel.productName;
    super.initState();
  }

  @override
  void dispose() {
    _brandTextController.dispose();
    _nameTextController.dispose();
    super.dispose();
  }

  bool _validateFields(BuildContext context) {
    final brand = _brandTextController.text.trim();
    final name = _nameTextController.text.trim();

    if (!brand.isValidValue) {
      DSToast.showErrorToast(
        context: context,
        title:
            HealthyLivingScanLocalizations.of(
              context,
            )!.submitProduct_productSubmission_brandIsRequired,
      );
      return false;
    }

    if (!name.isValidValue) {
      DSToast.showErrorToast(
        context: context,
        title:
            HealthyLivingScanLocalizations.of(
              context,
            )!.submitProduct_productSubmission_productNameIsRequired,
      );
      return false;
    }

    return true;
  }

  void _onTapSkip(BuildContext context) {
    if (!_validateFields(context)) {
      return;
    }

    context.read<SubmitProductBloc>().add(
      const SubmitProductEvent.showSkipToInstantScoreCard(),
    );
  }

  void _hideSkipCard(BuildContext context) {
    context.read<SubmitProductBloc>().add(
      const SubmitProductEvent.hideSkipToInstantScoreCard(),
    );
  }

  void _onProceedToScore(BuildContext context) async {
    _hideSkipCard(context);
    final brand = _brandTextController.text.trim();
    final name = _nameTextController.text.trim();

    final updatedModel = widget.infoUIModel.copyWith(
      brandName: brand,
      productName: name,
    );
    context.read<SubmitProductBloc>().add(
      SubmitProduct(
        submissionId: widget.infoUIModel.submissionId ?? '',
        infoUIModel: updatedModel,
      ),
    );

    /// Logs GA4 Skip to Score Event
    await injector.get<ProductSubmissionAnalytics>().logSubmitSkipToScore(
      productCategory: widget.infoUIModel.productCategoryType.name,
      submissionId: widget.infoUIModel.submissionId ?? "",
    );
  }

  void _validateAndNavigate(BuildContext context) async {
    _hideSkipCard(context);
    if (!_validateFields(context)) {
      return;
    }

    final brand = _brandTextController.text.trim();
    final name = _nameTextController.text.trim();

    final updatedModel = widget.infoUIModel.copyWith(
      brandName: brand,
      productName: name,
    );
    await injector.get<ProductSubmissionAnalytics>().logSubmitAddDetails(
      submissionId: updatedModel.submissionId ?? "",
      productCategory: updatedModel.productCategoryType.name,
      addDetailScreen: StringConstants.productInfo,
    );
    if (context.mounted) {
      await context.pushNamed(
        AppRoutes.submitProductCategorySelectionScreen.name,
        extra: updatedModel,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final localization = HealthyLivingScanLocalizations.of(context)!;
    final bottomPadding = MediaQuery.of(context).padding.bottom;
    final HealthyLivingSharedLocalizations sharedLocalizations =
        HealthyLivingSharedLocalizations.of(context)!;

    return BlocConsumer<SubmitProductBloc, SubmitProductState>(
      listenWhen:
          (_, current) =>
              current is LoadInstantScore ||
              current is PollingInstantScoreSuccess ||
              current is SubmitProductSuccess ||
              current is SubmitProductError,
      listener: (context, state) async {
        if (state is LoadInstantScore) {
          await context.pushNamed(
            AppRoutes.instantScoreProcessingScreen.name,
            extra: state.loadingInstantScoreMessage,
          );
        } else if (state is PollingInstantScoreSuccess) {
          /// Logs GA4 Product Submission Success Event
          await injector.get<ProductSubmissionAnalytics>().logSubmitSuccess(
            submissionId: widget.infoUIModel.submissionId ?? "",
            productCategory: widget.infoUIModel.productCategoryType.name,
          );
          final updated = widget.infoUIModel.copyWith(
            provisionalScoreResponse: state.provisionalScore,
            isInstantScoreHazardProduct: true,
            productName: _nameTextController.text,
            brandName: _brandTextController.text,
          );
          if (!context.mounted) return;
          context.pop();
          await context.pushNamed(
            AppRoutes.submissionConfirmationScreen.name,
            extra: updated,
          );
        } else if (state is SubmitProductSuccess) {
          await injector.get<ProductSubmissionAnalytics>().logSubmitSuccess(
            submissionId: widget.infoUIModel.submissionId ?? "",
            productCategory: widget.infoUIModel.productCategoryType.name,
          );

          final updated = widget.infoUIModel.copyWith(
            isInstantScoreHazardProduct: false,
            productName: _nameTextController.text,
            brandName: _brandTextController.text,
          );
          if (!context.mounted) return;
          await context.pushNamed(
            AppRoutes.submissionConfirmationScreen.name,
            extra: updated,
          );
        } else if (state is SubmitProductError) {
          /// Logs GA4 Product Submission Fail Event

          await injector.get<ProductSubmissionAnalytics>().logSubmitFail(
            submissionId: widget.infoUIModel.submissionId ?? "",
            productCategory: widget.infoUIModel.productCategoryType.name,
          );
          if (!context.mounted) return;
          DSToast.showErrorToast(
            context: context,
            title:
                state.message ??
                sharedLocalizations.general_errorMessage_somethingWentWrong,
          );
        } else if (state is SubmitProductFailure) {
          /// Logs GA4 Product Submission Fail Event

          await injector.get<ProductSubmissionAnalytics>().logSubmitFail(
            submissionId: widget.infoUIModel.submissionId ?? "",
            productCategory: widget.infoUIModel.productCategoryType.name,
          );
        }
      },
      buildWhen:
          (_, current) =>
              current is ShowSkipToInstantScoreCardState ||
              current is SubmitProductInitial,
      builder: (context, state) {
        final bool showSkipCard = state is ShowSkipToInstantScoreCardState;
        final bottomBar =
            widget.infoUIModel.productCategoryType ==
                    ProductCategory.personalCare
                ? ProductSubmitPcpBottomWidget(
                  onTap: () => _validateAndNavigate(context),
                  onTapSkip: () => _onTapSkip(context),
                  isDisabled: showSkipCard,
                )
                : DSButtonPrimary(
                  text: localization.submitProduct_info_next,
                  onPressed: () => _validateAndNavigate(context),
                );

        return PopScope(
          canPop: false,
          onPopInvokedWithResult: (_, _) {
            return;
          },
          child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: GestureDetector(
              onTap: () => FocusScope.of(context).unfocus(),
              child: SafeArea(
                top: true,
                bottom: false,
                child: Stack(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        HeaderWithTitle(
                          title:
                              localization
                                  .submitProduct_info_reviewProductDetails,
                          trailIcon: DSIcons.icClose,
                          onTapTrailIcon: () {
                            DSBottomSheetWidget.showBottomSheet(
                              context: context,
                              child: ProductSubmissionExitPopupWidget(),
                            );
                          },
                          textStyle: DSTextStyleType.primaryHeadingSBold,
                        ),
                        SubmitProductProgressWidget(
                          currentStep: SubmitProgressSteps.info.progressFor(
                            widget.infoUIModel.productCategoryType,
                          ),
                          totalSteps: SubmitProgressSteps.totalSteps,
                        ),
                        Expanded(
                          child: SingleChildScrollView(
                            padding: EdgeInsets.all(context.dsSpacing.sp400),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                DSText(
                                  text:
                                      localization
                                          .submitProduct_info_productInfo,
                                  textStyle: DSTextStyleType.primaryHeadingS,
                                  textColor:
                                      context.dsColors.textNeutralOnWhite,
                                ),
                                DSSpacingWidget.vertical(
                                  spacing: context.dsSpacing.sp100,
                                ),
                                DSText(
                                  text:
                                      localization
                                          .submitProduct_info_wePulledThisFromYourPhotosMakeEditsIfNeeded,
                                  textStyle:
                                      DSTextStyleType.primaryBodySRegular,
                                  textColor:
                                      context.dsColors.textNeutralSecondary,
                                  lineHeight: 1.5,
                                ),
                                DSSpacingWidget.vertical(
                                  spacing: context.dsSpacing.sp600,
                                ),
                                DSTextInput(
                                  controller: _brandTextController,
                                  label: localization.submitProduct_info_brand,
                                ),
                                DSSpacingWidget.vertical(
                                  spacing: context.dsSpacing.sp400,
                                ),
                                DSTextInput(
                                  controller: _nameTextController,
                                  label:
                                      localization
                                          .submitProduct_info_productName,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                      bottom: bottomPadding + context.dsSpacing.sp400,
                      left: context.dsSpacing.sp400,
                      right: context.dsSpacing.sp400,
                      child: bottomBar,
                    ),
                    if (showSkipCard)
                      Positioned(
                        bottom: bottomPadding + context.dsSpacing.sp400,
                        left: 28,
                        right: 28,
                        child: SkipToInstantScoreCard(
                          onProceedToScore: () => _onProceedToScore(context),
                          onBackToProductDetails:
                              () => _validateAndNavigate(context),
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
