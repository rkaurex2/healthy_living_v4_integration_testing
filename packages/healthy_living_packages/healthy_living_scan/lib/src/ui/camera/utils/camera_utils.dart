import 'dart:io';
import 'package:camera/camera.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_mlkit_commons/google_mlkit_commons.dart';

class CameraUtils {
  static Future<bool> toggleFlash(CameraController? controller, bool currentTorchState) async {
    if (controller == null || !controller.value.isInitialized) {
      return false;
    }

    try {
      if (currentTorchState) {
        await controller.setFlashMode(FlashMode.off);
        return false;
      } else {
        await controller.setFlashMode(FlashMode.torch);
        return true;
      }
    } on CameraException catch (e) {
      if (kDebugMode) print('Error toggling flash: $e');
      rethrow;
    }
  }

  static final Map<DeviceOrientation, int> _orientations = {
    DeviceOrientation.portraitUp: 0,
    DeviceOrientation.landscapeLeft: 90,
    DeviceOrientation.portraitDown: 180,
    DeviceOrientation.landscapeRight: 270,
  };

  static InputImage? inputImageFromCameraImage({
    required CameraImage image,
    required CameraController controller,
    required CameraDescription camera,
  }) {
    if (!controller.value.isInitialized) return null;

    final sensorOrientation = camera.sensorOrientation;
    InputImageRotation? rotation;

    if (Platform.isIOS) {
      rotation = InputImageRotationValue.fromRawValue(sensorOrientation);
    } else if (Platform.isAndroid) {
      var rotationCompensation =
          _orientations[controller.value.deviceOrientation] ?? 0;

      rotationCompensation = camera.lensDirection == CameraLensDirection.front
          ? (sensorOrientation + rotationCompensation) % 360
          : (sensorOrientation - rotationCompensation + 360) % 360;

      rotation = InputImageRotationValue.fromRawValue(rotationCompensation);
    }

    if (rotation == null) return null;

    final format = InputImageFormatValue.fromRawValue(image.format.raw);
    if (format == null) return null;

    try {
      if (Platform.isAndroid) {
        if (format == InputImageFormat.yuv420) {
          return InputImage.fromBytes(
            bytes: _concatenatePlanes(image.planes),
            metadata: InputImageMetadata(
              size: Size(image.width.toDouble(), image.height.toDouble()),
              rotation: rotation,
              format: format,
              bytesPerRow: image.planes[0].bytesPerRow,
            ),
          );
        } else if (format == InputImageFormat.yuv_420_888) {
          final nv21Data = convertYUV420ToNV21(image);
          return InputImage.fromBytes(
            bytes: nv21Data,
            metadata: InputImageMetadata(
              size: Size(image.width.toDouble(), image.height.toDouble()),
              rotation: rotation,
              format: InputImageFormat.nv21,
              bytesPerRow: image.width,
            ),
          );
        }
      } else if (Platform.isIOS && format == InputImageFormat.bgra8888) {
        final plane = image.planes.first;
        return InputImage.fromBytes(
          bytes: plane.bytes,
          metadata: InputImageMetadata(
            size: Size(image.width.toDouble(), image.height.toDouble()),
            rotation: rotation,
            format: format,
            bytesPerRow: plane.bytesPerRow,
          ),
        );
      }
    } catch (e) {
      if (kDebugMode) debugPrint('Error processing image: $e');
      rethrow;
    }

    return null;
  }

  static Uint8List _concatenatePlanes(List<Plane> planes) {
    final buffer = WriteBuffer();
    for (final plane in planes) {
      buffer.putUint8List(plane.bytes);
    }
    return buffer.done().buffer.asUint8List();
  }

  static Uint8List convertYUV420ToNV21(CameraImage image) {
    final width = image.width;
    final height = image.height;

    final yPlane = image.planes[0];
    final uPlane = image.planes[1];
    final vPlane = image.planes[2];

    final nv21 = Uint8List(width * height + (width * height ~/ 2));
    int idY = 0;
    int idUV = width * height;

    final uvWidth = width ~/ 2;
    final uvHeight = height ~/ 2;

    for (int y = 0; y < height; y++) {
      final offset = y * yPlane.bytesPerRow;
      for (int x = 0; x < width; x++) {
        nv21[idY++] = yPlane.bytes[offset + x * (yPlane.bytesPerPixel ?? 1)];
      }
    }

    for (int y = 0; y < uvHeight; y++) {
      final uvOffset = y * uPlane.bytesPerRow;
      for (int x = 0; x < uvWidth; x++) {
        final index = uvOffset + x * (uPlane.bytesPerPixel ?? 2);
        nv21[idUV++] = vPlane.bytes[index]; // V
        nv21[idUV++] = uPlane.bytes[index]; // U
      }
    }

    return nv21;
  }
}
