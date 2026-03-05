import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_scan/l10n/healthy_living_scan_localizations.dart';
import 'package:healthy_living_scan/src/analytics/product_submission_analytics.dart';
import 'package:healthy_living_scan/src/ui/model/submit_progress_steps.dart';
import 'package:healthy_living_scan/src/ui/widgets/product_submission_exit_popup_widget.dart';
import 'package:healthy_living_scan/src/ui/widgets/submit_product_category_selection_content_screen.dart';
import 'package:healthy_living_scan/src/ui/widgets/submit_product_progress_widget.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class SubmitProductCategorySelectionScreen extends StatelessWidget {
  final SubmitProductInfoParams infoUIModel;

  const SubmitProductCategorySelectionScreen({
    required this.infoUIModel,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final HealthyLivingScanLocalizations localization =
        HealthyLivingScanLocalizations.of(context)!;

    return Scaffold(
      bottomNavigationBar: SafeArea(
        child: GestureDetector(
          onTap: () async {
            /// Logs GA4 Skip Detail Event
            await injector
                .get<ProductSubmissionAnalytics>()
                .logSubmitSkipDetails(
                  skipDetailScreen: _getTitle(localization),
                  productCategory: infoUIModel.productCategoryType.name,
                  submissionId: infoUIModel.submissionId ?? "",
                );

            if (!context.mounted) {
              return;
            }
            if (infoUIModel.productCategoryType ==
                ProductCategory.personalCare) {
              await context.pushNamed(
                AppRoutes.submitProductFormScreen.name,
                extra: infoUIModel,
              );
            } else if (infoUIModel.productCategoryType ==
                ProductCategory.sunscreen) {
              await context.pushNamed(
                AppRoutes.sunscreenDetailInfoScreen.name,
                extra: infoUIModel,
              );
            } else if (infoUIModel.productCategoryType ==
                    ProductCategory.cleaner ||
                infoUIModel.productCategoryType == ProductCategory.food) {
              await context.pushNamed(
                AppRoutes.submitProductsAdditionalInfoScreen.name,
                extra: infoUIModel,
              );
            }
          },
          child: Container(
            height: 74,
            padding: EdgeInsets.all(context.dsSpacing.sp400),
            alignment: Alignment.center,
            child: DSText(
              text: localization.submitProduct_info_skip,
              textStyle: DSTextStyleType.primaryButtonLRegular,
              textColor: context.dsColors.textPrimaryDefault,
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderWithTitle(
              title: localization.submitProduct_info_reviewProductDetails,
              trailIcon: DSIcons.icClose,
              onTapTrailIcon: () {
                DSBottomSheetWidget.showBottomSheet(
                  context: context,
                  child: ProductSubmissionExitPopupWidget(),
                );
              },
              textStyle: DSTextStyleType.primaryHeadingSBold,
              leadIcon: DSIcons.icArrowLeft,
              onTapLeadIcon: () {
                context.pop();
              },
            ),
            SubmitProductProgressWidget(
              currentStep: SubmitProgressSteps.categorySelection.progressFor(
                infoUIModel.productCategoryType,
              ),
              totalSteps: SubmitProgressSteps.totalSteps,
            ),
            DSSpacingWidget.vertical(spacing: context.dsSpacing.sp600),
            Expanded(
              child: SubmitProductCategorySelectionContentScreen(
                infoUIModel: infoUIModel,
              ),
            ),
          ],
        ),
      ),
    );
  }

  String _getTitle(HealthyLivingScanLocalizations localization) {
    if (infoUIModel.productCategoryType == ProductCategory.personalCare) {
      return localization.submitProduct_info_personalCare;
    } else if (infoUIModel.productCategoryType == ProductCategory.sunscreen) {
      return localization.submitProduct_info_sunscreens;
    } else if (infoUIModel.productCategoryType == ProductCategory.cleaner) {
      return localization.submitProduct_info_cleaners;
    } else if (infoUIModel.productCategoryType == ProductCategory.food) {
      return localization.submitProduct_info_food;
    } else {
      return "";
    }
  }
}
