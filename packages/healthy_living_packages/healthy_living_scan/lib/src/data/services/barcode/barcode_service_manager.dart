import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/services.dart';
import 'package:healthy_living_scan/src/data/services/mlkit_service.dart';
import 'package:flutter/foundation.dart';
import 'package:google_mlkit_barcode_scanning/google_mlkit_barcode_scanning.dart';
import 'package:image/image.dart' as img;

class BarcodeServiceManager {
  BarcodeServiceManager();

  MlkitService? _mlkitService;

  Future<void> _disposeCurrentService() async {
    _mlkitService?.dispose();
    _mlkitService = null;
  }

  Future<dynamic> processImage(InputImage inputImage) async {
    try {
      _mlkitService ??= MlkitService();
      return await _mlkitService!.processInputImage(inputImage);
    } catch (e) {
      if (kDebugMode) {
        print('Error processing image with ML Kit: $e');
      }
      return [];
    }
  }

  Future<Uint8List> convertCameraImageToBytes({
    required CameraImage image,
    required CameraController cameraController,
    required Map<DeviceOrientation, int> orientations,
    required CameraLensDirection lensDirection,
  }) async {
    try {
      if (Platform.isAndroid) {
        // Get rotation compensation
        var rotationCompensation =
            orientations[cameraController.value.deviceOrientation] ?? 0;

        // Get the sensor orientation from the camera description
        final sensorOrientation =
            cameraController.description.sensorOrientation;

        if (lensDirection == CameraLensDirection.front) {
          // front-facing
          rotationCompensation =
              (sensorOrientation + rotationCompensation) % 360;
        } else {
          // back-facing
          rotationCompensation =
              (sensorOrientation - rotationCompensation + 360) % 360;
        }

        // Convert YUV420 to RGB
        final width = image.width;
        final height = image.height;

        final rgbImage = img.Image(width: width, height: height);

        final yPlane = image.planes[0].bytes;
        final uPlane = image.planes[1].bytes;
        final vPlane = image.planes[2].bytes;

        final int uvRowStride = image.planes[1].bytesPerRow;
        final int uvPixelStride = image.planes[1].bytesPerPixel!;

        for (int x = 0; x < width; x++) {
          for (int y = 0; y < height; y++) {
            final int uvIndex =
                uvPixelStride * (x ~/ 2) + uvRowStride * (y ~/ 2);
            final int index = y * width + x;

            final yp = yPlane[index];
            final up = uPlane[uvIndex];
            final vp = vPlane[uvIndex];

            final int r = (yp + 1.370705 * (vp - 128)).round().clamp(0, 255);
            final int g = (yp - 0.698001 * (vp - 128) - 0.337633 * (up - 128))
                .round()
                .clamp(0, 255);
            final int b = (yp + 1.732446 * (up - 128)).round().clamp(0, 255);

            rgbImage.setPixelRgb(x, y, r, g, b);
          }
        }

        final rotatedImage = img.copyRotate(
          rgbImage,
          angle: rotationCompensation.toDouble(),
        );

        final jpegBytes = img.encodeJpg(rotatedImage, quality: 90);
        return Uint8List.fromList(jpegBytes);
      } else {
        // iOS (BGRA format)
        final width = image.width;
        final height = image.height;
        final bgraData = image.planes[0].bytes;

        final rgbImage = img.Image(width: width, height: height);

        for (int x = 0; x < width; x++) {
          for (int y = 0; y < height; y++) {
            final int index = (y * width + x) * 4;
            final b = bgraData[index];
            final g = bgraData[index + 1];
            final r = bgraData[index + 2];
            rgbImage.setPixelRgb(x, y, r, g, b);
          }
        }

        final deviceOrientation = cameraController.value.deviceOrientation;
        final rotationAngle = orientations[deviceOrientation] ?? 0;

        if (rotationAngle != 0) {
          final rotatedImage = img.copyRotate(
            rgbImage,
            angle: rotationAngle.toDouble(),
          );
          final jpegBytes = img.encodeJpg(rotatedImage, quality: 90);
          return Uint8List.fromList(jpegBytes);
        }

        final jpegBytes = img.encodeJpg(rgbImage, quality: 90);
        return Uint8List.fromList(jpegBytes);
      }
    } catch (e) {
      if (kDebugMode) {
        print('Error converting camera image: $e');
      }
      final picture = await cameraController.takePicture();
      final bytes = await picture.readAsBytes();
      await File(picture.path).delete();
      return bytes;
    }
  }

  Future<void> dispose() async {
    await _disposeCurrentService();
  }
}
