import 'dart:async';

import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthy_living_scan/l10n/healthy_living_scan_localizations.dart';
import 'package:healthy_living_scan/src/ui/bloc/camera/photo_capture_bloc.dart';
import 'package:healthy_living_scan/src/ui/model/photo_capture_step.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class CameraInstructionCardWidget extends StatefulWidget {
  final PhotoCaptureStep currentStep;
  final bool isShow;

  const CameraInstructionCardWidget({
    required this.currentStep,
    this.isShow = false,
    super.key,
  });

  @override
  State<CameraInstructionCardWidget> createState() =>
      _CameraInstructionCardWidgetState();
}

class _CameraInstructionCardWidgetState
    extends State<CameraInstructionCardWidget> {
  bool _visible = true;
  Timer? _hideTimer;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  @override
  void dispose() {
    _hideTimer?.cancel();
    super.dispose();
  }

  @override
  void didUpdateWidget(CameraInstructionCardWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.isShow && !oldWidget.isShow) {
      setState(() {
        _visible = true;
      });
      _startTimer();
      return;
    }
    if (widget.currentStep != oldWidget.currentStep) {
      setState(() {
        _visible = true;
      });
      _startTimer();
    }
  }

  void _startTimer() {
    _hideTimer?.cancel();
    _hideTimer = Timer(const Duration(seconds: 3), () {
      if (mounted) {
        setState(() {
          _visible = false;
        });
      }
    });
  }

  String _getInstructionTitle({
    required PhotoCaptureStep step,
    required HealthyLivingScanLocalizations localization,
  }) {
    switch (step) {
      case PhotoCaptureStep.frontLabelCamera:
      case PhotoCaptureStep.frontLabelPreview:
        return localization
            .submitProduct_productSubmission_captureTheFrontLabel;

      case PhotoCaptureStep.ingredientsCamera:
      case PhotoCaptureStep.ingredientsPreview:
        return localization
            .submitProduct_productSubmission_captureTheIngredients;

      case PhotoCaptureStep.nutritionFactsCamera:
      case PhotoCaptureStep.nutritionFactsPreview:
        return localization
            .submitProduct_productSubmission_captureNutritionFacts;

      case PhotoCaptureStep.drugFactsPanelCamera:
      case PhotoCaptureStep.drugFactsPanelPreview:
        return localization.submitProduct_info_captureTheDrugFactsPanel;

      case PhotoCaptureStep.directionsCamera:
      case PhotoCaptureStep.directionsPreview:
        return localization
            .submitProduct_productSubmission_captureTheDirections;

      case PhotoCaptureStep.warningsCamera:
      case PhotoCaptureStep.warningsPreview:
        return localization
            .submitProduct_productSubmission_captureWarningsOrHazards;
    }
  }

  String _getInstructionDescription({
    required PhotoCaptureStep step,
    required HealthyLivingScanLocalizations localization,
    required ProductCategory productCategory,
  }) {
    switch (step) {
      case PhotoCaptureStep.frontLabelCamera:
      case PhotoCaptureStep.frontLabelPreview:
        return localization
            .submitProduct_productSubmission_makeSureTheBrandAndProduct;
      case PhotoCaptureStep.ingredientsCamera:
      case PhotoCaptureStep.ingredientsPreview:
        if (productCategory == ProductCategory.cleaner) {
          return localization
              .submitProduct_productSubmission_makeSureAllTextIsSharp;
        }
        return localization
            .submitProduct_productSubmission_makeSureAllTheTextIsSharp;

      case PhotoCaptureStep.nutritionFactsCamera:
      case PhotoCaptureStep.nutritionFactsPreview:
        return localization
            .submitProduct_productSubmission_makeSureTheFullPanel;

      case PhotoCaptureStep.drugFactsPanelCamera:
      case PhotoCaptureStep.drugFactsPanelPreview:
        return localization
            .submitProduct_productSubmission_makeSureTheFullPanelAddAPhoto;

      case PhotoCaptureStep.directionsCamera:
      case PhotoCaptureStep.directionsPreview:
        return localization
            .submitProduct_productSubmission_makeSureTheDirectionsForUse;

      case PhotoCaptureStep.warningsCamera:
      case PhotoCaptureStep.warningsPreview:
        return localization.submitProduct_productSubmission_includeAllWarning;
    }
  }

  @override
  Widget build(BuildContext context) {
    final HealthyLivingScanLocalizations localizations =
        HealthyLivingScanLocalizations.of(context)!;
    final bloc = context.read<PhotoCaptureBloc>();
    final productCategory = bloc.stepConfig?.category;
    final shouldShow = _visible || widget.isShow;

    return Positioned.fill(
      child: Visibility(
        visible: shouldShow,
        child: Align(
          alignment: Alignment.center,
          child: Container(
            padding: EdgeInsets.symmetric(
              vertical: context.dsSpacing.sp200,
              horizontal: context.dsSpacing.sp500,
            ),
            decoration: BoxDecoration(
              color: context.dsColors.surfacePrimaryOpacity,
              borderRadius: BorderRadius.circular(context.dsRadius.rd300),
            ),
            margin: EdgeInsets.symmetric(horizontal: context.dsSpacing.sp600),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                DSText(
                  text: _getInstructionTitle(
                    step: widget.currentStep,
                    localization: localizations,
                  ),
                  textStyle: DSTextStyleType.primaryBodyMMedium,
                  textAlign: TextAlign.center,
                  textColor: context.dsColors.textOnSurfaceDefault,
                ),
                DSText(
                  text: _getInstructionDescription(
                    step: widget.currentStep,
                    localization: localizations,
                    productCategory: productCategory ?? ProductCategory.food,
                  ),
                  textStyle: DSTextStyleType.primaryBodyMRegular,
                  textAlign: TextAlign.center,
                  textColor: context.dsColors.textOnSurfaceDefault,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
