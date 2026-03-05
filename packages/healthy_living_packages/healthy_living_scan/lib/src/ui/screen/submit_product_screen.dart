import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_scan/l10n/healthy_living_scan_localizations.dart';
import 'package:healthy_living_scan/src/ui/widgets/check_list_item.dart';
import 'package:healthy_living_scan/src/ui/widgets/product_type_header_widget.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class SubmitProductScreen extends StatelessWidget {
  final String upcCode;

  const SubmitProductScreen({required this.upcCode, super.key});

  @override
  Widget build(BuildContext context) {
    final HealthyLivingScanLocalizations localization =
        HealthyLivingScanLocalizations.of(context)!;
    return Scaffold(
      backgroundColor: context.dsColors.surfaceNeutralBackgroundLight,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderWithTitle(
              leadIcon: DSIcons.icArrowLeft,
              onTapLeadIcon: () {
                context.pop();
              },
              textStyle: DSTextStyleType.primaryHeadingSBold,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ProductTypeHeaderWidget(
                      titleImage: DSIcons.icSubmitProductGirl,
                      typeLogo: DSIcons.icItemProduct,
                      title:
                          localization
                              .submitProduct_productSubmission_curiousHowThisProductStacksUp,
                      description:
                          localization
                              .barcodeScanner_product_justAFewQuickSteps,
                    ),

                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: context.dsSpacing.sp400,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          DSSpacingWidget.vertical(
                            spacing: context.dsSpacing.sp600,
                          ),

                          CheckListItem(
                            checkListText:
                                localization
                                    .barcodeScanner_product_snapClearPhotosOfTheProduct,
                          ),
                          DSSpacingWidget.vertical(
                            spacing: context.dsSpacing.sp200,
                          ),
                          CheckListItem(
                            checkListText:
                                localization
                                    .submitProduct_productSubmission_photosWillBeOptimized,
                          ),
                          DSSpacingWidget.vertical(
                            spacing: context.dsSpacing.sp200,
                          ),

                          CheckListItem(
                            checkListText:
                                localization
                                    .barcodeScanner_product_wePreFillAnyInfoWeCan,
                          ),
                          DSSpacingWidget.vertical(
                            spacing: context.dsSpacing.sp200,
                          ),
                          CheckListItem(
                            checkListText:
                                localization
                                    .barcodeScanner_product_verifyYourSubmissionBeforeSubmitting,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              color: context.dsColors.surfaceNeutralContainerWhite,
              padding: EdgeInsets.all(context.dsSpacing.sp400),
              child: DSButtonPrimary(
                text: localization.barcodeScanner_product_letsGo,
                size: DSButtonSize.small,
                onPressed: () {
                  context.pushNamed(
                    AppRoutes.selectProductTypeScreen.name,
                    extra: upcCode,
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
