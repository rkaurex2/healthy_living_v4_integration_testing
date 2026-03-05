import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_scan/l10n/healthy_living_scan_localizations.dart';

class ProductSubmitPcpBottomWidget extends StatelessWidget {
  final VoidCallback onTap;
  final VoidCallback onTapSkip;
  final bool isDisabled;

  const ProductSubmitPcpBottomWidget({
    required this.onTap,
    required this.onTapSkip,
    this.isDisabled = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final HealthyLivingScanLocalizations localization =
        HealthyLivingScanLocalizations.of(context)!;
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        DSButtonPrimary(
          text: localization.submitProduct_info_continueAddingProductDetails,
          textStyle: DSTextStyleType.primaryButtonLRegular,
          onPressed: onTap,
          state: isDisabled ? DSButtonState.disabled : DSButtonState.normal,
        ),
        GestureDetector(
          onTap: onTapSkip,
          child: Container(
            padding: EdgeInsets.all(context.dsSpacing.sp400),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                DSText(
                  text: localization.submitProduct_info_skipToScore,
                  textStyle: DSTextStyleType.primaryButtonLRegular,
                  textColor: context.dsColors.textPrimaryDefault,
                ),
                DSSpacingWidget.horizontal(spacing: 5),
                DSImage.asset(
                  DSIcons.icQuestion,
                  color: context.dsColors.surfacePrimaryDefault,
                  height: context.dsSpacing.sp400,
                  width: context.dsSpacing.sp400,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
