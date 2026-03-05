import 'package:camera/camera.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_scan/healthy_living_scan.dart';
import 'package:healthy_living_scan/l10n/healthy_living_scan_localizations.dart';
import 'package:healthy_living_scan/src/ui/widgets/check_list_item_intro.dart';
import 'package:healthy_living_scan/src/ui/widgets/product_type_header_widget.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class SubmitProductTypeIntroScreen extends StatelessWidget {
  final SubmitProductTypeIntroUIModel introUIModel;

  const SubmitProductTypeIntroScreen({required this.introUIModel, super.key});

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
              title: introUIModel.productTitle,
              leadIcon: DSIcons.icArrowLeft,
              onTapLeadIcon: () {
                context.pop();
              },
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ProductTypeHeaderWidget(
                      titleImage: introUIModel.titleImage,
                      typeLogo: DSIcons.icProductSubmitIntroLogo,
                      title: localization.barcodeScanner_product_beforeYouStart,
                      description:
                          localization
                              .barcodeScanner_product_youTakeAFewQuickPhotosOfTheProduct,
                    ),
                    DSSpacingWidget.vertical(spacing: context.dsSpacing.sp600),
                    if (introUIModel.checkList.isValidList) ...[
                      ListView.separated(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        padding: EdgeInsets.symmetric(
                          horizontal: context.dsSpacing.sp400,
                        ),
                        itemCount: introUIModel.checkList!.length,
                        itemBuilder: (context, index) {
                          final products = introUIModel.checkList![index];
                          return CheckListItemIntro(
                            checklistItemIntroUiModel: products,
                          );
                        },
                        separatorBuilder: (BuildContext context, int index) {
                          return DSSpacingWidget.vertical(
                            spacing: context.dsSpacing.sp200,
                          );
                        },
                      ),
                      DSSpacingWidget.vertical(
                        spacing: context.dsSpacing.sp500,
                      ),
                    ],
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: context.dsSpacing.sp400,
                      ),
                      margin: EdgeInsets.symmetric(
                        horizontal: context.dsSpacing.sp300,
                      ),
                      child: DSDivider(),
                    ),
                    DSSpacingWidget.vertical(spacing: context.dsSpacing.sp500),
                    Container(
                      padding: EdgeInsets.all(context.dsSpacing.sp300),
                      margin: EdgeInsets.symmetric(
                        horizontal: context.dsSpacing.sp400,
                      ),
                      color: context.dsColors.surfaceNeutralBackgroundMedium,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          DSImage.asset(DSIcons.icFlag),
                          DSSpacingWidget.horizontal(
                            spacing: context.dsSpacing.sp200,
                          ),
                          Expanded(
                            child: DSText(
                              text: localization.submitProduct_info_extractInfo,
                              textStyle: DSTextStyleType.primaryBodyMRegular,
                              textColor: context.dsColors.textPrimaryDefault,
                            ),
                          ),
                        ],
                      ),
                    ),
                    DSSpacingWidget.vertical(spacing: context.dsSpacing.sp500),
                  ],
                ),
              ),
            ),
            Container(
              color: context.dsColors.surfaceNeutralContainerWhite,
              padding: EdgeInsets.all(context.dsSpacing.sp400),
              child: DSButtonPrimary(
                text: localization.submitProduct_info_letsGetStarted,
                onPressed: () async {
                  try {
                    final cameras = await availableCameras();
                    if (!context.mounted) return;
                    context.pushNamed(
                      AppRoutes.productSubmitCameraScreen.name,
                      extra: CameraUIModel(
                        cameras: cameras,
                        introUIModel: introUIModel,
                      ),
                    );
                  } on Exception {
                    if (context.mounted) {
                      DSToast.showErrorToast(
                        context: context,
                        title:
                            localization
                                .submitProduct_productSubmission_cameraNotAvailable,
                      );
                    }
                  }
                },
                trailingIconPath: DSIcons.icArrowRight,
                size: DSButtonSize.small,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
