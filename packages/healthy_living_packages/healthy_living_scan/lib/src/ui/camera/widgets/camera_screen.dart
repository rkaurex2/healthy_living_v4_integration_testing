import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_scan/l10n/healthy_living_scan_localizations.dart';
import 'package:healthy_living_scan/src/ui/bloc/scan_bloc.dart';
import 'package:healthy_living_scan/src/ui/bloc/scan_event.dart';
import 'package:healthy_living_scan/src/ui/camera/utils/camera_utils.dart';
import 'package:healthy_living_scan/src/ui/camera/widgets/barcode_scanner_background_view.dart';
import 'package:healthy_living_scan/src/ui/camera/widgets/camera_content_view.dart';
import 'package:camera/camera.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_mlkit_commons/google_mlkit_commons.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:permission_handler/permission_handler.dart';

class CameraScreen extends StatefulWidget {
  const CameraScreen({
    required this.title,
    required this.isTaskCompleted,
    required this.isScanningEnabled,
    required this.customPaint,
    required this.onImage,
    super.key,
    this.lastScannedImage,
    this.onCameraFeedReady,
    this.onDetectorViewModeChanged,
    this.onHistory,
    this.onFlash,
    this.onCameraLensDirectionChanged,
    this.onCameraControllerCreated,
    this.initialCameraLensDirection = CameraLensDirection.back,
  });

  final String title;
  final bool isTaskCompleted;
  final bool isScanningEnabled;
  final Uint8List? lastScannedImage;
  final CustomPaint? customPaint;
  final Function(InputImage inputImage, CameraImage image) onImage;
  final VoidCallback? onCameraFeedReady;
  final VoidCallback? onDetectorViewModeChanged;
  final VoidCallback? onHistory;
  final VoidCallback? onFlash;
  final Function(CameraLensDirection direction)? onCameraLensDirectionChanged;
  final Function(CameraController controller)? onCameraControllerCreated;
  final CameraLensDirection initialCameraLensDirection;

