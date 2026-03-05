import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthy_living_scan/l10n/healthy_living_scan_localizations.dart';
import 'package:healthy_living_scan/src/ui/bloc/camera/photo_capture_bloc.dart';
import 'package:healthy_living_scan/src/ui/bloc/camera/photo_capture_event.dart';
import 'package:healthy_living_scan/src/ui/model/photo_capture_step.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class CameraButtonWidget extends StatelessWidget {
  final bool isTakingPicture;
  final VoidCallback onTakePicture;

  const CameraButtonWidget({
    required this.isTakingPicture,
    required this.onTakePicture,
    super.key,
  });

  bool _canSkipStep(PhotoCaptureStep step, ProductCategory? category) {
    if (category != ProductCategory.cleaner) return false;
    return step == PhotoCaptureStep.directionsCamera ||
        step == PhotoCaptureStep.warningsCamera;
  }

  @override
  Widget build(BuildContext context) {
    final HealthyLivingScanLocalizations localization =
        HealthyLivingScanLocalizations.of(context)!;
    final bloc = context.read<PhotoCaptureBloc>();
    final currentStep = bloc.currentStep;
    final productCategory = bloc.stepConfig?.category;
    final canSkip = _canSkipStep(currentStep, productCategory);

    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child:
          canSkip
              ? Container(
                color: context.dsColors.textOnSurfaceDefault,
                padding: EdgeInsets.all(context.dsSpacing.sp400),
                child: Row(
                  children: [
                    Expanded(
                      child: DSButtonPrimary(
                        text: localization.submitProduct_info_skip,
                        type: DSButtonType.outline,
                        onPressed:
                            isTakingPicture
                                ? null
                                : () {
                                  bloc.add(
                                    PhotoCaptureEvent.skipStep(currentStep),
                                  );
                                },
                        size: DSButtonSize.small,
                      ),
                    ),
                    DSSpacingWidget.horizontal(
                      spacing: context.dsSpacing.sp200,
                    ),
                    Expanded(
                      child: DSButtonPrimary(
                        text:
                            localization
                                .submitProduct_productSubmission_takePhoto,
                        leadingIconPath: DSIcons.icCameraPhoto,
                        onPressed: isTakingPicture ? null : onTakePicture,
                        size: DSButtonSize.small,
                      ),
                    ),
                  ],
                ),
              )
              : Container(
                color: context.dsColors.textOnSurfaceDefault,
                padding: EdgeInsets.all(context.dsSpacing.sp400),
                child: DSButtonPrimary(
                  text: localization.submitProduct_productSubmission_takePhoto,
                  leadingIconPath: DSIcons.icCameraPhoto,
                  onPressed: isTakingPicture ? null : onTakePicture,
                  size: DSButtonSize.small,
                ),
              ),
    );
  }
}
