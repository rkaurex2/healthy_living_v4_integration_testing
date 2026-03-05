import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_scan/l10n/healthy_living_scan_localizations.dart';
import 'package:healthy_living_scan/src/resources/scanner_icons.dart';

class BarcodeNoResultView extends StatelessWidget {
  final String upcCode;
  final VoidCallback onClose;
  final VoidCallback onTapToSearchProductTap;
  final VoidCallback onTapToSubmitProductTap;

  const BarcodeNoResultView({
    required this.upcCode,
    required this.onClose,
    required this.onTapToSearchProductTap,
    required this.onTapToSubmitProductTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final localization = HealthyLivingScanLocalizations.of(context)!;

    return Container(
      padding: EdgeInsets.only(
        top: context.dsSpacing.sp100,
        left: context.dsSpacing.sp400,
        right: context.dsSpacing.sp400,
        bottom: context.dsSpacing.sp400,
      ),
      child: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: context.dsSpacing.sp100,
                vertical: 14,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: onClose,
                    child: DSImage.asset(
                      DSIcons.icClose,
                      color: context.dsColors.iconPrimary,
                      width: context.dsSizes.sz500,
                      height: context.dsSizes.sz500,
                    ),
                  ),
                  const Spacer(),
                ],
              ),
            ),
            DSImage.asset(
              ScannerIcons.icBarcodeSymbol,
              width: context.dsSizes.sz600,
              height: context.dsSizes.sz600,
            ),
            DSText(
              text: upcCode,
              textStyle: DSTextStyleType.primarySubHeadingM,
              textColor: context.dsColors.textNeutralSecondary,
            ),
            DSSpacingWidget.vertical(spacing: context.dsSpacing.sp400),
            DSText(
              text: localization.barcodeScanner_noScanResultTitle,
              textStyle: DSTextStyleType.primaryHeadingS,
              textColor: context.dsColors.textNeutralOnWhite,
            ),
            DSSpacingWidget.vertical(spacing: 2),
            DSText(
              text: localization.barcodeScanner_noScanResultMessage,
              textStyle: DSTextStyleType.primaryBodyMRegular,
              textColor: context.dsColors.textNeutralSecondary,
              textAlign: TextAlign.center,
            ),
            DSSpacingWidget.vertical(spacing: context.dsSpacing.sp500),
            DSButtonPrimary(
              size: DSButtonSize.small,
              text: localization.barcodeScanner_noScanResultButtonTitle,
              leadingIconPath: DSIcons.icSearch,
              onPressed: onTapToSearchProductTap,
              leadingIconSize: DSButtonIconSize.medium,
              useCustomLeadingIconColor: true,
            ),
            DSSpacingWidget.vertical(spacing: context.dsSpacing.sp400),
            DSButtonPrimary.outline(
              text: localization.barcodeScanner_product_addThisProduct,
              size: DSButtonSize.small,
              onPressed: onTapToSubmitProductTap,
            ),
            DSSpacingWidget.vertical(spacing: context.dsSpacing.sp200),
          ],
        ),
      ),
    );
  }
}
