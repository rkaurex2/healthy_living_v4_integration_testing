import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_scan/l10n/healthy_living_scan_localizations.dart';
import 'package:healthy_living_scan/src/resources/scanner_icons.dart';
import 'package:healthy_living_scan/src/ui/camera/widgets/barcode_overlay_view.dart';
import 'package:healthy_living_scan/src/ui/camera/widgets/camera_auto_hide_instruction_message_view.dart';
import 'package:healthy_living_scan/src/ui/camera/widgets/camera_title_bar_view.dart';

class CameraContentView extends StatelessWidget {
  final String title;
  final VoidCallback? onBack;
  final VoidCallback? onFlash;
  final VoidCallback? onHistory;
  final VoidCallback? onGallery;
  final bool isTaskCompleted;
  final bool isScanningEnabled;

  const CameraContentView({
    required this.title,
    required this.onBack,
    required this.onFlash,
    required this.onHistory,
    required this.onGallery,
    required this.isTaskCompleted,
    required this.isScanningEnabled,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final localization = HealthyLivingScanLocalizations.of(context)!;
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: context.dsSpacing.sp400),
        child: Column(
          children: [
            CameraTitleBarView(onBack: onBack, title: title, onFlash: onFlash),

            isScanningEnabled
                ? CameraAutoHideInstructionMessageView(
                  message: localization.barcodeScanner_infoMessage,
                  icon: ScannerIcons.icScannerIcon,
                  duration: const Duration(seconds: 5),
                )
                : const SizedBox(height: 73),

            DSSpacingWidget.vertical(spacing: context.dsSpacing.sp400),

            Expanded(
              child: BarcodeOverlayView(isTaskCompleted: isTaskCompleted),
            ),

            /// TODO uncomment this when on history and galley scan coming in future
            // CameraBottomActionView(
            //   isTaskCompleted: isTaskCompleted,
            //   onGallery: onGallery,
            //   onHistory: onHistory,
            // ),
          ],
        ),
      ),
    );
  }
}
