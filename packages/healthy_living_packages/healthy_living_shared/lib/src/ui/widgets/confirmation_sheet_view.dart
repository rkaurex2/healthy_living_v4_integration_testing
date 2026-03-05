import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class ConfirmationSheetView extends StatelessWidget {
  final VoidCallback? onPositiveTap;
  final VoidCallback? onNegativeTap;
  final String? title;
  final String? description;
  final String icon;
  final String? positiveButtonText;
  final String? negativeButtonText;

  const ConfirmationSheetView({
    required this.icon,
    super.key,
    this.title,
    this.description,
    this.onPositiveTap,
    this.onNegativeTap,
    this.positiveButtonText,
    this.negativeButtonText,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: true,
      top: false,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: HeaderWithTitle(
              leadIcon: DSIcons.icClose,
              onTapLeadIcon: () {
                context.pop();
              },
            ),
          ),
          DSSpacingWidget.vertical(spacing: context.dsSpacing.sp100),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: context.dsSpacing.sp400),
            child: Column(
              children: [
                DSImage.asset(
                  icon,
                  height: context.dsSpacing.sp900,
                  width: context.dsSpacing.sp900,
                ),

                DSSpacingWidget.vertical(spacing: context.dsSpacing.sp400),
                DSText(
                  text: title ?? "",
                  textAlign: TextAlign.center,
                  textStyle: DSTextStyleType.primaryHeadingS,
                  textColor: context.dsColors.textNeutralOnWhite,
                ),
                DSSpacingWidget.vertical(spacing: context.dsSpacing.sp200),
                DSText(
                  text: description ?? "",
                  textAlign: TextAlign.center,
                  textStyle: DSTextStyleType.primaryBodyMRegular,
                  textColor: context.dsColors.textNeutralSecondary,
                  lineHeight: 1.5,
                ),

                DSSpacingWidget.vertical(spacing: context.dsSpacing.sp500),
                DSButtonPrimary(
                  text: positiveButtonText ?? "",
                  onPressed: onPositiveTap,
                  size: DSButtonSize.small,
                ),
                DSSpacingWidget.vertical(spacing: context.dsSpacing.sp400),
                DSButtonPrimary(
                  text: negativeButtonText ?? "",
                  onPressed: onNegativeTap,
                  type: DSButtonType.outline,
                  size: DSButtonSize.small,
                ),
                DSSpacingWidget.vertical(spacing: context.dsSpacing.sp200),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
