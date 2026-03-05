import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_scan/healthy_living_scan.dart';
import 'package:healthy_living_scan/l10n/healthy_living_scan_localizations.dart';
import 'package:healthy_living_scan/src/ui/model/product_category_ui_model.dart';
import 'package:healthy_living_scan/src/ui/model/submit_progress_steps.dart';
import 'package:healthy_living_scan/src/ui/widgets/product_submission_exit_popup_widget.dart';
import 'package:healthy_living_scan/src/ui/widgets/select_product_type_item.dart';
import 'package:healthy_living_scan/src/ui/widgets/submit_product_progress_widget.dart';
import 'package:healthy_living_scan/src/utils/submit_product_utils.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class SelectProductTypeScreen extends StatelessWidget {
  final String upcCode;

  const SelectProductTypeScreen({required this.upcCode, super.key});

  @override
  Widget build(BuildContext context) {
    final List<ProductCategoryUIModel> productsList =
        SubmitProductUtils.getProductTypes(
          HealthyLivingSharedLocalizations.of(context)!,
        );
    final HealthyLivingScanLocalizations localization =
        HealthyLivingScanLocalizations.of(context)!;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            HeaderWithTitle(
              title: localization.barcodeScanner_product_selectProductType,
              leadIcon: DSIcons.icArrowLeft,
              trailIcon: DSIcons.icClose,
              onTapLeadIcon: () {
                context.pop();
              },
              onTapTrailIcon: () {
                DSBottomSheetWidget.showBottomSheet(
                  context: context,
                  child: const ProductSubmissionExitPopupWidget(),
                );
              },
            ),

            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: context.dsSpacing.sp400,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SubmitProductProgressWidget(
                    currentStep: SubmitProgressSteps.selectProductType
                        .progressFor(ProductCategory.personalCare),
                    totalSteps: SubmitProgressSteps.totalSteps,
                  ),
                  DSSpacingWidget.vertical(spacing: context.dsSpacing.sp600),
                  DSText(
                    text:
                        localization
                            .barcodeScanner_product_whatKindOfProductIsThis,
                    textStyle: DSTextStyleType.primaryHeadingS,
                    textColor: context.dsColors.textNeutralOnWhite,
                  ),
                  DSSpacingWidget.vertical(spacing: context.dsSpacing.sp200),
                  DSText(
                    text:
                        localization
                            .barcodeScanner_product_chooseTheCategoryThatBestFitsDontWorryWeGuide,
                    textStyle: DSTextStyleType.primaryBodyMRegular,
                    textColor: context.dsColors.textNeutralSecondary,
                  ),
                  DSSpacingWidget.vertical(spacing: context.dsSpacing.sp400),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.symmetric(
                  horizontal: context.dsSpacing.sp400,
                ),
                itemCount: productsList.length,
                itemBuilder: (context, index) {
                  final products = productsList[index];
                  return Padding(
                    padding: EdgeInsets.only(bottom: context.dsSpacing.sp300),
                    child: SelectProductTypeItem(
                      productCategoryUIModel: products,
                      onTap: () {
                        String routeName =
                            AppRoutes.submitProductTypeIntroScreen.name;
                        SubmitProductTypeIntroUIModel extraData;
                        switch (products.productByCategoryType) {
                          case ProductCategory.personalCare:
                            extraData = SubmitProductTypeIntroUIModel(
                              productTitle:
                                  localization
                                      .submitProduct_info_personalCareProducts,
                              titleImage: DSIcons.icProductSubmitPcpIntro,
                              checkList: SubmitProductUtils.getPCPChecklist(
                                localization,
                              ),
                              productCategoryType: ProductCategory.personalCare,
                              upcCode: upcCode,
                            );
                            break;
                          case ProductCategory.sunscreen:
                            extraData = SubmitProductTypeIntroUIModel(
                              productTitle:
                                  localization.submitProduct_info_sunscreens,
                              titleImage: DSIcons.icProductSubmitSunscreenIntro,
                              checkList:
                                  SubmitProductUtils.getSunscreenChecklist(
                                    localization,
                                  ),
                              productCategoryType: ProductCategory.sunscreen,
                              upcCode: upcCode,
                            );
                            break;
                          case ProductCategory.cleaner:
                            extraData = SubmitProductTypeIntroUIModel(
                              productTitle:
                                  localization
                                      .submitProduct_info_cleaningProducts,
                              titleImage: DSIcons.icProductSubmitCleanersIntro,
                              checkList:
                                  SubmitProductUtils.getCleanersChecklist(
                                    localization,
                                  ),
                              productCategoryType: ProductCategory.cleaner,
                              upcCode: upcCode,
                            );
                            break;
                          case ProductCategory.food:
                            extraData = SubmitProductTypeIntroUIModel(
                              productTitle:
                                  localization.submitProduct_info_foodProducts,
                              titleImage: DSIcons.icProductSubmitFoodIntro,
                              checkList: SubmitProductUtils.getFoodChecklist(
                                localization,
                              ),
                              productCategoryType: ProductCategory.food,
                              upcCode: upcCode,
                            );
                            break;
                        }
                        context.pushNamed(routeName, extra: extraData);
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
