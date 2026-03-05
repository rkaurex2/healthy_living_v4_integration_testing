import 'package:flutter/widgets.dart';
import 'package:google_mlkit_barcode_scanning/google_mlkit_barcode_scanning.dart';
import 'dart:typed_data';

class BarcodeDetection {
  final String value;
  DateTime timestamp;
  final String algorithm;
  final Barcode rawBarcode;
  final Uint8List? imageBytes;
  bool isRedetection;
  bool shouldAnimate;
  final GlobalKey animationKey;

  BarcodeDetection({
    required this.value,
    required this.timestamp,
    required this.algorithm,
    required this.rawBarcode,
    this.imageBytes,
    this.isRedetection = false,
    this.shouldAnimate = true,
  }) : animationKey = GlobalKey();

  // Update the timestamp of this detection
  void updateTimestamp(DateTime newTimestamp) {
    timestamp = newTimestamp;
    isRedetection = true;
    shouldAnimate = true;
  }
}

class BarcodeDetectionList {
  final List<BarcodeDetection> detections;
  final Map<String, int> _valueToIndex = {};

  BarcodeDetectionList({List<BarcodeDetection>? detections})
      : detections = detections ?? [];

  void addDetection(BarcodeDetection detection) {
    final existingIndex = _valueToIndex[detection.value];

    // If we have a valid index and the list isn't empty
    if (existingIndex != null &&
        detections.isNotEmpty &&
        existingIndex < detections.length) {
      final existingDetection = detections[existingIndex];
      existingDetection.updateTimestamp(detection.timestamp);

      // Move to top if not already there
      if (existingIndex > 0) {
        detections.removeAt(existingIndex);
        detections.insert(0, existingDetection);
        _updateIndices();
      }
    } else {
      // Add new detection at the beginning
      detections.insert(0, detection);
      _updateIndices();
    }
  }

  void _updateIndices() {
    _valueToIndex.clear();
    for (var i = 0; i < detections.length; i++) {
      _valueToIndex[detections[i].value] = i;
    }
  }

  List<BarcodeDetection> getDetections() {
    return List.unmodifiable(detections);
  }

  void clear() {
    detections.clear();
    _valueToIndex.clear();
  }
}
