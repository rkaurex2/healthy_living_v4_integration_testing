import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_scan/l10n/healthy_living_scan_localizations.dart';
import 'package:healthy_living_scan/src/resources/scanner_icons.dart';

class BarcodeIntroductionView extends StatelessWidget {
  final VoidCallback onClose;
  final VoidCallback onContinue;

  const BarcodeIntroductionView({
    required this.onClose,
    required this.onContinue,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final healthyLivingScanLocalizations =
        HealthyLivingScanLocalizations.of(context)!;

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Container(
          margin: EdgeInsets.all(context.dsSpacing.sp400),
          decoration: BoxDecoration(
            color: context.dsColors.surfaceNeutralContainerWhite,
            borderRadius: BorderRadius.circular(context.dsSpacing.sp200),
          ),
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height * 0.85,
            ),
            child: SingleChildScrollView(
              padding: EdgeInsets.zero,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: EdgeInsets.all(context.dsSpacing.sp400),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        DSImage.asset(
                          DSIcons.icHealthyLivingPrimaryLogo,
                          width: 145,
                          height: 29.8,
                        ),
                        GestureDetector(
                          onTap: onClose,
                          child: DSImage.asset(
                            DSIcons.icClose,
                            height: context.dsSizes.sz500,
                            width: context.dsSizes.sz500,
                          ),
                        ),
                      ],
                    ),
                  ),

                  DSSpacingWidget.vertical(spacing: 23),

                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      DSImage.asset(
                        ScannerIcons.icScannerInto,
                        height: MediaQuery.of(context).size.height * 0.25,
                      ),
                      Positioned(
                        right: -20,
                        bottom: -8,
                        child: Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: context.dsColors.surfacePrimaryHover,
                          ),
                          child: Center(
                            child: DSImage.asset(
                              ScannerIcons.icScannerIntroBarcode,
                              height: 40,
                              width: 40,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  DSSpacingWidget.vertical(spacing: 33),

                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: context.dsSpacing.sp500,
                      vertical: context.dsSpacing.sp200,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        DSText(
                          text:
                              healthyLivingScanLocalizations
                                  .barcodeScanner_introTitle,
                          textStyle: DSTextStyleType.secondaryHeadingL,
                          textColor: context.dsColors.textNeutralOnWhite,
                          textAlign: TextAlign.start,
                        ),
                        DSSpacingWidget.vertical(
                          spacing: context.dsSpacing.sp400,
                        ),
                        DSText(
                          text:
                              healthyLivingScanLocalizations
                                  .barcodeScanner_introMessage,
                          textStyle: DSTextStyleType.primaryBodyMRegular,
                          textColor: context.dsColors.textNeutralOnWhite,
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.all(context.dsSpacing.sp400),
                    child: DSButtonPrimary(
                      text:
                          healthyLivingScanLocalizations
                              .barcodeScanner_introButtonTitle,
                      size: DSButtonSize.small,
                      onPressed: onContinue,
                    ),
                  ),

                  DSSpacingWidget.vertical(spacing: context.dsSpacing.sp200),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
