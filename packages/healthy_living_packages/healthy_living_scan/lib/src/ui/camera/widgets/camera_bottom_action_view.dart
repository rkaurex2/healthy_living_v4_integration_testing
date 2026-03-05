import 'package:healthy_living_scan/l10n/healthy_living_scan_localizations.dart';
import 'package:healthy_living_scan/src/resources/scanner_icons.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class CameraBottomActionView extends StatelessWidget {
  final VoidCallback? onHistory;
  final VoidCallback? onGallery;
  final bool isTaskCompleted;

  const CameraBottomActionView({
    required this.onHistory,
    required this.onGallery,
    required this.isTaskCompleted,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final localization = HealthyLivingScanLocalizations.of(context)!;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: context.dsSpacing.sp200,
        vertical: context.dsSpacing.sp400,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: DSButtonNeutral.fill(
              text: localization.barcodeScanner_scanHistory,
              textStyle: DSTextStyleType.primaryButtonLRegular,
              leadingIconPath: ScannerIcons.icHistoryIcon,
              onPressed: onHistory,
              size: DSButtonSize.small,
              width: 140,
            ),
          ),
          Spacer(),
          DSButtonIconCircle(
            iconPath: ScannerIcons.icGalleryIcon,
            onPressed: onGallery,
            size: DSButtonIconSizeEnum.small,
            type: DSButtonIconCircleType.fillNeutral,
          ),
        ],
      ),
    );
  }
}
