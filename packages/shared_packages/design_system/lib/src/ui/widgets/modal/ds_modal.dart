import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class DSModal extends StatelessWidget {
  final String title;
  final String? caption;
  final String? illustrationPath;
  final VoidCallback? onClose;
  final String primaryButtonText;
  final VoidCallback? onPrimaryPressed;
  final String? secondaryButtonText;
  final VoidCallback? onSecondaryPressed;
  final Widget centerImageWidget;
  final DSModalPrimaryButtonType primaryButtonType;
  final DSButtonSize buttonSize;

  const DSModal({
    required this.title,
    required this.primaryButtonText,
    required this.centerImageWidget,
    required this.buttonSize,
    super.key,
    this.caption,
    this.illustrationPath,
    this.onClose,
    this.onPrimaryPressed,
    this.secondaryButtonText,
    this.onSecondaryPressed,
    this.primaryButtonType = DSModalPrimaryButtonType.dsPrimary,
  });

  /// Convenience method to show DSModal using a dialog overlay.
  static Future<T?> show<T>({
    required BuildContext context,
    required String title,
    required String primaryButtonText,
    required Widget centerImageWidget,
    String? caption,
    String? illustrationPath,
    VoidCallback? onClose,
    VoidCallback? onPrimaryPressed,
    String? secondaryButtonText,
    VoidCallback? onSecondaryPressed,
    bool barrierDismissible = false,
    DSModalPrimaryButtonType primaryButtonType =
        DSModalPrimaryButtonType.dsPrimary,
    DSButtonSize? buttonSize,
  }) {
    return showDialog<T>(
      context: context,
      barrierDismissible: barrierDismissible,
      barrierColor: context.dsColors.surfaceNeutralOverlay,
      builder: (context) {
        return Dialog(
          insetPadding: EdgeInsets.symmetric(
            horizontal: context.dsSpacing.sp400,
            vertical: context.dsSpacing.sp400,
          ),
          backgroundColor: Colors.transparent,
          child: DSModal(
            title: title,
            caption: caption,
            illustrationPath: illustrationPath,
            onClose: onClose ?? () => Navigator.of(context).maybePop(),
            centerImageWidget: centerImageWidget,
            primaryButtonType: primaryButtonType,
            primaryButtonText: primaryButtonText,
            secondaryButtonText: secondaryButtonText,
            onPrimaryPressed: onPrimaryPressed,
            onSecondaryPressed: onSecondaryPressed,
            buttonSize: buttonSize ?? DSButtonSize.large,
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final dsColors = context.dsColors;
    final dsSpacing = context.dsSpacing;
    final dsRadius = context.dsRadius;

    return Container(
      decoration: BoxDecoration(
        color: dsColors.surfaceNeutralContainerWhite,
        borderRadius: BorderRadius.circular(dsRadius.rd300),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 12),
            blurRadius: dsRadius.rd400,
            spreadRadius: 0,
            color: Colors.black.withValues(alpha: 0.12),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.all(dsSpacing.sp400),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: DSImage.asset(
                    DSIcons.icHealthyLivingLogoOneLine,
                    color: dsColors.surfacePrimaryDefault,
                    height: 30,
                    fit: BoxFit.contain,
                  ),
                ),
                DSSpacingWidget.horizontal(spacing: context.dsSpacing.sp200),
                DSPremiumBadge.orange(),
                DSSpacingWidget.horizontal(
                  spacing: context.dsSpacing.sp200,
                ),
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: DSImage.asset(
                    DSIcons.icClose,
                    color: dsColors.surfacePrimaryDefault,
                  ),
                ),
              ],
            ),
          ),
          Flexible(
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: dsSpacing.sp500),
              child: Column(
                children: [
                  centerImageWidget,
                  DSSpacingWidget.vertical(spacing: dsSpacing.sp200),
                  DSText(
                    text: title,
                    textStyle: DSTextStyleType.secondaryHeadingL,
                    textColor: dsColors.textNeutralOnWhite,
                    textAlign: TextAlign.center,
                  ),
                  DSSpacingWidget.vertical(spacing: dsSpacing.sp200),
                  DSText(
                    text: caption,
                    textStyle: DSTextStyleType.primaryBodyMRegular,
                    textColor: dsColors.textNeutralOnWhite,
                    textAlign: TextAlign.center,
                  ),

                  DSSpacingWidget.vertical(spacing: dsSpacing.sp200),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(dsSpacing.sp400),
            child: Column(
              spacing: dsSpacing.sp400,
              children: [
                if (primaryButtonType ==
                    DSModalPrimaryButtonType.dsPrimary) ...{
                  DSButtonPrimary.fill(
                    text: primaryButtonText,
                    onPressed: onPrimaryPressed,
                    size: buttonSize,
                  ),
                } else if (primaryButtonType ==
                    DSModalPrimaryButtonType.dsSecondary) ...{
                  DSButtonSecondary.fill(
                    text: primaryButtonText,
                    onPressed: onPrimaryPressed,
                    size: buttonSize,
                  ),
                },
                if (secondaryButtonText != null &&
                    secondaryButtonText?.isNotEmpty == true &&
                    onSecondaryPressed != null) ...{
                  DSButtonPrimary.outline(
                    text: secondaryButtonText!,
                    onPressed: onSecondaryPressed,
                    size: buttonSize,
                  ),
                },
              ],
            ),
          ),
        ],
      ),
    );
  }
}