  @override
  State<CameraScreen> createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen>
    with WidgetsBindingObserver {
  static List<CameraDescription> _cameras = [];
  CameraController? _controller;
  int _cameraIndex = -1;
  bool _isTorchOn = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await _initialize();
    });
  }

  Future<void> _initialize() async {
    if (_cameras.isEmpty) {
      _cameras = await availableCameras();
    }
    for (int i = 0; i < _cameras.length; i++) {
      if (_cameras[i].lensDirection == widget.initialCameraLensDirection) {
        _cameraIndex = i;
        break;
      }
    }

    if (_cameraIndex != -1 && !widget.isTaskCompleted) {
      await _startLiveFeed();
    }
  }

  @override
  void didUpdateWidget(covariant CameraScreen oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.isTaskCompleted != widget.isTaskCompleted) {
      if (widget.isTaskCompleted) {
        _stopLiveFeed();
      } else if (!widget.isTaskCompleted && _controller == null) {
        _startLiveFeed();
      }
    }
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _stopLiveFeed();
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) async {
    if (!mounted) return;

    switch (state) {
      case AppLifecycleState.inactive:
      case AppLifecycleState.paused:
        _isTorchOn = true;
        await _onFlash();
        break;

      case AppLifecycleState.resumed:
        await _checkPermissionAndRestart();
        break;

      default:
        break;
    }
  }

  Future<void> _checkPermissionAndRestart() async {
    if (_controller != null && _controller!.value.isInitialized) {
      return;
    }

    final status = await Permission.camera.status;
    if (status.isGranted && !widget.isTaskCompleted && _cameraIndex != -1) {
      await _startLiveFeed();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _liveFeedBody(context));
  }

  Widget _liveFeedBody(BuildContext context) {
    if (_cameras.isEmpty ||
        _controller == null ||
        !_controller!.value.isInitialized) {
      if (widget.isTaskCompleted && widget.lastScannedImage != null) {
        return Image.memory(widget.lastScannedImage!, fit: BoxFit.cover);
      } else {
        return BarcodeScannerBackgroundView();
      }
    }

    return Stack(
      fit: StackFit.expand,
      children: [
        BarcodeScannerBackgroundView(),
        if (widget.isTaskCompleted && widget.lastScannedImage != null)
          Image.memory(widget.lastScannedImage!, fit: BoxFit.cover)
        else
          AnimatedOpacity(
            opacity: 1.0,
            duration: const Duration(milliseconds: 400),
            child: CameraPreview(_controller!, child: widget.customPaint),
          ),
        CameraContentView(
          title: widget.title,
          onBack: () {
            context.pop();
          },
          onGallery: widget.onDetectorViewModeChanged,
          onHistory: widget.onHistory,
          onFlash: _onFlash,
          isTaskCompleted: widget.isTaskCompleted,
          isScanningEnabled: widget.isScanningEnabled,
        ),
      ],
    );
  }

  Future _startLiveFeed() async {
    final localization = HealthyLivingScanLocalizations.of(context)!;
    final camera = _cameras[_cameraIndex];

    _controller = CameraController(
      camera,
      ResolutionPreset.high,
      enableAudio: false,
      imageFormatGroup:
          Platform.isAndroid
              ? ImageFormatGroup.nv21
              : ImageFormatGroup.bgra8888,
    );

    await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

    try {
      await _controller?.initialize();
    } on CameraException catch (e) {
      if (e.code == StringConstants.cameraAccessDenied ||
          e.code == StringConstants.cameraAccessDeniedWithoutPrompt) {
        if (!mounted) return;
        final openSettings = await AppAlertDialog.show(
          context,
          title: localization.barcodeScanner_permissionAlertTitle,
          content: localization.barcodeScanner_permissionAlertMessage,
          cancelText: localization.barcodeScanner_permissionAlertCancel,
          confirmText: localization.barcodeScanner_permissionAlertOpenSettings,
          onCancel: () {
            Navigator.of(context).maybePop();
          },
        );

        if (openSettings == true) {
          await openAppSettings();

          if (mounted) await Navigator.of(context).maybePop();
        }
      } else {
        rethrow;
      }
      return;
    }

    if (_controller == null || !_controller!.value.isInitialized) return;

    if (!_controller!.value.isStreamingImages) {
      await _controller!.startImageStream(_processCameraImage);
    }

    if (widget.onCameraFeedReady != null) {
      widget.onCameraFeedReady!();
    }

    if (widget.onCameraLensDirectionChanged != null) {
      widget.onCameraLensDirectionChanged!(camera.lensDirection);
    }

    if (widget.onCameraControllerCreated != null) {
      widget.onCameraControllerCreated!(_controller!);
    }

    if (mounted) setState(() {});
  }

  Future<void> _stopLiveFeed() async {
    if (_controller == null || !_controller!.value.isInitialized) return;

    try {
      if (_controller!.value.isStreamingImages) {
        await _controller!.stopImageStream();
      }
      await _controller!.dispose();
    } catch (e) {
      debugPrint('Error stopping live feed: $e');
    } finally {
      _controller = null;
    }
  }

  void _processCameraImage(CameraImage image) {
    if (_controller == null) return;

    final camera = _cameras[_cameraIndex];
    final inputImage = CameraUtils.inputImageFromCameraImage(
      image: image,
      controller: _controller!,
      camera: camera,
    );

    if (inputImage == null) return;
    if (widget.lastScannedImage == null) {
      widget.onImage(inputImage, image);
    }
  }

  Future<void> _onFlash() async {
    _isTorchOn = await CameraUtils.toggleFlash(_controller, _isTorchOn);

    if (!mounted) return;
    final scanBloc = context.read<ScanBloc>();
    scanBloc.add(ScanToggleTorch(isTorchOn: _isTorchOn));
  }
}
