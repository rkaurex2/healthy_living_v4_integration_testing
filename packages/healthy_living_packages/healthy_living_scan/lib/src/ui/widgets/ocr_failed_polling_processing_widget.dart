import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_scan/healthy_living_scan.dart';
import 'package:healthy_living_scan/l10n/healthy_living_scan_localizations.dart';
import 'package:healthy_living_scan/src/ui/bloc/camera/photo_capture_bloc.dart';
import 'package:healthy_living_scan/src/ui/bloc/camera/photo_capture_event.dart';
import 'package:healthy_living_scan/src/ui/widgets/product_submission_exit_popup_widget.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class OcrFailedPollingProcessingWidget extends StatelessWidget {
  final SubmitProductInfoParams infoParams;

  const OcrFailedPollingProcessingWidget({required this.infoParams, super.key});

  @override
  Widget build(BuildContext context) {
    final HealthyLivingScanLocalizations localization =
        HealthyLivingScanLocalizations.of(context)!;
    final bloc = context.read<PhotoCaptureBloc>();
    return Scaffold(
      backgroundColor: context.dsColors.surfacePrimaryDefault,
      body: SafeArea(
        child: Column(
          children: [
            DSSpacingWidget.vertical(spacing: context.dsSpacing.sp500),
            SizedBox(
              height: 72,
              child: Stack(
                children: [
                  Positioned(
                    right: context.dsSpacing.sp400,
                    top: context.dsSpacing.sp300,
                    child: GestureDetector(
                      onTap: () {
                        DSBottomSheetWidget.showBottomSheet(
                          context: context,
                          child: const ProductSubmissionExitPopupWidget(),
                        );
                      },
                      child: DSImage.asset(
                        DSIcons.icClose,
                        height: context.dsSizes.sz500,
                        width: context.dsSizes.sz500,
                        color: context.dsColors.iconOnSurfaceDefault,
                      ),
                    ),
                  ),

                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.only(top: context.dsSpacing.sp200),
                      child: DSImage.asset(
                        DSIcons.icHealthyLivingTmLogo,
                        height: context.dsSizes.sz900,
                        color: context.dsColors.iconOnSurfaceDefault,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: context.dsSpacing.sp400,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: DSText(
                        text:
                            localization
                                .submitProduct_productSubmission_weCouldNotExtractDetails,
                        textStyle: DSTextStyleType.secondaryHeadingL,
                        textColor: context.dsColors.textOnSurfaceDefault,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    DSSpacingWidget.vertical(spacing: context.dsSpacing.sp400),

                    DSButtonSecondary(
                      text:
                          localization
                              .submitProduct_productSubmission_retakePhoto,
                      size: DSButtonSize.small,
                      onPressed: () {
                        bloc.add(const PhotoCaptureEvent.retakePhotos());
                      },
                    ),
                    DSSpacingWidget.vertical(spacing: context.dsSpacing.sp400),

                    GestureDetector(
                      onTap: () {
                        context.pushReplacementNamed(
                          AppRoutes.submitProductInfo.name,
                          extra: infoParams,
                        );
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 10,
                        ),
                        child: DSText(
                          text:
                              localization
                                  .submitProduct_info_continueAddingProductDetails,
                          textStyle: DSTextStyleType.primaryBodyMRegular,
                          textColor: context.dsColors.textOnSurfaceSecondary,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),

                    DSSpacingWidget.vertical(spacing: context.dsSpacing.sp500),
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
