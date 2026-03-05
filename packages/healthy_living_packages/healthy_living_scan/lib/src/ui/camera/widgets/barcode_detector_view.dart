import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:google_mlkit_commons/google_mlkit_commons.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:google_mlkit_barcode_scanning/google_mlkit_barcode_scanning.dart';

import 'package:healthy_living_scan/src/ui/camera/widgets/camera_screen.dart';
import 'package:healthy_living_scan/src/ui/camera/widgets/gallery_screen.dart';

enum DetectorViewMode { liveFeed, gallery }

class BarcodeDetectorView extends StatefulWidget {
  const BarcodeDetectorView({
    required this.title,
    required this.isTaskCompleted,
    required this.isScanningEnabled,
    required this.onImage,
    super.key,
    this.lastScannedImage,
    this.customPaint,
    this.text,
    this.initialDetectionMode = DetectorViewMode.liveFeed,
    this.initialCameraLensDirection = CameraLensDirection.back,
    this.onCameraFeedReady,
    this.onHistory,
    this.onCameraLensDirectionChanged,
    this.onCameraControllerCreated,
    this.onDetectorViewModeChanged,
  });

  final String title;
  final bool isTaskCompleted;
  final bool isScanningEnabled;
  final Uint8List? lastScannedImage;
  final CustomPaint? customPaint;
  final String? text;
  final DetectorViewMode initialDetectionMode;
  final Function(InputImage inputImage, CameraImage? cameraImage) onImage;
  final Function()? onCameraFeedReady;
  final Function(DetectorViewMode mode)? onDetectorViewModeChanged;
  final Function(CameraLensDirection direction)? onCameraLensDirectionChanged;
  final Function(CameraController controller)? onCameraControllerCreated;
  final CameraLensDirection initialCameraLensDirection;
  final VoidCallback? onHistory;

  @override
  State<BarcodeDetectorView> createState() => _BarcodeDetectorViewState();
}

class _BarcodeDetectorViewState extends State<BarcodeDetectorView> {
  late DetectorViewMode _mode;

  @override
  void initState() {
    _mode = widget.initialDetectionMode;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return _mode == DetectorViewMode.liveFeed
        ? CameraScreen(
          title: widget.title,
          lastScannedImage: widget.lastScannedImage,
          isTaskCompleted: widget.isTaskCompleted,
          isScanningEnabled: widget.isScanningEnabled,
          customPaint: widget.customPaint,
          onImage: widget.onImage,
          onCameraFeedReady: widget.onCameraFeedReady,
          onDetectorViewModeChanged: _onDetectorViewModeChanged,
          onHistory: widget.onHistory,
          initialCameraLensDirection: widget.initialCameraLensDirection,
          onCameraLensDirectionChanged: widget.onCameraLensDirectionChanged,
          onCameraControllerCreated: widget.onCameraControllerCreated,
        )
        : GalleryScreen(
          title: widget.title,
          text: widget.text,
          onImage: widget.onImage,
          onDetectorViewModeChanged: _onDetectorViewModeChanged,
        );
  }

  void _onDetectorViewModeChanged() {
    if (_mode == DetectorViewMode.liveFeed) {
      _mode = DetectorViewMode.gallery;
    } else {
      _mode = DetectorViewMode.liveFeed;
    }
    if (widget.onDetectorViewModeChanged != null) {
      widget.onDetectorViewModeChanged!(_mode);
    }
    setState(() {});
  }
}
